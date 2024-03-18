#:_______________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  LGPLv3  |
#:_______________________________________________________
# Package
packageName   = "wgpu"
version       = "0.17.2.4"  # First three numbers in sync with wgpu-native
author        = "sOkam"
description   = "Native WebGPU for Nim | wgpu-native"
license       = "MIT"
# Project Setup
srcDir        = "src"
skipFiles     = @["build.nim"]
# Build requirements
requires "nim >= 2.0.0"

#____________________________________________________
# Internal Management
#_____________________________
import std/strformat
task git, "Internal:  Updates the wgpu-native submodule.":
  withDir "src/wgpu/C/wgpu-native": exec "git pull --recurse-submodules origin trunk"
