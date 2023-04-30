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
task tut, "Builds the tutorial app.":  exec "nimble git"; runExample "tut"

#___________________
# Build the examples binaries
task hello, "    Build+Run the hellowindow app."                     : exec "nimble git"; runExample "e00_hellowgpu"
task clear, "    Build+Run the helloclear app."                      : exec "nimble git"; runExample "e01_helloclear"
task triangle, " Build+Run the hellotriangle app."                   : exec "nimble git"; runExample "e02_hellotriangle"
task buffer, "   Build+Run the hellobuffer app."                     : exec "nimble git"; runExample "e03_hellobuffer"
task compute, "  Build+Run the hellocompute app."                    : exec "nimble git"; runExample "e04_hellocompute"
task triangle2, "Build+Run the simple buffered triangle app."        : exec "nimble git"; runExample "e05_trianglebuffered1"
task triangle3, "Build+Run the multi-buffered triangle app."         : exec "nimble git"; runExample "e06_trianglebuffered2"
task triangle4, "Build+Run the indexed multi-buffered triangle app." : exec "nimble git"; runExample "e07_trianglebuffered3"
task uniform, "  Build+Run the single uniform app."                  : exec "nimble git"; runExample "e08_hellouniform"
task struct, "   Build+Run the uniform struct app."                  : exec "nimble git"; runExample "e09_uniformstruct"

