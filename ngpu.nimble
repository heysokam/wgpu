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

#___________________
task wgpu,     "Build+Run the hellowindow app.":   exec "nimble lib"; runExample "e00_hellowgpu"
task clear,    "Build+Run the helloclear app.":    exec "nimble lib"; runExample "e01_helloclear"
task triangle, "Build+Run the hellotriangle app.": exec "nimble lib"; runExample "e02_hellotriangle"

