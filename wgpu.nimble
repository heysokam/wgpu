#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
import std/os
import std/strformat
import std/strutils

#___________________
# Package
packageName   = "wgpu"
version       = "0.16.0.3"  # First three numbers in sync with wgpu-native
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
requires "nim >= 1.6.12"
#___________________
# TODO: Remove from the wgpu bindings
#     : Should be taskRequires instead, only used in the examples
#     : Depends on Nim2.0 becoming stable
requires "https://github.com/heysokam/nglfw" ## For window creation. GLFW bindings, without dynamic libraries required


#________________________________________
# Helpers
#___________________
const vlevel = when defined(debug): 2 else: 1
let nimcr  = &"nimble c -r --verbose --verbosity:{vlevel} --outdir:{binDir}"
  ## Compile and run, outputting to binDir
proc runFile (file, dir :string) :void=  exec &"{nimcr} {dir/file}"
  ## Runs file from the given dir, using the nimcr command
proc runTest (file :string) :void=  file.runFile(testsDir)
  ## Runs the given test file. Assumes the file is stored in the default testsDir folder
proc runExample (file :string) :void=  file.runFile(examplesDir)
  ## Runs the given test file. Assumes the file is stored in the default testsDir folder

#________________________________________
# Build tasks
#___________________
task git, " Internal:  Updates the wgpu-native submodule.":
  exec "git submodule update --recursive src/wgpu/C/wgpu-native"
#___________________
task push, "Internal:  Pushes the git repository, and orders to create a new git tag for the package, using the latest version.":
  ## Does nothing when local and remote versions are the same.
  requires "https://github.com/beef331/graffiti.git"
  exec "git push"  # Requires local auth
  exec &"graffiti ./{packageName}.nimble"
#___________________
# Build the examples binaries
task hello,      "Example 00:  hellowindow."                     : runExample "e00_hellowgpu"
task clear,      "Example 01:  helloclear."                      : runExample "e01_helloclear"
task triangle,   "Example 02:  hellotriangle."                   : runExample "e02_hellotriangle"
task buffer,     "Example 03:  hellobuffer."                     : runExample "e03_hellobuffer"
task compute,    "Example 04:  hellocompute."                    : runExample "e04_hellocompute"
task triangle2,  "Example 05:  simple buffered triangle."        : runExample "e05_trianglebuffered1"
task triangle3,  "Example 06:  multi-buffered triangle."         : runExample "e06_trianglebuffered2"
task triangle4,  "Example 07:  indexed multi-buffered triangle." : runExample "e07_trianglebuffered3"
task uniform,    "Example 08:  single uniform."                  : runExample "e08_hellouniform"
task struct,     "Example 09:  uniform struct."                  : runExample "e09_uniformstruct"
# task dynamic,    "Example 10:  uniform struct."                  : runExample "e10_dynamicuniform"
task texture,    "Example 11:  simple byte texture."             : runExample "e11_hellotexture"
task texture2,   "Example 12:  sampled byte texture."            : runExample "e12_sampledtexture"
task depth,      "Example 13:  simple depth buffer attachment."  : requires "vmath"; runExample "e13_hellodepth"
task camera,     "Example 14:  simple 3D camera controller."     : runExample "e14_hellocamera"
task uvs,        "Example 15:  cube textured using its UVs."     : runExample "e15_cubetextured"
task instance,   "Example 16:  cube instanced 100 times."        : runExample "e16_cubeinstanced"
task multimesh,  "Example 17:  multi-mesh. cubes + pyramid."     : runExample "e17_multimesh"
task tut,        "Example WIP: Builds the latest/current wip tutorial app.": runExample "tut"
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

