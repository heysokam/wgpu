#:________________________________________________________
#  wgpu-nim  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:________________________________________________________
include ./src/wgpu/nimble

#___________________
# Package
packageName   = "wgpu"
version       = "0.0.0"
author        = "sOkam"
description   = "wgpu-native bindings for Nim"
license       = "MIT"
#___________________
# wgpu-nim specific nimble config
skipdirs      = @[binDir, examplesDir, testsDir, docDir, wgpuDir] # Tell nimble what folders to skip in the package

#___________________
# Build the example binaries
task tut, "Builds the tutorial app.":
  exec "nimble lib"
  "tut".runExample

