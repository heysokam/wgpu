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
task tut, "Builds the tutorial app.":
  exec "nimble lib"
  "tut".runExample

#___________________
# Build the examples binaries
task wgpu_hello,    "Build+Run the hellowindow app.":   exec "nimble lib"; runExample "wgpu/e00_hellowgpu"
task wgpu_clear,    "Build+Run the helloclear app.":    exec "nimble lib"; runExample "wgpu/e01_helloclear"
task wgpu_triangle, "Build+Run the hellotriangle app.": exec "nimble lib"; runExample "wgpu/e02_hellotriangle"
task wgpu_buffer,   "Build+Run the hellobuffer app.":   exec "nimble lib"; runExample "wgpu/e03_hellobuffer"
task wgpu_compute,  "Build+Run the hellocompute app.":  exec "nimble lib"; runExample "wgpu/e04_hellocompute"

