#:________________________________________________________
#  wgpu-nim  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:________________________________________________________
import std/os
import std/strformat
import std/strutils

#___________________
# Package
packageName   = "wgpu"
version       = "0.0.0"
author        = "sOkam"
description   = "wgpu-native bindings for Nim"
license       = "MIT"

#___________________
# Build requirements
requires "nim >= 1.6.12"
requires "https://github.com/heysokam/nstd"  ## Nim stdlib extension
requires "staticglfw"      ## For window creation. GLFW bindings, without dynamic libraries required
requires "vmath"           ## For vector math
requires "chroma"          ## Color manipulation

#___________________
# Folders
srcDir           = "src"
binDir           = "bin"
let testsDir     = "tests"
let examplesDir  = "examples"
let docDir       = "doc"
let wgpuDir      = "wgpu-native"                              # Folder where the wgpu submodule is stored.
skipdirs         = @[binDir, examplesDir, testsDir, docDir, wgpuDir]
# Headers setup
let headerDir    = wgpuDir/"ffi"                              # Folder in the wgpu submodule where the header files are stored
let Cdir         = srcDir/"wgpu"/"C"                          # Internal folder where the header files will be stored
let headerFiles  = ["wgpu.h", "webgpu.h"]                     # Basename of the wgpu headers
let headerFile   = Cdir/"wgpu.h"                              # Target file that will be renamed
let headerRename = ("webgpu-headers/webgpu.h", "./webgpu.h")  # webgpu header file restructure
# Tell nimble what folders to skip in the package

#________________________________________
# Helpers
#___________________
let nimcr = &"nim c -r --outdir:{binDir}"
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
task tut, "Builds the tutorial app.":
  "tut".runExample

#___________________
task git, "Updates the wgpu-native submodules, and copies the header files into the C folder.":
  # Update Git submodule
  exec "git submodule update --recursive wgpu-native"
  # Copy the files to our structure
  for file in headerDir.walkDirRec:
    let basename = file.lastPathPart
    if basename in headerFiles: cpFile file, Cdir/basename
  # Rename the include header for webgpu inside the wgpu.h file
  headerFile.writeFile headerFile.readFile.replace(headerRename[0], headerRename[1])

