#:________________________________________________________
#  wgpu-nim  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:________________________________________________________
import std/os
import std/strformat
import std/strutils

##[  NOTE:
## Include this file into your `PROJECT/name.nimble` file:
include wgpu/nimble
## This will give access to the build tasks of wgpu-nim,
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
var wgpuDir      = "wgpu-native"                              # Folder where the wgpu submodule is stored.

#_____________________________
# Headers setup
#___________________
let headerDir    = wgpuDir/"ffi"                              # Folder in the wgpu submodule where the header files are stored
let Cdir         = srcDir/"wgpu"/"api"/"C"                    # Internal folder where the header files will be stored
let headerFiles  = ["wgpu.h", "webgpu.h"]                     # Basename of the wgpu headers
let headerFile   = Cdir/"wgpu.h"                              # Target file that will be renamed
let headerRename = ("webgpu-headers/webgpu.h", "./webgpu.h")  # webgpu header file restructure

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
let nimcr = &"nim c -r --verbosity:2 --outdir:{binDir}"
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
  # Update Git submodule
  exec "git submodule update --recursive wgpu-native"
  # Copy the files to our structure
  for file in headerDir.walkDirRec:
    let basename = file.lastPathPart
    if basename in headerFiles: cpFile file, Cdir/basename
  # Rename the include header for webgpu inside the wgpu.h file
  headerFile.writeFile headerFile.readFile.replace(headerRename[0], headerRename[1])
#___________________
task lib, "Builds the wgpu-native library in the correct mode (release or debug).":
  exec "nimble git"
  withDir wgpuDir:
    when defined(debug): exec "make lib-native"
    else:                exec "make lib-native-release"

