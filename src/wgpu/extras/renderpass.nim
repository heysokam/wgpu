#:_______________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  LGPLv3  |
#:_______________________________________________________
# @deps wgpu
from ../api as wgpu import nil

#___________________
proc setIndexBuffer *(
    renderPass : wgpu.RenderPassEncoder;
    format     : wgpu.IndexFormat;
    buffer     : wgpu.Buffer;
    offset     : uint64;
    size       : uint64;
  ) :void= wgpu.setIndexBuffer(renderPass, buffer, format, offset, size)
  ## @descr Overload for wgpu.setIndexBuffer

