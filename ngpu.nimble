#:____________________________________________________
#  ngpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
include ./src/ngpu/nimble

#___________________
# Package
packageName   = "ngpu"
version       = "0.0.0"
author        = "sOkam"
description   = "Native WebGPU for Nim"
license       = "MIT"
#___________________
# ngpu specific nimble config
skipdirs      = @[binDir, examplesDir, testsDir, docDir, wgpuDir] # Tell nimble what folders to skip in the package

#___________________
# Build the example binaries
task tut, "Builds the tutorial app.":
  exec "nimble lib"
  "tut".runExample

