#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
include src/wgpu/nimble

requires "vmath#head"  # TODO: Remove from the wgpu bindings

#___________________
# Package
packageName   = "wgpu"
version       = "0.0.0"
author        = "sOkam"
description   = "Native WebGPU for Nim"
license       = "MIT"
#___________________
# wgpu specific nimble config
skipdirs      = @[binDir, examplesDir, testsDir, docDir, wgpuDir]  # Tell nimble what folders to skip in the package

#___________________
task tut, " Builds the tutorial app.":   exec "nimble git"; runExample "tut"
task app1, "Builds the Frambuffer app.": exec "nimble git"; runExample "app_framebuffer"

#___________________
# Build the examples binaries
task hello, "    Example 00:  hellowindow."                     : exec "nimble git"; runExample "e00_hellowgpu"
task clear, "    Example 01:  helloclear."                      : exec "nimble git"; runExample "e01_helloclear"
task triangle, " Example 02:  hellotriangle."                   : exec "nimble git"; runExample "e02_hellotriangle"
task buffer, "   Example 03:  hellobuffer."                     : exec "nimble git"; runExample "e03_hellobuffer"
task compute, "  Example 04:  hellocompute."                    : exec "nimble git"; runExample "e04_hellocompute"
task triangle2, "Example 05:  simple buffered triangle."        : exec "nimble git"; runExample "e05_trianglebuffered1"
task triangle3, "Example 06:  multi-buffered triangle."         : exec "nimble git"; runExample "e06_trianglebuffered2"
task triangle4, "Example 07:  indexed multi-buffered triangle." : exec "nimble git"; runExample "e07_trianglebuffered3"
task uniform, "  Example 08:  single uniform."                  : exec "nimble git"; runExample "e08_hellouniform"
task struct, "   Example 09:  uniform struct."                  : exec "nimble git"; runExample "e09_uniformstruct"
# task dynamic, "  Example 10:  uniform struct."                  : exec "nimble git"; runExample "e10_dynamicuniform"
task texture, "  Example 11:  simple byte texture."             : exec "nimble git"; runExample "e11_hellotexture"
task texture2, " Example 12:  sampled byte texture."            : exec "nimble git"; runExample "e12_sampledtexture"
task depth, "    Example 13:  simple depth buffer attachment."  : exec "nimble git"; runExample "e13_hellodepth"
task camera, "   Example 14:  simple 3D camera controller."     : exec "nimble git"; runExample "e14_hellocamera"

