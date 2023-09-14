#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  :
#:____________________________________________________
# Package
packageName   = "wgpu"
version       = "0.17.2.1"  # First three numbers in sync with wgpu-native
author        = "sOkam"
description   = "Native WebGPU for Nim | wgpu-native"
license       = "MIT"
# Project Setup
srcDir        = "src"
skipFiles     = @["build.nim", "nim.cfg"]
# Build requirements
requires "nim >= 2.0.0"

#____________________________________________________
# Internal Management
#_____________________________
task git, "Internal:  Updates the wgpu-native submodule.":
  withDir "src/wgpu/C/wgpu-native": exec "git pull --recurse-submodules origin trunk"
template example (name :untyped; descr :static string)=
  ## Generates a task to build+run the given example
  task name, descr: exec &"nim -d:nimble confy.nims {astToStr(name)}"

#_______________________________________
# Examples
example wip,       "Example WIP: Builds the current wip example."
example clear,     "Example 01:  helloclear."
example triangle,  "Example 02:  hellotriangle."
example buffer,    "Example 03:  hellobuffer."
example compute,   "Example 04:  hellocompute."
example triangle2, "Example 05:  simple buffered triangle."
example triangle3, "Example 06:  multi-buffered triangle."
example triangle4, "Example 07:  indexed multi-buffered triangle."
example uniform,   "Example 08:  single uniform."
example struct,    "Example 09:  uniform struct."
# example dynamic,   "Example 10:  uniform struct."
example texture,   "Example 11:  simple byte texture."
example texture2,  "Example 12:  sampled byte texture."
example depth,     "Example 13:  simple depth buffer attachment."
example camera,    "Example 14:  simple 3D camera controller."
example uvs,       "Example 15:  cube textured using its UVs."
example instance,  "Example 16:  cube instanced 100 times."
example multimesh, "Example 17:  multi-mesh. cubes + pyramid."

