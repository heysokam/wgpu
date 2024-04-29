#:_______________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  LGPLv3  |
#:_______________________________________________________
# Package
packageName   = "wgpu"
version       = "0.19.4.1"  # First three numbers in sync with wgpu-native
author        = "sOkam"
description   = "Native WebGPU for Nim | wgpu-native"
license       = "LGPL-3.0-or-later"
# Project Setup
srcDir        = "src"
skipFiles     = @["build.nim"]
skipDirs      = @["old"]
# Build requirements
requires "nim >= 2.0.0"

