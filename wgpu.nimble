#:________________________________________________________
#  wgpu-nim  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:________________________________________________________

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
skipdirs         = @[binDir, examplesDir, testsDir, docDir]


#________________________________________
# Helpers
#___________________
import std/os
import std/strformat
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

