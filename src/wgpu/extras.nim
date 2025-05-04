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
# @section Missing Data
#_____________________________
# FIX: WGPU uses consts for flag sets, but Futhark has a bug that does not generate them
# https://github.com/PMunch/futhark/issues/144
#_____________________________
# Buffer Flags
type BufferUsage *{.pure, size:sizeof(cuint).}= enum MapRead, MapWrite, CopySrc, CopyDst, Index, Vertex, Uniform, Storage, Indirect, QueryResolve
type BufferUsageFlags * = set[extras.BufferUsage]
template None *(_:typedesc[extras.BufferUsage] | typedesc[wgpu.BufferUsage]) :BufferUsageFlags= {}
converter toWGPU *(val :BufferUsageFlags) :wgpu.BufferUsage= cast[wgpu.BufferUsage](val)
converter toWGPU *(val :extras.BufferUsage) :wgpu.BufferUsage= cast[wgpu.BufferUsage]({val})
converter toExtras *(val :extras.BufferUsage) :BufferUsageFlags= {val}
converter toBufferUsage *(val :wgpu.BufferUsage) :BufferUsageFlags= cast[BufferUsageFlags](val)
#___________________
# Color Flags
type ColorWrite *{.pure, size:sizeof(cuint).}= enum Red, Green, Blue, Alpha
type ColorWriteFlags * = set[extras.ColorWrite]
template None *(_:typedesc[extras.ColorWrite] | typedesc[wgpu.ColorWriteMask]) :ColorWriteFlags= {}
template All  *(_:typedesc[extras.ColorWrite] | typedesc[wgpu.ColorWriteMask]) :ColorWriteFlags= {Red, Green, Blue, Alpha}
converter toWGPU *(val :ColorWriteFlags) :wgpu.ColorWriteMask= cast[wgpu.ColorWriteMask](val)
converter toWGPU *(val :extras.ColorWrite) :wgpu.ColorWriteMask= cast[wgpu.ColorWriteMask]({val})
converter toExtras *(val :extras.ColorWrite) :ColorWriteFlags= {val}
converter toColorWrite *(val :wgpu.ColorWriteMask) :ColorWriteFlags= cast[ColorWriteFlags](val)
#___________________
# MapMode Flags
type MapMode *{.pure, size:sizeof(cuint).}= enum Read, Write
type MapModeFlags * = set[extras.MapMode]
template None *(_:typedesc[extras.MapMode] | typedesc[wgpu.MapMode]) :MapModeFlags= {}
converter toWGPU *(val :MapModeFlags) :wgpu.MapMode= cast[wgpu.MapMode](val)
converter toWGPU *(val :extras.MapMode) :wgpu.MapMode= cast[wgpu.MapMode]({val})
converter toExtras *(val :extras.MapMode) :MapModeFlags= {val}
converter toMapMode *(val :wgpu.MapMode) :MapModeFlags= cast[MapModeFlags](val)
#___________________
# Shader Stage Flags
type ShaderStage *{.pure, size:sizeof(cuint).}= enum Vertex, Fragment, Compute
type ShaderStageFlags * = set[extras.ShaderStage]
template None *(_:typedesc[extras.ShaderStage] | typedesc[wgpu.ShaderStage]) :ShaderStageFlags= {}
converter toWGPU *(val :ShaderStageFlags) :wgpu.ShaderStage= cast[wgpu.ShaderStage](val)
converter toWGPU *(val :extras.ShaderStage) :wgpu.ShaderStage= cast[wgpu.ShaderStage]({val})
converter toExtras *(val :extras.ShaderStage) :ShaderStageFlags= {val}
converter toShaderStage *(val :wgpu.ShaderStage) :ShaderStageFlags= cast[ShaderStageFlags](val)
#___________________
# Texture Flags
type TextureUsage *{.pure, size:sizeof(cuint).}= enum CopySrc, CopyDst, TextureBinding, StorageBinding, RenderAttachment
type TextureUsageFlags * = set[extras.TextureUsage]
template None *(_:typedesc[extras.TextureUsage] | typedesc[wgpu.TextureUsage]) :TextureUsageFlags= {}
converter toWGPU *(val :TextureUsageFlags) :wgpu.TextureUsage= cast[wgpu.TextureUsage](val)
converter toWGPU *(val :extras.TextureUsage) :wgpu.TextureUsage= cast[wgpu.TextureUsage]({val})
converter toExtras *(val :extras.TextureUsage) :TextureUsageFlags= {val}
converter toTextureUsage *(val :wgpu.TextureUsage) :TextureUsageFlags= cast[TextureUsageFlags](val)


#_______________________________________
# @section Helpers
#_____________________________
template vaddr (val :auto) :untyped=
  ## @descr
  ##  Returns the `addr` of anything, through a temp val.
  ##  Useful when the objects have not been created yet.
  let temp = val; temp.unsafeAddr
#___________________
proc setIndexBuffer *(
    renderPass : RenderPassEncoder;
    format     : IndexFormat;
    buffer     : Buffer;
    offset     : uint64;
    size       : uint64
  ) :void= wgpu.setIndexBuffer(renderPass, buffer, format, offset, size)
  ## @descr Overload for wgpu.setIndexBuffer
#___________________
func toStringView *(val :string) :StringView=  StringView(data: val.cstring, length: val.len.csize_t)
  ## @descr Converts the given Nim.string into a wgpu.StringView
#___________________
func `$` *(val :StringView) :string=
  ## @descr Converts the given wgpu.StringView into a Nim.string
  if val.data == nil: return ""
  if val.length == 0: return ""
  val.data.toOpenArray(0, val.length.int-1).substr()
#___________________
func `$` *(feature :FeatureName) :string=
  ## @descr
  ##  Returns the string representation of the given FeatureName
  ##  Converts the value to WGPUNativeFeature before conversion where needed
  let isWgpuNative = feature.ord > 0x00030000
  if  isWgpuNative : result = $NativeFeature(feature)
  else             : result = system.`$`(feature)


#_______________________________________
# @section Native Surface: Creation
#_____________________________
# X11 context creation
when defined(linux) and not defined(wayland):
  proc getSurfaceX11 *(instance :Instance; win :glfw.Window) :Surface=
    result = instance.create(vaddr SurfaceDescriptor(
      label       : StringView(),
      nextInChain : cast[ptr ChainedStruct](vaddr SurfaceSourceXlibWindow(
        chain     : ChainedStruct(
          next    : nil,
          sType   : SType_SurfaceSourceXlibWindow,
          ), #:: chain
        display   : glfw.getX11Display(),
        window    : glfw.getX11Window(win).uint32,
        )), #:: nextInChain
      )) #:: instance.createSurface()

#___________________
# Wayland context creation
elif defined(linux) and defined(wayland):
  proc getSurfaceWayland *(instance :Instance; win :glfw.Window) :Surface=
    result = instance.create(vaddr SurfaceDescriptor(
      label       : StringView(),
      nextInChain : cast[ptr ChainedStruct](vaddr SurfaceSourceWaylandSurface(
        chain     : ChainedStruct(
          next    : nil,
          sType   : SType_SurfaceSourceWaylandSurface,
          ), #:: chain
        display   : glfw.getWaylandDisplay(),
        surface   : glfw.getWaylandWindow(win),
        )), #:: nextInChain
      )) #:: instance.createSurface()

#___________________
# Windows context creation
elif defined(windows):
  proc getModuleHandle *(lpModuleName :cstring) :pointer {.importc: "GetModuleHandleW", winapi, stdcall, dynlib: "kernel32".}
  proc getSurfaceWin *(instance :Instance; win :glfw.Window) :Surface=
    let hwnd      = glfw.getWin32Window(win)
    let hinstance = getModuleHandle(nil)
    result = instance.create(vaddr SurfaceDescriptor(
      label       : StringView(),
      nextInChain : cast[ptr ChainedStruct](vaddr SurfaceSourceWindowsHWND(
        chain     : ChainedStruct(
          next    : nil,
          sType   : SType_SurfaceSourceWindowsHWND,
          ), #:: chain
        hinstance : hinstance,
        hwnd      : hwnd,
        )) #:: nextInChain
      )) #:: instance.createSurface()

#___________________
# Mac context creation
elif defined(macosx):
  proc getSurfaceMac *(instance :Instance; win :glfw.Window) :Surface=
    when not declared(glfw.getMetalLayer): {.error: """

      getMetalLayer must be defined to use the wgpu.getSurfaceMac() helper functions.
      -d:wgpu and nglfw must be added to your project to use it.
      You might just be missing -d:wgpu in your compile options (define pragmas are buggy on macosx)
      """.}
    result = instance.create(vaddr SurfaceDescriptor(
      label       : StringView(),
      nextInChain : cast[ptr ChainedStruct](vaddr SurfaceSourceMetalLayer(
        chain     : ChainedStruct(
          next    : nil,
          sType   : SType_SurfaceSourceMetalLayer,
          ), #:: chain
        # Get metal layer with our nglfw/metal_glue.h extension
        layer     : glfw.getMetalLayer(win),
        )), #:: nextInChain
      )) #:: instance.createSurface()


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
# @section Information: Adapter
#_____________________________
#___________________
proc features *(adapter :Adapter) :seq[FeatureName]=
  ## @descr Returns the features supported by the adapter as a seq[FeatureName]
  var data = SupportedFeatures()
  adapter.get(data.addr)
  result = newSeqWith(data.featureCount.int, FeatureName 0)
  for id in 0..<data.featureCount:
    result[id] = cast[ptr UncheckedArray[FeatureName]](data.features)[id]
  data.freeMembers()
#___________________
type AdapterInfo * = object
  ## @descr Information about an adapter
  vendor       *:string
  architecture *:string
  device       *:string
  description  *:string
  backendType  *:BackendType
  adapterType  *:AdapterType
  vendorID     *:uint32
  deviceID     *:uint32
#___________________
proc info *(adapter :Adapter) :extras.AdapterInfo=
  ## @descr Returns the information about the adapter as an extras.AdapterInfo object
  var data :wgpu.AdapterInfo
  let status = adapter.get(data.addr)
  result.vendor       = $data.vendor
  result.architecture = $data.architecture
  result.device       = $data.device
  result.description  = $data.description
  result.backendType  = data.backendType
  result.adapterType  = data.adapterType
  result.vendorID     = data.vendorID
  result.deviceID     = data.deviceID
  data.freeMembers()


#_______________________________________
# @section Information: Surface
#_____________________________
type SurfaceError * = object of CatchableError
#___________________
proc formats *(caps :SurfaceCapabilities) :seq[TextureFormat]=
  ## @descr Returns a seq of the formats supported by the surface described by {@arg caps}
  result = newSeqWith(caps.formatCount.int, TextureFormat 0)
  for id in 0..<caps.formatCount: result[id] = cast[ptr UncheckedArray[TextureFormat]](caps.formats)[id]
#___________________
proc presentModes *(caps :SurfaceCapabilities) :seq[PresentMode]=
  ## @descr Returns a seq of the present modes supported by the surface described by {@arg caps}
  result = newSeqWith(caps.presentModeCount.int, PresentMode 0)
  for id in 0..<caps.presentModeCount: result[id] = cast[ptr UncheckedArray[PresentMode]](caps.presentModes)[id]
#___________________
proc alphaModes *(caps :SurfaceCapabilities) :seq[CompositeAlphaMode]=
  ## @descr Returns a seq of the composite alpha modes supported by the surface described by {@arg caps}
  result = newSeqWith(caps.alphaModeCount.int, CompositeAlphaMode 0)
  for id in 0..<caps.alphaModeCount: result[id] = cast[ptr UncheckedArray[CompositeAlphaMode]](caps.alphaModes)[id]
#___________________
type SurfaceCapabilities * = object
  ## @descr Information about the capabilities of a surface
  usages        *:TextureUsageFlags
  formats       *:seq[wgpu.TextureFormat]
  presentModes  *:seq[wgpu.PresentMode]
  alphaModes    *:seq[wgpu.CompositeAlphaMode]
#___________________
proc capabilities *(
    surface : Surface;
    adapter : Adapter;
  ) :extras.SurfaceCapabilities=
  ## @descr Returns the capabilities supported by the surface as a tuple of (seq[textureFormats], seq[presentModes], seq[alphaModes])
  var caps :wgpu.SurfaceCapabilities
  let status = surface.get(adapter, caps.addr)
  if status != Success: raise newException(SurfaceError, "Failed to get the capabilities of the surface: " & $status)
  result.usages       = caps.usages.toTextureUsage()
  result.formats      = caps.formats()
  result.presentModes = caps.presentModes()
  result.alphaModes   = caps.alphaModes()
  caps.freeMembers()


#_______________________________________
# @section Information: Device
#_____________________________
type DeviceError * = object of CatchableError
#___________________
proc features *(device : Device) :seq[FeatureName]=
  ## @descr Returns the features supported by the device as a wgpu.SupportedFeatures object
  var data = SupportedFeatures()
  device.get(features= data.addr)
  result = newSeqWith(data.featureCount.int, FeatureName 0)
  for id in 0..<data.featureCount:
    result[id] = cast[ptr UncheckedArray[FeatureName]](data.features)[id]
  data.freeMembers()
#___________________
proc limits *(device : Device) :Limits=
  ## @descr Returns the limits supported by the device as a wgpu.Limits object
  let status = device.get(limits= result.addr)
  if status != Success: raise newException(DeviceError, "Failed to get the limits of the device: " & $status)


#_______________________________________
# @section Shader loading
#_____________________________
proc wgslToDescriptor *(code, label :string) :ShaderModuleDescriptor=
  ## Reads the given wgsl shader code, and returns a ShaderModuleDescriptor for it.
  var descriptor         = new ShaderSourceWGSL
  descriptor.chain.next  = nil
  descriptor.chain.sType = SType_ShaderSourceWGSL
  descriptor.code        = code.toStringView()
  result = ShaderModuleDescriptor(
    nextInChain : cast[ptr ChainedStruct](descriptor), # descriptor is a ref, so we cast that pointer into a ChainedStruct
    label       : label.toStringView(),
    ) #:: ShaderModuleDescriptor( ... )
#___________________
proc wgslRead *(file :string) :ShaderModuleDescriptor=  file.readFile.wgslToDescriptor(label = file)
  ## Reads the given `.wgsl` shader file, and returns a wgpu.ShaderModuleDescriptor for it.

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
  ## Default limits guaranteed to be compatible with GLES-3.1, and D3D11
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
  ## Default limits guaranteed to be compatible with GLES-3.0, and D3D11, and WebGL2
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

