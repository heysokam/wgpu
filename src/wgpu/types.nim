#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
# Nim has modules and overloads.               |
# This means there are no global nameclashes.  |
# As such, all names have been changed:        |
#   from `WGPUSomething` to just `Something`   |
#______________________________________________|


#_______________________________________
# wgpu.h
#___________________
type SType *{.pure, size: sizeof(int32).}= enum
  invalid  = 0x00000000
  surfaceDescriptorFromMetalLayer
  surfaceDescriptorFromWindowsHWND
  surfaceDescriptorFromXlibWindow
  surfaceDescriptorFromCanvasHTMLSelector
  shaderModuleSPIRVDescriptor
  shaderModuleWGSLDescriptor
  primitiveDepthClipControl
  surfaceDescriptorFromWaylandSurface
  surfaceDescriptorFromAndroidNativeWindow
  surfaceDescriptorFromXcbWindow
  renderPassDescriptorMaxDrawCount  = 0x0000000F
  ## wgpu.h Starts at 6 to prevent collisions with webgpu.h STypes
  deviceExtras  = 0x60000001
  adapterExtras
  requiredLimitsExtras
  pipelineLayoutExtras
  shaderModuleGLSLDescriptor
  instanceExtras
  swapchainDescriptorExtras
template supportedLimitsExtras *(_ :typedesc[SType]) :auto=  SType 0x60000003  # repeat of SType.requiredLimitsExtras


# type Feature *{.pure, size: sizeof(int32).}= enum
#   ## WGPUNativeFeature
#   pushConstants  = 0x60000001
#   textureAdapter_SpecificFormatFeatures
#   multiDrawIndirect
#   multiDrawIndirect_count
#   vertexWritableStorage

type LogLevel *{.pure, size: sizeof(int32).}= enum
  off, error, warn, info, debug, trace

type InstanceBackend *{.pure, size: sizeof(int32).}= enum
  Vulkan, Metal, DX12, DX1, GL, BrowserWebGPU
template Primary   *(_ :typedesc[InstanceBackend]) :auto=  {InstanceBackend.Vulkan, InstanceBackend.Metal, InstanceBackend.DX12, InstanceBackend.BrowserWebGPU}
template Secondary *(_ :typedesc[InstanceBackend]) :auto=  {InstanceBackend.GL, InstanceBackend.DX11}
template None      *(_ :typedesc[InstanceBackend]) :auto=  {}
type InstanceBackendFlags * = set[InstanceBackend]

# TODO: Remove, probably. Not used anywhere, because of Nim's enum sets as flags
# type Flags * = uint32

type Dx12Compiler *{.pure, size: sizeof(int32).}= enum
  undefined, fxc, dxc

type CompositeAlphaMode *{.pure, size: sizeof(int32).}= enum
  auto, opaque, preMultiplied, postMultiplied, inherit

type ChainedStruct * = object
  next   *:ptr ChainedStruct
  sType  *:SType
type ChainedStructOut * = object
  next  *:ptr ChainedStructOut
  sType  *:SType


# WebGPU Opaque types
type AdapterImpl             = ptr object
type BindGroupImpl           = ptr object
type BindGroupLayoutImpl     = ptr object
type BufferImpl              = ptr object
type CommandBufferImpl       = ptr object
type CommandEncoderImpl      = ptr object
type ComputePassEncoderImpl  = ptr object
type ComputePipelineImpl     = ptr object
type InstanceImpl            = ptr object
type DeviceImpl              = ptr object
type PipelineLayoutImpl      = ptr object
type QuerySetImpl            = ptr object
type QueueImpl               = ptr object
type RenderBundleImpl        = ptr object
type RenderBundleEncoderImpl = ptr object
type RenderPassEncoderImpl   = ptr object
type RenderPipelineImpl      = ptr object
type SamplerImpl             = ptr object
type ShaderModuleImpl        = ptr object
type SurfaceImpl             = ptr object
type SwapChainImpl           = ptr object
type TextureImpl             = ptr object
type TextureViewImpl         = ptr object

# WebGPU Types
type Adapter             * = AdapterImpl
type BindGroup           * = BindGroupImpl
type BindGroupLayout     * = BindGroupLayoutImpl
type Buffer              * = BufferImpl
type CommandBuffer       * = CommandBufferImpl
type CommandEncoder      * = CommandEncoderImpl
type ComputePassEncoder  * = ComputePassEncoderImpl
type ComputePipeline     * = ComputePipelineImpl
type Device              * = DeviceImpl
type Instance            * = InstanceImpl
type PipelineLayout      * = PipelineLayoutImpl
type QuerySet            * = QuerySetImpl
type Queue               * = QueueImpl
type RenderBundle        * = RenderBundleImpl
type RenderBundleEncoder * = RenderBundleEncoderImpl
type RenderPassEncoder   * = RenderPassEncoderImpl
type RenderPipeline      * = RenderPipelineImpl
type Sampler             * = SamplerImpl
type ShaderModule        * = ShaderModuleImpl
type Surface             * = SurfaceImpl
type SwapChain           * = SwapChainImpl
type Texture             * = TextureImpl
type TextureView         * = TextureViewImpl

type InstanceExtras * = object
  chain               *:ChainedStruct
  backends            *:InstanceBackendFlags
  dx12ShaderCompiler  *:Dx12Compiler
  dxilPath            *:cstring
  dxcPath             *:cstring

type BackendType *{.pure, size: sizeof(int32).}= enum
  null, WebGPU, D3D11, D3D12, Metal, Vulkan, OpenGL, OpenGLES

type AdapterExtras * = object
  chain    *:ChainedStruct
  backend  *:BackendType

type DeviceExtras * = object
  chain      *:ChainedStruct
  tracePath  *:cstring

type RequiredLimitsExtras * = object
  chain                *:ChainedStruct
  maxPushConstantSize  *:uint32

type SupportedLimitsExtras * = object
  chain                *:ChainedStructOut
  maxPushConstantSize  *:uint32

type ShaderStage *{.pure, size: sizeof(int32).}= enum
  vertex, fragment, compute
type ShaderStageFlags * = set[ShaderStage]
template none *(_ :typedesc[ShaderStage]) :auto=  {}
template all  *(_ :typedesc[ShaderStage]) :auto=  { ShaderStage.vertex, ShaderStage.fragment, ShaderStage.compute }

type PushConstantRange * = object
  stages  *:ShaderStageFlags
  start   *:uint32
  `end`   *:uint32

type PipelineLayoutExtras * = object
  chain                   *:ChainedStruct
  pushConstantRangeCount  *:uint32
  pushConstantRanges      *:ptr PushConstantRange

type SubmissionIndex * = uint64 

type WrappedSubmissionIndex * = object
  queue            *:Queue
  submissionIndex  *:SubmissionIndex

type ShaderDefine * = object
  name   *:cstring
  value  *:cstring

type ShaderModuleGLSLDescriptor * = object
  chain        *:ChainedStruct
  stage        *:ShaderStage
  code         *:cstring
  defineCount  *:uint32
  defines      *:ptr ShaderDefine

type StorageReport * = object
  numOccupied  *:csize_t
  numVacant    *:csize_t
  numError     *:csize_t
  elementSize  *:csize_t

type HubReport * = object
  adapters          *:StorageReport
  devices           *:StorageReport
  pipelineLayouts   *:StorageReport
  shaderModules     *:StorageReport
  bindGroupLayouts  *:StorageReport
  bindGroups        *:StorageReport
  commandBuffers    *:StorageReport
  renderBundles     *:StorageReport
  renderPipelines   *:StorageReport
  computePipelines  *:StorageReport
  querySets         *:StorageReport
  buffers           *:StorageReport
  textures          *:StorageReport
  textureViews      *:StorageReport
  samplers          *:StorageReport

type GlobalReport * = object
  surfaces     *:StorageReport
  backendType  *:BackendType
  vulkan       *:HubReport
  metal        *:HubReport
  dx12         *:HubReport
  dx11         *:HubReport
  gl           *:HubReport

type TextureFormat *{.pure, size: sizeof(int32).}= enum
  undefined,
  R8Unorm,        R8Snorm,          R8Uint,     R8Sint,
  R16Uint,        R16Sint,          R16Float,
  RG8Unorm,       RG8Snorm,         RG8Uint,    RG8Sint,
  R32Float,       R32Uint,          R32Sint,
  RG16Uint,       RG16Sint,         RG16Float,
  RGBA8Unorm,     RGBA8UnormSrgb,   RGBA8Snorm, RGBA8Uint, RGBA8Sint, BGRA8Unorm, BGRA8UnormSrgb,
  RGB10A2Unorm,   RG11B10Ufloat,    RGB9E5Ufloat,
  RG32Float,      RG32Uint,         RG32Sint,
  RGBA16Uint,     RGBA16Sint,       RGBA16Float,
  RGBA32Float,    RGBA32Uint,       RGBA32Sint,
  Stencil8,
  Depth16Unorm,   Depth24Plus,      Depth24PlusStencil8, Depth32Float,     Depth32FloatStencil8,
  BC1RGBAUnorm,   BC1RGBAUnormSrgb, BC2RGBAUnorm,        BC2RGBAUnormSrgb, BC3RGBAUnorm, BC3RGBAUnormSrgb,
  BC4RUnorm,      BC4RSnorm,
  BC5RGUnorm,     BC5RGSnorm,
  BC6HRGBUfloat,  BC6HRGBFloat,
  BC7RGBAUnorm,   BC7RGBAUnormSrgb,
  ETC2RGB8Unorm,  ETC2RGB8UnormSrgb,  ETC2RGB8A1Unorm, ETC2RGB8A1UnormSrgb, ETC2RGBA8Unorm, ETC2RGBA8UnormSrgb,
  EACR11Unorm,    EACR11Snorm,        EACRG11Unorm,    EACRG11Snorm,
  ASTC4x4Unorm,   ASTC4x4UnormSrgb,   ASTC5x4Unorm,    ASTC5x4UnormSrgb,    ASTC5x5Unorm,   ASTC5x5UnormSrgb,
  ASTC6x5Unorm,   ASTC6x5UnormSrgb,   ASTC6x6Unorm,    ASTC6x6UnormSrgb,
  ASTC8x5Unorm,   ASTC8x5UnormSrgb,   ASTC8x6Unorm,    ASTC8x6UnormSrgb,    ASTC8x8Unorm,   ASTC8x8UnormSrgb,
  ASTC10x5Unorm,  ASTC10x5UnormSrgb,  ASTC10x6Unorm,   ASTC10x6UnormSrgb,   ASTC10x8Unorm,  ASTC10x8UnormSrgb, ASTC10x10Unorm, ASTC10x10UnormSrgb,
  ASTC12x10Unorm, ASTC12x10UnormSrgb, ASTC12x12Unorm,  ASTC12x12UnormSrgb,

type PresentMode *{.pure, size: sizeof(int32).}= enum
  immediate, mailbox, fifo

type SurfaceCapabilities * = object
  formatCount       *:csize_t
  formats           *:ptr TextureFormat
  presentModeCount  *:csize_t
  presentModes      *:ptr PresentMode
  alphaModeCount    *:csize_t
  alphaModes        *:ptr CompositeAlphaMode

type SwapChainDescriptorExtras * = object
  chain            *:ChainedStruct
  alphaMode        *:CompositeAlphaMode
  viewFormatCount  *:csize_t
  viewFormats      *:ptr TextureFormat

type LogCallback * = proc (level :LogLevel; message :cstring; userdata :pointer) {.cdecl.}


#_______________________________________
# webgpu.h
#___________________
# Limits
type Limits *{.bycopy.}= object
  maxTextureDimension1D                      *:uint32
  maxTextureDimension2D                      *:uint32
  maxTextureDimension3D                      *:uint32
  maxTextureArrayLayers                      *:uint32
  maxBindGroups                              *:uint32
  maxBindingsPerBindGroup                    *:uint32
  maxDynamicUniformBuffersPerPipelineLayout  *:uint32
  maxDynamicStorageBuffersPerPipelineLayout  *:uint32
  maxSampledTexturesPerShaderStage           *:uint32
  maxSamplersPerShaderStage                  *:uint32
  maxStorageBuffersPerShaderStage            *:uint32
  maxStorageTexturesPerShaderStage           *:uint32
  maxUniformBuffersPerShaderStage            *:uint32
  maxUniformBufferBindingSize                *:uint64
  maxStorageBufferBindingSize                *:uint64
  minUniformBufferOffsetAlignment            *:uint32
  minStorageBufferOffsetAlignment            *:uint32
  maxVertexBuffers                           *:uint32
  maxBufferSize                              *:uint64
  maxVertexAttributes                        *:uint32
  maxVertexBufferArrayStride                 *:uint32
  maxInterStageShaderComponents              *:uint32
  maxInterStageShaderVariables               *:uint32
  maxColorAttachments                        *:uint32
  maxColorAttachmentBytesPerSample           *:uint32
  maxComputeWorkgroupStorageSize             *:uint32
  maxComputeInvocationsPerWorkgroup          *:uint32
  maxComputeWorkgroupSizeX                   *:uint32
  maxComputeWorkgroupSizeY                   *:uint32
  maxComputeWorkgroupSizeZ                   *:uint32
  maxComputeWorkgroupsPerDimension           *:uint32

type RequiredLimits *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct
  limits       *:Limits

type SupportedLimits *{.bycopy.}= object
  nextInChain  *:ptr ChainedStructOut
  limits       *:Limits


#___________________
# Instance
type InstanceDescriptor *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct


#___________________
# Surface
type SurfaceDescriptor *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct
  label        *:cstring

type SurfaceDescriptorFromXlibWindow *{.bycopy.}= object
  chain    *:ChainedStruct
  display  *:pointer
  window   *:uint32

type SurfaceDescriptorFromMetalLayer *{.bycopy.}= object
  chain  *:ChainedStruct
  layer  *:pointer

#___________________
# Adapter
type RequestAdapterStatus *{.pure, size: sizeof(int32).}= enum
  success, unavailable, error, unknown

type PowerPreference *{.pure, size: sizeof(int32).}= enum
  undefined, lowPower, highPerformance

type RequestAdapterOptions *{.bycopy.}= object
  nextInChain           *:ptr ChainedStruct
  compatibleSurface     *:Surface
  powerPreference       *:PowerPreference
  forceFallbackAdapter  *:bool

type Feature *{.pure, size: sizeof(int32).}= enum
  undefined = 0x00000000
  depthClipControl
  depth32FloatStencil8
  timestampQuery
  pipelineStatisticsQuery
  textureCompressionBC
  textureCompressionETC2
  textureCompressionASTC
  indirectFirstInstance
  shaderF16
  RG11B10UfloatRenderable  ## not available in wgpu-core
  BGRA8UnormStorage        ## not available in wgpu-core
  ## wgpu-rs only features
  pushConstants = 0x6000_0001
  textureAdapter_SpecificFormatFeatures
  multiDrawIndirect
  multiDrawIndirect_count
  vertexWritableStorage

#___________________
# Queue
type QueueWorkDoneStatus *{.pure, size: sizeof(int32).}= enum
  success, error, unknown, deviceLost

type QueueDescriptor *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct
  label        *:cstring

#___________________
# Device
type RequestDeviceStatus *{.pure, size: sizeof(int32).}= enum
  success, error, unknown

type DeviceDescriptor *{.bycopy.}= object
  nextInChain            *:ptr ChainedStruct
  label                  *:cstring
  requiredFeaturesCount  *:uint32
  requiredFeatures       *:ptr Feature
  requiredLimits         *:ptr RequiredLimits
  defaultQueue           *:QueueDescriptor

type ErrorType *{.pure, size: sizeof(int32).}= enum
  noError, validation, outOfMemory, internal, unknown, deviceLost

type DeviceLostReason *{.pure, size: sizeof(int32).}= enum
  undefined, destroyed

#___________________
# Shader Module
type ShaderModuleWGSLDescriptor *{.bycopy.}= object
  chain  *:ChainedStruct
  code   *:cstring

type ShaderModuleCompilationHint *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct
  entryPoint   *:cstring
  layout       *:PipelineLayout

type ShaderModuleDescriptor *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct
  label        *:cstring
  hintCount    *:uint32
  hints        *:ptr ShaderModuleCompilationHint

#___________________
# Pipeline
type ConstantEntry *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct
  key          *:cstring
  value        *:cdouble

type VertexStepMode *{.pure, size: sizeof(int32).}= enum
  ## Describes how vertex data in a buffer is stepped forwards to the next entry. eg: vertex = per Vertex
  vertex, instance, vertexBufferNotUsed

type VertexFormat *{.pure}= enum
  undefined = 0x00000000
  uint8x2,   uint8x4
  sint8x2,   sint8x4
  unorm8x2,  unorm8x4
  snorm8x2,  snorm8x4
  uint16x2,  uint16x4
  sint16x2,  sint16x4
  unorm16x2, unorm16x4
  snorm16x2, snorm16x4
  float16x2, float16x4
  Float32,   float32x2, float32x3, float32x4
  Uint32,    uint32x2,  uint32x3,  uint32x4
  sint32,    sint32x2,  sint32x3,  sint32x4

type VertexAttribute *{.bycopy.} = object
  format          *:VertexFormat  ## Format of the input
  offset          *:uint64        ## Byte offset of the start of the input
  shaderLocation  *:uint32        ## Location for this input. Must match the location in the shader.


type VertexBufferLayout *{.bycopy.}= object
  arrayStride     *:uint64               ## The stride, in bytes, between elements of this buffer.
  stepMode        *:VertexStepMode       ## How often this vertex buffer is “stepped” forward.
  attributeCount  *:uint32               ## Number of attributes in the list
  attributes      *:ptr VertexAttribute  ## List of attributes that comprise a single vertex

type VertexState *{.bycopy.}= object
  nextInChain    *:ptr ChainedStruct
  module         *:ShaderModule
  entryPoint     *:cstring
  constantCount  *:uint32
  constants      *:ptr ConstantEntry
  bufferCount    *:uint32
  buffers        *:ptr VertexBufferLayout

type PrimitiveTopology *{.pure, size: sizeof(int32).}= enum
  pointList, lineList, lineStrip, triangleList, triangleStrip

type FrontFace *{.pure, size: sizeof(int32).}= enum
  ccw, cw

type CullMode *{.pure, size: sizeof(int32).}= enum
  none, front, back

type IndexFormat *{.pure, size: sizeof(int32).}= enum
  undefined, Uint16, Uint32

type PrimitiveState *{.bycopy.}= object
  nextInChain       *:ptr ChainedStruct
  topology          *:PrimitiveTopology
  stripIndexFormat  *:IndexFormat
  frontFace         *:FrontFace
  cullMode          *:CullMode

type CompareFunction *{.pure, size: sizeof(int32).}= enum
  undefined
  never
  less,    lessEqual
  greater, greaterEqual
  equal,   notEqual
  always

type StencilOperation *{.pure, size: sizeof(int32).}= enum
  keep, zero, replace, invert
  incrementClamp, decrementClamp
  incrementWrap,  decrementWrap

type StencilFaceState *{.bycopy.}= object
  compare      *:CompareFunction
  failOp       *:StencilOperation
  depthFailOp  *:StencilOperation
  passOp       *:StencilOperation

type DepthStencilState *{.bycopy.}= object
  nextInChain          *:ptr ChainedStruct
  format               *:TextureFormat
  depthWriteEnabled    *:bool
  depthCompare         *:CompareFunction
  stencilFront         *:StencilFaceState
  stencilBack          *:StencilFaceState
  stencilReadMask      *:uint32
  stencilWriteMask     *:uint32
  depthBias            *:int32
  depthBiasSlopeScale  *:cfloat
  depthBiasClamp       *:cfloat

type MultisampleState *{.bycopy.}= object
  nextInChain             *: ptr ChainedStruct
  count                   *: uint32
  mask                    *: uint32
  alphaToCoverageEnabled  *: bool

type BlendOperation *{.pure, size: sizeof(int32).}= enum
  Add, subtract, reverseSubtract
  Min, Max

type BlendFactor *{.pure, size: sizeof(int32).}= enum
  zero,        one,         src,
  oneMinusSrc, srcAlpha,    oneMinusSrcAlpha
  dst,         oneMinusDst, dstAlpha, oneMinusDstAlpha
  srcAlphaSaturated
  constant,    oneMinusConstant

type BlendComponent *{.bycopy.}= object
  operation  *:BlendOperation
  srcFactor  *:BlendFactor
  dstFactor  *:BlendFactor

type BlendState *{.bycopy.}= object
  color  *:BlendComponent
  alpha  *:BlendComponent

type ColorWriteMask *{.pure, size: sizeof(int32).}= enum
  red, green, blue, alpha 
type ColorWriteMaskFlags * = set[ColorWriteMask]
template none *(_ :typedesc[ColorWriteMask]) :auto=  {}
template all  *(_ :typedesc[ColorWriteMask]) :auto=  {ColorWriteMask.red, ColorWriteMask.green, ColorWriteMask.blue, ColorWriteMask.alpha}

type ColorTargetState *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct
  format       *:TextureFormat
  blend        *:ptr BlendState
  writeMask    *:ColorWriteMaskFlags

type FragmentState *{.bycopy.}= object
  nextInChain   *:ptr ChainedStruct
  module        *:ShaderModule
  entryPoint    *:cstring
  constantCount *:uint32
  constants     *:ptr ConstantEntry
  targetCount   *:uint32
  targets       *:ptr ColorTargetState

type RenderPipelineDescriptor *{.bycopy.}= object
  nextInChain   *:ptr ChainedStruct
  label         *:cstring
  layout        *:PipelineLayout
  vertex        *:VertexState
  primitive     *:PrimitiveState
  depthStencil  *:ptr DepthStencilState
  multisample   *:MultisampleState
  fragment      *:ptr FragmentState

type CreatePipelineAsyncStatus *{.pure, size: sizeof(int32).}= enum
  success
  validationError, internalError
  deviceLost,      deviceDestroyed
  unknown

type PipelineLayoutDescriptor *{.bycopy.}= object
  nextInChain          *:ptr ChainedStruct
  label                *:cstring
  bindGroupLayoutCount *:uint32
  bindGroupLayouts     *:ptr BindGroupLayout

#___________________
# SwapChain
type TextureUsage *{.pure, size: sizeof(int32).}= enum
  copySrc, copyDst, textureBinding, storageBinding, renderAttachment
type TextureUsageFlags * = set[TextureUsage]
template none *(_ :typedesc[TextureUsage]) :auto=  {}

type SwapChainDescriptor *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct
  label        *:cstring
  usage        *:TextureUsageFlags
  format       *:TextureFormat
  width        *:uint32
  height       *:uint32
  presentMode  *:PresentMode

#___________________
# Command Encoder
type CommandEncoderDescriptor *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct
  label        *:cstring

#___________________
# Command Buffer
type CommandBufferDescriptor *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct
  label        *:cstring

#___________________
# RenderPass
type LoadOp  *{.pure, size: sizeof(int32).}= enum
  undefined, clear, load
type StoreOp *{.pure, size: sizeof(int32).}= enum
  undefined, store, Discard

type Color *{.bycopy.}= object  # Equivalent to treeform/chroma/ColorRGBA?
  r  *:float64
  g  *:float64
  b  *:float64
  a  *:float64

type RenderPassColorAttachment *{.bycopy.}= object
  view           *:TextureView  ## The view to use as an attachment.
  resolveTarget  *:TextureView  ## The view that will receive the resolved output if multisampling is used.
  loadOp         *:LoadOp       ## Load operations performed on this color attachment
  storeOp        *:StoreOp      ## Store operations performed on this color attachment
  clearValue     *:Color        ## Color used for load/store operations.

type RenderPassDepthStencilAttachment *{.bycopy.}= object
  view               *:TextureView
  depthLoadOp        *:LoadOp
  depthStoreOp       *:StoreOp
  depthClearValue    *:float32
  depthReadOnly      *:bool
  stencilLoadOp      *:LoadOp
  stencilStoreOp     *:StoreOp
  stencilClearValue  *:uint32
  stencilReadOnly    *:bool

type RenderPassTimestampLocation *{.pure, size: sizeof(int32).}= enum
  beginning, End

type RenderPassTimestampWrite *{.bycopy.}= object
  querySet    *:QuerySet
  queryIndex  *:uint32
  location    *:RenderPassTimestampLocation

type RenderPassDescriptor *{.bycopy.}= object
  nextInChain             *:ptr ChainedStruct
  label                   *:cstring
  colorAttachmentCount    *:uint32
  colorAttachments        *:ptr RenderPassColorAttachment
  depthStencilAttachment  *:ptr RenderPassDepthStencilAttachment
  occlusionQuerySet       *:QuerySet
  timestampWriteCount     *:uint32
  timestampWrites         *:ptr RenderPassTimestampWrite

# Buffer Objects
type BufferUsage *{.pure, size: sizeof(int32).}= enum
  mapRead,  mapWrite
  copySrc,  copyDst
  index,    vertex
  uniform,  storage
  indirect, queryResolve
type BufferUsageFlags * = set[BufferUsage]
template none *(_ :typedesc[BufferUsage]) :auto=  {}
# template all  *(_ :typedesc[BufferUsage]) :auto=  {
#   BufferUsage.mapRead,  BufferUsage.mapWrite,
#   BufferUsage.copySrc,  BufferUsage.copyDst,
#   BufferUsage.index,    BufferUsage.vertex,
#   BufferUsage.uniform,  BufferUsage.storage,
#   BufferUsage.indirect, BufferUsage.queryResolve,
#   } # TODO: Might not be needed

type BufferDescriptor *{.bycopy.}= object
  nextInChain       *:ptr ChainedStruct
  label             *:cstring
  usage             *:BufferUsageFlags
  size              *:uint64
  mappedAtCreation  *:bool

type BufferMapAsyncStatus *{.pure, size: sizeof(int32).}= enum
  success, error, unknown, seviceLost,
  destroyedBeforeCallback, unmappedBeforeCallback,

type MapMode *{.pure, size: sizeof(int32).}= enum
  read, write
type MapModeFlags * = set[MapMode]
template none *(_ :typedesc[MapMode]) :auto=  {}


#____________________________________________________
type TextureDimension *{.pure, size: sizeof(int32).}= enum
  dim1D, dim2D, dim3D  # Cannot start with number :_(

# BindGroups
type BindGroupEntry *{.bycopy.}= object
  nextInChain *:ptr ChainedStruct
  binding     *:uint32
  buffer      *:Buffer
  offset      *:uint64
  size        *:uint64
  sampler     *:Sampler
  textureView *:TextureView

type BindGroupDescriptor *{.bycopy.}= object
  nextInChain *:ptr ChainedStruct
  label       *:cstring
  layout      *:BindGroupLayout
  entryCount  *:uint32
  entries     *:ptr BindGroupEntry

type BufferBindingType *{.pure, size: sizeof(int32).}= enum
  undefined, uniform, storage, readOnlyStorage

type BufferBindingLayout* {.bycopy.} = object
  nextInChain      *:ptr ChainedStruct
  typ              *:BufferBindingType
  hasDynamicOffset *:bool
  minBindingSize   *:uint64

type SamplerBindingType *{.pure, size: sizeof(int32).}= enum
  undefined, filtering, nonFiltering, comparison

type SamplerBindingLayout *{.bycopy.}= object
  nextInChain *:ptr ChainedStruct
  typ         *:SamplerBindingType

type TextureSampleType *{.pure, size: sizeof(int32).}= enum
  undefined, Float, unfilterableFloat, depth, sint, Uint

type TextureViewDimension *{.pure, size: sizeof(int32).}= enum
  undefined, dim1D, dim2D, array2D, cube, arrayCube, dim3D

type TextureBindingLayout *{.bycopy.}= object
  nextInChain   *:ptr ChainedStruct
  sampleType    *:TextureSampleType
  viewDimension *:TextureViewDimension
  multisampled  *:bool

type StorageTextureAccess *{.pure, size: sizeof(int32).}= enum
  undefined, writeOnly

type StorageTextureBindingLayout *{.bycopy.}= object
  nextInChain   *:ptr ChainedStruct
  access        *:StorageTextureAccess
  format        *:TextureFormat
  viewDimension *:TextureViewDimension

type BindGroupLayoutEntry *{.bycopy.}= object
  nextInChain    *:ptr ChainedStruct
  binding        *:uint32
  visibility     *:ShaderStageFlags
  buffer         *:BufferBindingLayout
  sampler        *:SamplerBindingLayout
  texture        *:TextureBindingLayout
  storageTexture *:StorageTextureBindingLayout

type BindGroupLayoutDescriptor *{.bycopy.}= object
  nextInChain *:ptr ChainedStruct
  label       *:cstring
  entryCount  *:uint32
  entries     *:ptr BindGroupLayoutEntry

# Compute Pass
type ComputePassTimestampLocation *{.pure, size: sizeof(int32).}= enum
  beginning, End

type ComputePassTimestampWrite *{.bycopy.}= object
  querySet   *:QuerySet
  queryIndex *:uint32
  location   *:ComputePassTimestampLocation

type ComputePassDescriptor *{.bycopy.}= object
  nextInChain         *:ptr ChainedStruct
  label               *:cstring
  timestampWriteCount *:uint32
  timestampWrites     *:ptr ComputePassTimestampWrite

#____________________________________________________
# Textures and Sampler
type Extent3D *{.bycopy.}= object
  width              *:uint32
  height             *:uint32
  depthOrArrayLayers *:uint32

type Origin3D *{.bycopy.}= object
  x  *:uint32
  y  *:uint32
  z  *:uint32

type TextureDescriptor *{.bycopy.}= object
  nextInChain     *:ptr ChainedStruct
  label           *:cstring
  usage           *:TextureUsageFlags
  dimension       *:TextureDimension
  size            *:Extent3D
  format          *:TextureFormat
  mipLevelCount   *:uint32
  sampleCount     *:uint32
  viewFormatCount *:uint32
  viewFormats     *:ptr TextureFormat

type TextureAspect *{.pure, size: sizeof(int32).}= enum
  all, stencilOnly, depthOnly

type TextureViewDescriptor *{.bycopy.}= object
  nextInChain     *:ptr ChainedStruct
  label           *:cstring
  format          *:TextureFormat
  dimension       *:TextureViewDimension
  baseMipLevel    *:uint32
  mipLevelCount   *:uint32
  baseArrayLayer  *:uint32
  arrayLayerCount *:uint32
  aspect          *:TextureAspect

type ImageCopyTexture* {.bycopy.} = object
  nextInChain *:ptr ChainedStruct
  texture     *:Texture
  mipLevel    *:uint32
  origin      *:Origin3D
  aspect      *:TextureAspect

type TextureDataLayout *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct
  offset       *:uint64
  bytesPerRow  *:uint32
  rowsPerImage *:uint32

type AddressMode *{.pure, size: sizeof(int32).}= enum
  repeat, mirrorRepeat, clampToEdge

type FilterMode *{.pure, size: sizeof(int32).}= enum
  nearest, linear

type MipmapFilterMode *{.pure, size: sizeof(int32).}= enum
  nearest, linear

type SamplerDescriptor *{.bycopy.}= object
  nextInChain   *:ptr ChainedStruct
  label         *:cstring
  addressModeU  *:AddressMode
  addressModeV  *:AddressMode
  addressModeW  *:AddressMode
  magFilter     *:FilterMode
  minFilter     *:FilterMode
  mipmapFilter  *:MipmapFilterMode
  lodMinClamp   *:cfloat
  lodMaxClamp   *:cfloat
  compare       *:CompareFunction
  maxAnisotropy *:uint16





#____________________________________________________
# unimplemented.rs Requirements
type ErrorFilter *{.pure, size: sizeof(int32).}= enum
  validation, outOfMemory, internal

type ProgrammableStageDescriptor *{.bycopy.}= object
  nextInChain   *:ptr ChainedStruct
  module        *:ShaderModule
  entryPoint    *:cstring
  constantCount *:uint32
  constants     *:ptr ConstantEntry

type ComputePipelineDescriptor *{.bycopy.}= object
  nextInChain *:ptr ChainedStruct
  label       *:cstring
  layout      *:PipelineLayout
  compute     *:ProgrammableStageDescriptor

type QueryType *{.pure, size: sizeof(int32).}= enum
  occlusion, pipelineStatistics, timestamp

type CompilationInfoRequestStatus *{.pure, size: sizeof(int32).}= enum
  success, error, deviceLost, unknown

type CompilationMessageType *{.pure, size: sizeof(int32).}= enum
  error, warning, info

type CompilationMessage *{.bycopy.}= object
  nextInChain *:ptr ChainedStruct
  message     *:cstring
  `type`      *:CompilationMessageType
  lineNum     *:uint64
  linePos     *:uint64
  offset      *:uint64
  length      *:uint64

type CompilationInfo *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct
  messageCount *:uint
  messages     *:ptr CompilationMessage

