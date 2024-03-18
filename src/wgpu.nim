#:_______________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  LGPLv3  |
#:_______________________________________________________
# Automatic Buildsystem
{.define:wgpu.}
include ./wgpu/compile
# API
import ./wgpu/api
# wgpu-nim extras
when not defined(NoGLFW):
  import ./wgpu/extras
