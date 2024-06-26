#:_______________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  LGPLv3  |
#:_______________________________________________________
# Extra utilities specific to wgpu  |
#___________________________________|
# std dependencies
import std/strformat
import std/strutils
import std/sequtils
# External dependencies
from pkg/nglfw as glfw import nil
# API module dependencies
import ./api as wgpu


#_______________________________________
# @section Helpers
#_____________________________
template vaddr (val :auto) :untyped=
  ## Returns the `addr` of anything, through a temp val.
  ## Useful when the objects have not been created yet.
  let temp = val; temp.unsafeAddr
#___________________
proc setIndexBuffer *(renderPass :RenderPassEncoder; format :IndexFormat; buffer :Buffer; offset :uint64; size :uint64) :void=
  wgpu.setIndexBuffer(renderPass, buffer, format, offset, size)
#___________________
proc `as` *[T1, T2](val :T1; typ :typedesc[T2]) :T2=  cast[T2](val)
  ## @descr Casts the contents of {@arg val} to the given {@arg typ}
  ## @reason Syntax ergonomics


#_______________________________________
# @section Native Surface: Creation
#_____________________________
# X11 context creation
when defined(linux) and not defined(wayland):
  proc getSurfaceX11 *(instance :Instance; win :glfw.Window) :Surface=
    result = instance.create(vaddr SurfaceDescriptor(
      label       : nil,
      nextInChain : cast[ptr ChainedStruct](vaddr SurfaceDescriptorFromXlibWindow(
        chain     : ChainedStruct(
          next    : nil,
          sType   : SType_surfaceDescriptorFromXlibWindow,
          ), # << chain
        display   : glfw.getX11Display(),
        window    : glfw.getX11Window(win).uint32,
        )), # << nextInChain
      )) # << instance.createSurface()

#___________________
# Wayland context creation
elif defined(linux) and defined(wayland):
  proc getSurfaceWayland *(instance :Instance; win :glfw.Window) :Surface=
    result = instance.create(vaddr SurfaceDescriptor(
      label       : nil,
      nextInChain : cast[ptr ChainedStruct](vaddr SurfaceDescriptorFromWaylandSurface(
        chain     : ChainedStruct(
          next    : nil,
          sType   : SType_surfaceDescriptorFromWaylandSurface,
          ), # << chain
        display   : glfw.getWaylandDisplay(),
        surface   : glfw.getWaylandWindow(win),
        )), # << nextInChain
      )) # << instance.createSurface()

#___________________
# Windows context creation
elif defined(windows):
  proc getModuleHandle *(lpModuleName :cstring) :pointer {.importc: "GetModuleHandleW", winapi, stdcall, dynlib: "kernel32".}
  proc getSurfaceWin *(instance :Instance; win :glfw.Window) :Surface=
    let hwnd      = glfw.getWin32Window(win)
    let hinstance = getModuleHandle(nil)
    result = instance.create(vaddr SurfaceDescriptor(
      label       : nil,
      nextInChain : cast[ptr ChainedStruct](vaddr SurfaceDescriptorFromWindowsHWND(
        chain     : ChainedStruct(
          next    : nil,
          sType   : SType_surfaceDescriptorFromWindowsHWND,
          ), # << chain
        hinstance : hinstance,
        hwnd      : hwnd,
        )) # << nextInChain
      )) # << instance.createSurface()

#___________________
# Mac context creation
elif defined(macosx):
  proc getSurfaceMac *(instance :Instance; win :glfw.Window) :Surface=
    result = instance.create(vaddr SurfaceDescriptor(
      label       : nil,
      nextInChain : cast[ptr ChainedStruct](vaddr SurfaceDescriptorFromMetalLayer(
        chain     : ChainedStruct(
          next    : nil,
          sType   : SType_surfaceDescriptorFromMetalLayer,
          ), # << chain
        # Get metal layer with our nglfw/metal_glue.h extension
        layer     : glfw.getMetalLayer(win),
        )), # << nextInChain
      )) # << instance.createSurface()


#_______________________________________
# @section Native Surface: Create for any system
#_____________________________
proc getSurface *(instance :Instance; win :glfw.Window) :Surface=
  ## Gets the surface of the window for the given wgpu instance.
  ## Returns the appropriate native surface based on the system.
  when defined(linux) and not defined(wayland):
    result = instance.getSurfaceX11(win)
  elif defined(linux) and defined(wayland):
    {.warning: "Wayland Surface support has not been tested yet".}
    result = instance.getSurfaceWayland(win)
  elif defined(windows):
    {.warning: "Windows Surface support has not been tested yet".}
    result = instance.getSurfaceWin(win)
  elif defined(macosx):
    result = instance.getSurfaceMac(win)
  else:
    {.error: "Surface creation for this platform is currently not supported".}


#_______________________________________
# @section Hardware Information
#_____________________________
#[
proc features *(adapter :Adapter) :seq[Feature]=
  ## Returns the features supported by the adapter as a seq[Feature]
  ## Note: id is represented as a hex number in the wgpu headers
  let count    = adapter.enumerate(nil).int
  var features = newSeqWith[Feature](count, Feature 0)
  discard adapter.enumerate(features[0].addr)
  result = features
]#
#___________________
proc capabilities *(surface :Surface; adapter :Adapter
  ) :tuple[textureFormats:seq[TextureFormat], presentModes:seq[PresentMode], alphaModes:seq[CompositeAlphaMode]]=
  ## Returns the capabilities supported by the surface as a tuple of (seq[textureFormats], seq[presentModes], seq[alphaModes])
  {.warning: "Getting capabilities from a surface is currently broken for an unknown reason. Needs fixing.".}
  var caps :SurfaceCapabilities
  surface.get(adapter, caps.addr)
  var formats       = newSeqWith[TextureFormat](caps.formatCount.int, TextureFormat 0)
  var presents      = newSeqWith[PresentMode](caps.presentModeCount.int, PresentMode 0)
  var alphas        = newSeqWith[CompositeAlphaMode](caps.alphaModeCount.int, CompositeAlphaMode 0)
  if formats.len  > 0: caps.formats      = formats[0].addr
  if presents.len > 0: caps.presentModes = presents[0].addr
  if alphas.len   > 0: caps.alphaModes   = alphas[0].addr
  surface.get(adapter, caps.addr)
  result = (formats, presents, alphas)


#_______________________________________
# @section Shader loading
#_____________________________
# ShaderModuleDescriptor wgslCodeToDescriptor(const char* code, const char* label);
proc wgslToDescriptor *(code, label :string) :ShaderModuleDescriptor=
  ## Reads the given wgsl shader code, and returns a ShaderModuleDescriptor for it.
  var descriptor         = new ShaderModuleWGSLDescriptor
  descriptor.chain.next  = nil
  descriptor.chain.sType = SType_shaderModuleWGSLDescriptor
  descriptor.code        = code.cstring
  result = ShaderModuleDescriptor(
    nextInChain : cast[ptr ChainedStruct](descriptor), # descriptor is a ref, so we cast that pointer into a ChainedStruct
    label       : label.cstring,
    hintCount   : 0,
    hints       : nil,
    ) # << ShaderModuleDescriptor( ... )
#___________________
proc readWgsl *(file :string) :ShaderModuleDescriptor=  file.readFile.wgslToDescriptor(label = file)
  ## Reads the given `.wgsl` shader file, and returns a ShaderModuleDescriptor for it.

# ShaderModule wgslFileToShader(WGPUDevice* device, const char* src);
# ShaderModule wgslCodeToShader(WGPUDevice* device, const char* code, const char* label);


#_______________________________________
# @section Default Limits
#_____________________________
# TODO: Switch to default values when 2.0devel becomes stable
proc new *(_:typedesc[Limits];
    maxTextureDimension1D                      =  uint32.high;
    maxTextureDimension2D                      =  uint32.high;
    maxTextureDimension3D                      =  uint32.high;
    maxTextureArrayLayers                      =  uint32.high;
    maxBindGroups                              =  uint32.high;
    maxBindingsPerBindGroup                    =  uint32.high;
    maxDynamicUniformBuffersPerPipelineLayout  =  uint32.high;
    maxDynamicStorageBuffersPerPipelineLayout  =  uint32.high;
    maxSampledTexturesPerShaderStage           =  uint32.high;
    maxSamplersPerShaderStage                  =  uint32.high;
    maxStorageBuffersPerShaderStage            =  uint32.high;
    maxStorageTexturesPerShaderStage           =  uint32.high;
    maxUniformBuffersPerShaderStage            =  uint32.high;
    maxUniformBufferBindingSize                =  uint64.high;
    maxStorageBufferBindingSize                =  uint64.high;
    minUniformBufferOffsetAlignment            =  uint32.high;
    minStorageBufferOffsetAlignment            =  uint32.high;
    maxVertexBuffers                           =  uint32.high;
    maxBufferSize                              =  uint64.high;
    maxVertexAttributes                        =  uint32.high;
    maxVertexBufferArrayStride                 =  uint32.high;
    maxInterStageShaderComponents              =  uint32.high;
    maxInterStageShaderVariables               =  uint32.high;
    maxColorAttachments                        =  uint32.high;
    maxColorAttachmentBytesPerSample           =  uint32.high;
    maxComputeWorkgroupStorageSize             =  uint32.high;
    maxComputeInvocationsPerWorkgroup          =  uint32.high;
    maxComputeWorkgroupSizeX                   =  uint32.high;
    maxComputeWorkgroupSizeY                   =  uint32.high;
    maxComputeWorkgroupSizeZ                   =  uint32.high;
    maxComputeWorkgroupsPerDimension           =  uint32.high;
  ) :Limits=
  # Init the default values
  result = Limits.default()
  # Update only those that have been specified
  if maxTextureDimension1D                     != uint32.high:  result.maxTextureDimension1D                     = maxTextureDimension1D
  if maxTextureDimension2D                     != uint32.high:  result.maxTextureDimension2D                     = maxTextureDimension2D
  if maxTextureDimension3D                     != uint32.high:  result.maxTextureDimension3D                     = maxTextureDimension3D
  if maxTextureArrayLayers                     != uint32.high:  result.maxTextureArrayLayers                     = maxTextureArrayLayers
  if maxBindGroups                             != uint32.high:  result.maxBindGroups                             = maxBindGroups
  if maxBindingsPerBindGroup                   != uint32.high:  result.maxBindingsPerBindGroup                   = maxBindingsPerBindGroup
  if maxDynamicUniformBuffersPerPipelineLayout != uint32.high:  result.maxDynamicUniformBuffersPerPipelineLayout = maxDynamicUniformBuffersPerPipelineLayout
  if maxDynamicStorageBuffersPerPipelineLayout != uint32.high:  result.maxDynamicStorageBuffersPerPipelineLayout = maxDynamicStorageBuffersPerPipelineLayout
  if maxSampledTexturesPerShaderStage          != uint32.high:  result.maxSampledTexturesPerShaderStage          = maxSampledTexturesPerShaderStage
  if maxSamplersPerShaderStage                 != uint32.high:  result.maxSamplersPerShaderStage                 = maxSamplersPerShaderStage
  if maxStorageBuffersPerShaderStage           != uint32.high:  result.maxStorageBuffersPerShaderStage           = maxStorageBuffersPerShaderStage
  if maxStorageTexturesPerShaderStage          != uint32.high:  result.maxStorageTexturesPerShaderStage          = maxStorageTexturesPerShaderStage
  if maxUniformBuffersPerShaderStage           != uint32.high:  result.maxUniformBuffersPerShaderStage           = maxUniformBuffersPerShaderStage
  if maxUniformBufferBindingSize               != uint64.high:  result.maxUniformBufferBindingSize               = maxUniformBufferBindingSize
  if maxStorageBufferBindingSize               != uint64.high:  result.maxStorageBufferBindingSize               = maxStorageBufferBindingSize
  if minUniformBufferOffsetAlignment           != uint32.high:  result.minUniformBufferOffsetAlignment           = minUniformBufferOffsetAlignment
  if minStorageBufferOffsetAlignment           != uint32.high:  result.minStorageBufferOffsetAlignment           = minStorageBufferOffsetAlignment
  if maxVertexBuffers                          != uint32.high:  result.maxVertexBuffers                          = maxVertexBuffers
  if maxBufferSize                             != uint64.high:  result.maxBufferSize                             = maxBufferSize
  if maxVertexAttributes                       != uint32.high:  result.maxVertexAttributes                       = maxVertexAttributes
  if maxVertexBufferArrayStride                != uint32.high:  result.maxVertexBufferArrayStride                = maxVertexBufferArrayStride
  if maxInterStageShaderComponents             != uint32.high:  result.maxInterStageShaderComponents             = maxInterStageShaderComponents
  if maxInterStageShaderVariables              != uint32.high:  result.maxInterStageShaderVariables              = maxInterStageShaderVariables
  if maxColorAttachments                       != uint32.high:  result.maxColorAttachments                       = maxColorAttachments
  if maxColorAttachmentBytesPerSample          != uint32.high:  result.maxColorAttachmentBytesPerSample          = maxColorAttachmentBytesPerSample
  if maxComputeWorkgroupStorageSize            != uint32.high:  result.maxComputeWorkgroupStorageSize            = maxComputeWorkgroupStorageSize
  if maxComputeInvocationsPerWorkgroup         != uint32.high:  result.maxComputeInvocationsPerWorkgroup         = maxComputeInvocationsPerWorkgroup
  if maxComputeWorkgroupSizeX                  != uint32.high:  result.maxComputeWorkgroupSizeX                  = maxComputeWorkgroupSizeX
  if maxComputeWorkgroupSizeY                  != uint32.high:  result.maxComputeWorkgroupSizeY                  = maxComputeWorkgroupSizeY
  if maxComputeWorkgroupSizeZ                  != uint32.high:  result.maxComputeWorkgroupSizeZ                  = maxComputeWorkgroupSizeZ
  if maxComputeWorkgroupsPerDimension          != uint32.high:  result.maxComputeWorkgroupsPerDimension          = maxComputeWorkgroupsPerDimension


#_______________________________________
# @section Missing Functionality
#_____________________________
# Should be part of the bindings, but they don't exist in wgpu-native
#___________________
# Default Limits
proc default *(_ :typedesc[Limits]) :Limits=
  # TODO: Switch to default values when 2.0devel becomes stable
  # https://docs.rs/wgpu-types/0.16.0/src/wgpuTypes/lib.rs.html#912
  result.maxTextureDimension1D                     = 8192
  result.maxTextureDimension2D                     = 8192
  result.maxTextureDimension3D                     = 2048
  result.maxTextureArrayLayers                     = 256
  result.maxBindGroups                             = 4
  result.maxBindingsPerBindGroup                   = 640
  result.maxDynamicUniformBuffersPerPipelineLayout = 8
  result.maxDynamicStorageBuffersPerPipelineLayout = 4
  result.maxSampledTexturesPerShaderStage          = 16
  result.maxSamplersPerShaderStage                 = 16
  result.maxStorageBuffersPerShaderStage           = 8
  result.maxStorageTexturesPerShaderStage          = 4
  result.maxUniformBuffersPerShaderStage           = 12
  result.maxUniformBufferBindingSize               = 64 shl 10
  result.maxStorageBufferBindingSize               = 128 shl 20
  result.maxVertexBuffers                          = 8
  result.maxBufferSize                             = 1 shl 28
  result.maxVertexAttributes                       = 16
  result.maxVertexBufferArrayStride                = 2048
  result.minUniformBufferOffsetAlignment           = 256
  result.minStorageBufferOffsetAlignment           = 256
  result.maxInterStageShaderComponents             = 60
  result.maxComputeWorkgroupStorageSize            = 16384
  result.maxComputeInvocationsPerWorkgroup         = 256
  result.maxComputeWorkgroupSizeX                  = 256
  result.maxComputeWorkgroupSizeY                  = 256
  result.maxComputeWorkgroupSizeZ                  = 64
  result.maxComputeWorkgroupsPerDimension          = 65535
  # result.maxPushConstantSize                       = 0
#___________________
proc downlevel_defaults *(_ :typedesc[Limits]) :Limits=
  ## These default limits are guaranteed to be compatible with GLES-3.1, and D3D11
  result.maxTextureDimension1D                     = 2048
  result.maxTextureDimension2D                     = 2048
  result.maxTextureDimension3D                     = 256
  result.maxTextureArrayLayers                     = 256
  result.maxBindGroups                             = 4
  result.maxBindingsPerBindGroup                   = 640
  result.maxDynamicUniformBuffersPerPipelineLayout = 8
  result.maxDynamicStorageBuffersPerPipelineLayout = 4
  result.maxSampledTexturesPerShaderStage          = 16
  result.maxSamplersPerShaderStage                 = 16
  result.maxStorageBuffersPerShaderStage           = 4
  result.maxStorageTexturesPerShaderStage          = 4
  result.maxUniformBuffersPerShaderStage           = 12
  result.maxUniformBufferBindingSize               = 16 shl 10
  result.maxStorageBufferBindingSize               = 128 shl 20
  result.maxVertexBuffers                          = 8
  result.maxBufferSize                             = 16
  result.maxVertexAttributes                       = 2048
  result.maxVertexBufferArrayStride                = 0
  result.minUniformBufferOffsetAlignment           = 256
  result.minStorageBufferOffsetAlignment           = 256
  result.maxInterStageShaderComponents             = 60
  result.maxComputeWorkgroupStorageSize            = 16352
  result.maxComputeInvocationsPerWorkgroup         = 256
  result.maxComputeWorkgroupSizeX                  = 256
  result.maxComputeWorkgroupSizeY                  = 256
  result.maxComputeWorkgroupSizeZ                  = 64
  result.maxComputeWorkgroupsPerDimension          = 65535
  # result.maxPushConstantSize                       = 1 shl 28
#___________________
proc downlevel_webgl2_defaults *(_ :typedesc[Limits]) :Limits=
  ## These default limits are guaranteed to be compatible with GLES-3.0, and D3D11, and WebGL2
  result = Limits.downlevelDefaults()  # Most of the values should be the same as the downlevel defaults
  result.maxUniformBuffersPerShaderStage           = 11
  result.maxStorageBuffersPerShaderStage           = 0
  result.maxStorageTexturesPerShaderStage          = 0
  result.maxDynamicStorageBuffersPerPipelineLayout = 0
  result.maxStorageBufferBindingSize               = 0
  result.maxVertexBufferArrayStride                = 255
  result.maxComputeWorkgroupStorageSize            = 0
  result.maxComputeInvocationsPerWorkgroup         = 0
  result.maxComputeWorkgroupSize_x                 = 0
  result.maxComputeWorkgroupSize_y                 = 0
  result.maxComputeWorkgroupSize_z                 = 0
  result.maxComputeWorkgroupsPerDimension          = 0

