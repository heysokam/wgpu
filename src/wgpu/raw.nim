#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  :
#:____________________________________________________
# Raw wrapper for wgpu, autogen with futhark.  |
# Note: Names are Verbatim from C.             |
#       No aliases. No overloads.              |
#       Check first-time-run console output.   |
#______________________________________________|
# std dependencies
import std/os
# External dependencies
import pkg/futhark
#_____________________________

# wgpu build requirements
include ./compile

# Find the headers, and generate the wrapper
const wgpuDir = currentSourcePath().parentDir()/"C"/"wgpu-native"/"ffi"
importc:
  path wgpuDir
  "wgpu.h"
  "webgpu-headers"/"webgpu.h"

