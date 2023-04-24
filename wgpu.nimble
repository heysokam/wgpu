#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
include ./src/wgpu/nimble

#___________________
# Package
packageName   = "wgpu"
version       = "0.0.0"
author        = "sOkam"
description   = "Native WebGPU for Nim"
license       = "MIT"
#___________________
# wgpu specific nimble config
skipdirs      = @[binDir, examplesDir, testsDir, docDir, wgpuDir] # Tell nimble what folders to skip in the package

#___________________
task tut, "Builds the tutorial app.":
  exec "nimble lib"
  "tut".runExample

#___________________
# Build the examples binaries
task hello,     "Build+Run the hellowindow app.":   exec "nimble lib"; runExample "e00_hellowgpu"
task clear,     "Build+Run the helloclear app.":    exec "nimble lib"; runExample "e01_helloclear"
task triangle,  "Build+Run the hellotriangle app.": exec "nimble lib"; runExample "e02_hellotriangle"
task buffer,    "Build+Run the hellobuffer app.":   exec "nimble lib"; runExample "e03_hellobuffer"
task compute,   "Build+Run the hellocompute app.":  exec "nimble lib"; runExample "e04_hellocompute"
task triangle2, "Build+Run the hellotriangle app.": exec "nimble lib"; runExample "e05_trianglebuffered1"
# task triangle3, "Build+Run the hellotriangle app.": exec "nimble lib"; runExample "e05_trianglebuffered2"

