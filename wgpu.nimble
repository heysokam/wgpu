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
import std/strformat
task git, "Internal:  Updates the wgpu-native submodule.":
  withDir "src/wgpu/C/wgpu-native": exec "git pull --recurse-submodules origin trunk"
template build (name :untyped; descr :static string)=
  ## Generates a task to build+run the given example
  task name, descr: exec &"nim -d:nimble confy.nims {astToStr(name)}"

#_______________________________________
# Examples
build wip,       "Example WIP: Builds the current wip example."
build clear,     "Example 01:  helloclear."
build triangle,  "Example 02:  hellotriangle."
build buffer,    "Example 03:  hellobuffer."
build compute,   "Example 04:  hellocompute."
build triangle2, "Example 05:  simple buffered triangle."
build triangle3, "Example 06:  multi-buffered triangle."
build triangle4, "Example 07:  indexed multi-buffered triangle."
build uniform,   "Example 08:  single uniform."
build struct,    "Example 09:  uniform struct."
# build dynamic,   "Example 10:  uniform struct."
build texture,   "Example 11:  simple byte texture."
build texture2,  "Example 12:  sampled byte texture."
build depth,     "Example 13:  simple depth buffer attachment."
build camera,    "Example 14:  simple 3D camera controller."
build uvs,       "Example 15:  cube textured using its UVs."
build instance,  "Example 16:  cube instanced 100 times."
build multimesh, "Example 17:  multi-mesh. cubes + pyramid."

