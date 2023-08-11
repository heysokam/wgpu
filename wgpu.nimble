#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
import std/os
import std/strformat
import std/strutils

#___________________
# Package
packageName   = "wgpu"
version       = "0.17.2.0"  # First three numbers in sync with wgpu-native
author        = "sOkam"
description   = "Native WebGPU for Nim | wgpu-native"
license       = "MIT"

#_____________________________
# Folders
#___________________
srcDir           = "src"
binDir           = "bin"
var testsDir     = "tests"
var examplesDir  = "examples"
var docDir       = "doc"

#_____________________________
# Headers setup
#___________________
let Cdir         = srcDir/"wgpu"/"C"   # Internal folder where the header files will be stored
var wgpuDir      = Cdir/"wgpu-native"  # Folder where the wgpu submodule is stored.

#_____________________________
# Build requirements
#___________________
requires "nim >= 2.0.0"

#________________________________________
# Helpers
#___________________
const vlevel = when defined(debug): 2 else: 1
let nimcr  = &"nim c -r --verbosity:{vlevel} --outdir:{binDir}"
  ## Compile and run, outputting to binDir
proc runFile (file, dir :string) :void=  exec &"{nimcr} {dir/file}"
  ## Runs file from the given dir, using the nimcr command
proc runTest (file :string) :void=  file.runFile(testsDir)
  ## Runs the given test file. Assumes the file is stored in the default testsDir folder
proc runExample (file :string) :void=  file.runFile(examplesDir)
  ## Runs the given test file. Assumes the file is stored in the default testsDir folder
template example (name :untyped; descr,file :static string)=
  ## Generates a task to build+run the given example
  let sname = astToStr(name)  # string name
  taskRequires sname, "https://github.com/heysokam/nglfw" ## For window creation. GLFW bindings, without dynamic libraries required
  taskRequires sname, "vmath"                             ## Vector math library.
  task name, descr:
    runExample file

#________________________________________
# Build tasks
#___________________
task git, "Internal:  Updates the wgpu-native submodule.":
  withDir wgpuDir:
    exec "git pull --recurse-submodules origin trunk"
#___________________
task push, "Internal:  Pushes the git repository, and orders to create a new git tag for the package, using the latest version.":
  ## Does nothing when local and remote versions are the same.
  requires "https://github.com/beef331/graffiti.git"
  exec "git push"  # Requires local auth
  exec &"graffiti ./{packageName}.nimble"
#___________________
# Build the examples binaries
example wip,       "Example WIP: Builds the current wip example.",  "wip"
example hello,     "Example 00:  hellowindow.",                     "e00_hellowgpu"
example clear,     "Example 01:  helloclear.",                      "e01_helloclear"
example triangle,  "Example 02:  hellotriangle.",                   "e02_hellotriangle"
example buffer,    "Example 03:  hellobuffer.",                     "e03_hellobuffer"
example compute,   "Example 04:  hellocompute.",                    "e04_hellocompute"
example triangle2, "Example 05:  simple buffered triangle.",        "e05_trianglebuffered1"
example triangle3, "Example 06:  multi-buffered triangle.",         "e06_trianglebuffered2"
example triangle4, "Example 07:  indexed multi-buffered triangle.", "e07_trianglebuffered3"
example uniform,   "Example 08:  single uniform.",                  "e08_hellouniform"
example struct,    "Example 09:  uniform struct.",                  "e09_uniformstruct"
# example dynamic,   "Example 10:  uniform struct.",                  "e10_dynamicuniform"
example texture,   "Example 11:  simple byte texture.",             "e11_hellotexture"
example texture2,  "Example 12:  sampled byte texture.",            "e12_sampledtexture"
example depth,     "Example 13:  simple depth buffer attachment.",  "e13_hellodepth"
example camera,    "Example 14:  simple 3D camera controller.",     "e14_hellocamera"
example uvs,       "Example 15:  cube textured using its UVs.",     "e15_cubetextured"
example instance,  "Example 16:  cube instanced 100 times.",        "e16_cubeinstanced"
example multimesh, "Example 17:  multi-mesh. cubes + pyramid.",     "e17_multimesh"
#___________________
# Build the demo apps
task app1, "App 01: Builds the Framebuffer app.": runExample "app_framebuffer"
#___________________
# Reference Task
task lib, "Reference-only: Builds the wgpu-native library in both release and debug modes":
  # Note: This is automatically done by the buildsystem, without running this task. Only here for reference.
  exec "nimble git"
  withDir wgpuDir:
    exec "make lib-native"
    exec "make lib-native-release"
    # Fix the static linking mess of clang+mac
    when defined(macosx):
      let rlsDir = "./target/release"
      let dbgDir = "./target/debug"
      let file   = "libwgpu_native.a"
      if fileExists( rlsDir/file ):  cpFile rlsDir/file, rlsDir/"libwgpu_native_static.a"
      if fileExists( dbgDir/file ):  cpFile dbgDir/file, dbgDir/"libwgpu_native_static.a"

