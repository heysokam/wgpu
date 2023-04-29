#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
import std/os
import std/strformat
import std/strutils

##[  NOTE:
## Include this file into your `PROJECT/name.nimble` file:
include wgpu/nimble
## This will give access to the build tasks of wgpu,
nimble git   ## Updates the wgpu-native submodule
nimble lib   ## Builds the wgpu-native library in the correct mode (release or debug)
## it also adds the wgpu-native dependencies to your project
## and other convenience functionality.
]##

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
let Cdir         = srcDir/"wgpu"/"C"                          # Internal folder where the header files will be stored
var wgpuDir      = Cdir/"wgpu-native"                         # Folder where the wgpu submodule is stored.

#_____________________________
# Build requirements
#___________________
requires "nim >= 1.6.12"
requires "https://github.com/heysokam/nstd"  ## Nim stdlib extension
requires "https://github.com/heysokam/nglfw" ## For window creation. GLFW bindings, without dynamic libraries required
requires "vmath"                             ## For vector math
requires "chroma"                            ## Color manipulation

#________________________________________
# Helpers
#___________________
let nimcr  = &"nim c -r --verbosity:1 --outdir:{binDir}"
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
task git, "Updates the wgpu-native submodules, and copies the header files into the C folder.":
  exec "git submodule update --recursive src/wgpu/C/wgpu-native"
#___________________
task lib, "Builds the wgpu-native library in both release and debug modes":
  # Note: This is automatically done by the buildsystem, without running this task.
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

