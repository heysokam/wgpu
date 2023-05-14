#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
include src/wgpu/nimble

#___________________
# Package
packageName   = "wgpu"
version       = "0.16.1"  # First two numbers in sync with wgpu-native
author        = "sOkam"
description   = "Native WebGPU for Nim"
license       = "MIT"
#___________________
# wgpu specific nimble config
skipdirs      = @[binDir, examplesDir, testsDir, docDir]  # Tell nimble what folders to skip in the package


#___________________
# TODO: Remove from the wgpu bindings
#     : Should be taskRequires instead, only used in the examples
#     : Depends on Nim2.0 becoming stable
requires "vmath"

#___________________
task tut, " Builds the latest/current wip tutorial app.":  runExample "tut"
task app1, "Builds the Frambuffer app.": runExample "app_framebuffer"

#___________________
# Build the examples binaries
task hello, "    Example 00:  hellowindow."                     : runExample "e00_hellowgpu"
task clear, "    Example 01:  helloclear."                      : runExample "e01_helloclear"
task triangle, " Example 02:  hellotriangle."                   : runExample "e02_hellotriangle"
task buffer, "   Example 03:  hellobuffer."                     : runExample "e03_hellobuffer"
task compute, "  Example 04:  hellocompute."                    : runExample "e04_hellocompute"
task triangle2, "Example 05:  simple buffered triangle."        : runExample "e05_trianglebuffered1"
task triangle3, "Example 06:  multi-buffered triangle."         : runExample "e06_trianglebuffered2"
task triangle4, "Example 07:  indexed multi-buffered triangle." : runExample "e07_trianglebuffered3"
task uniform, "  Example 08:  single uniform."                  : runExample "e08_hellouniform"
task struct, "   Example 09:  uniform struct."                  : runExample "e09_uniformstruct"
# task dynamic, "  Example 10:  uniform struct."                  : runExample "e10_dynamicuniform"
task texture, "  Example 11:  simple byte texture."             : runExample "e11_hellotexture"
task texture2, " Example 12:  sampled byte texture."            : runExample "e12_sampledtexture"
task depth, "    Example 13:  simple depth buffer attachment."  : runExample "e13_hellodepth"
task camera, "   Example 14:  simple 3D camera controller."     : runExample "e14_hellocamera"
task uvs, "      Example 15:  cube textured using its UVs."     : runExample "e15_cubetextured"
task instance, " Example 16:  cube instanced 100 times."        : runExample "e16_cubeinstanced"
task multimesh, "Example 16:  multi-mesh. cubes + pyramid."     : runExample "e17_multimesh"

