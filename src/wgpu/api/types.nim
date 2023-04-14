#:________________________________________________________
#  wgpu-nim  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:________________________________________________________


#_______________________________________
# wgpu.h
#___________________
type SType *{.pure.}= enum
  ## WGPUNativeSType
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
  force32  = 0x7FFFFFFF
template supportedLimitsExtras *(_ :typedesc[SType]) :auto=  SType 0x60000003  # repeat of SType.requiredLimitsExtras


# type Feature *{.pure.}= enum
#   ## WGPUNativeFeature
#   pushConstants  = 0x60000001
#   textureAdapter_SpecificFormatFeatures
#   multiDrawIndirect
#   multiDrawIndirect_count
#   vertexWritableStorage

type LogLevel *{.pure.}= enum  off, error, warn, info, debug, trace, force32 = 0x7FFFFFFF
  ## WGPULogLevel

type InstanceBackend *{.pure.}= enum  None, Vulkan, Metal, DX12, DX1, GL, BrowserWebGPU, force32 = 0x7FFFFFFF
  ## WGPUInstanceBackend
template Primary   *(_ :typedesc[InstanceBackend]) :auto=  {InstanceBackend.Vulkan, InstanceBackend.Metal, InstanceBackend.DX12, InstanceBackend.BrowserWebGPU}
template Secondary *(_ :typedesc[InstanceBackend]) :auto=  {InstanceBackend.GL, InstanceBackend.DX11}

type Flags * = uint32
  ## WGPUFlags
type InstanceBackendFlags * = Flags
  ## WGPUInstanceBackendFlags
type ShaderStageFlags * = Flags
  ## WGPUShaderStageFlags

type Dx12Compiler *{.pure.}= enum  undefined, fxc, dxc, force32 = 0x7FFFFFFF
  ## WGPUDx12Compiler

type CompositeAlphaMode *{.pure.}= enum  auto, opaque, preMultiplied, postMultiplied, inherit, force32 = 0x7FFFFFFF
  ## WGPUCompositeAlphaMode

type ChainedStruct * = object
  ## WGPUChainedStruct
  next   *:ptr ChainedStruct
  sType  *:SType
type ChainedStructOut * = object
  ## WGPUChainedStructOut
  next  *:ptr ChainedStructOut
  sType  *:SType


# WebGPU Opaque types
type AdapterImpl             = ptr object  ## WGPUAdapterImpl
type BindGroupImpl           = ptr object  ## WGPUBindGroupImpl
type BindGroupLayoutImpl     = ptr object  ## WGPUBindGroupLayoutImpl
type BufferImpl              = ptr object  ## WGPUBufferImpl
type CommandBufferImpl       = ptr object  ## WGPUCommandBufferImpl
type CommandEncoderImpl      = ptr object  ## WGPUCommandEncoderImpl
type ComputePassEncoderImpl  = ptr object  ## WGPUComputePassEncoderImpl
type ComputePipelineImpl     = ptr object  ## WGPUComputePipelineImpl
type InstanceImpl            = ptr object  ## WGPUInstanceImpl
type DeviceImpl              = ptr object  ## WGPUDeviceImpl
type PipelineLayoutImpl      = ptr object  ## WGPUPipelineLayoutImpl
type QuerySetImpl            = ptr object  ## WGPUQuerySetImpl
type QueueImpl               = ptr object  ## WGPUQueueImpl
type RenderBundleImpl        = ptr object  ## WGPURenderBundleImpl
type RenderBundleEncoderImpl = ptr object  ## WGPURenderBundleEncoderImpl
type RenderPassEncoderImpl   = ptr object  ## WGPURenderPassEncoderImpl
type RenderPipelineImpl      = ptr object  ## WGPURenderPipelineImpl
type SamplerImpl             = ptr object  ## WGPUSamplerImpl
type ShaderModuleImpl        = ptr object  ## WGPUShaderModuleImpl
type SurfaceImpl             = ptr object  ## WGPUSurfaceImpl
type SwapChainImpl           = ptr object  ## WGPUSwapChainImpl
type TextureImpl             = ptr object  ## WGPUTextureImpl
type TextureViewImpl         = ptr object  ## WGPUTextureViewImpl

# WebGPU Types
type Adapter             * = AdapterImpl             ## WGPUAdapter
type BindGroup           * = BindGroupImpl           ## WGPUBindGroup
type BindGroupLayout     * = BindGroupLayoutImpl     ## WGPUBindGroupLayout
type Buffer              * = BufferImpl              ## WGPUBuffer
type CommandBuffer       * = CommandBufferImpl       ## WGPUCommandBuffer
type CommandEncoder      * = CommandEncoderImpl      ## WGPUCommandEncoder
type ComputePassEncoder  * = ComputePassEncoderImpl  ## WGPUComputePassEncoder
type ComputePipeline     * = ComputePipelineImpl     ## WGPUComputePipeline
type Device              * = DeviceImpl              ## WGPUDevice
type Instance            * = InstanceImpl            ## WGPUInstance
type PipelineLayout      * = PipelineLayoutImpl      ## WGPUPipelineLayout
type QuerySet            * = QuerySetImpl            ## WGPUQuerySet
type Queue               * = QueueImpl               ## WGPUQueue
type RenderBundle        * = RenderBundleImpl        ## WGPURenderBundle
type RenderBundleEncoder * = RenderBundleEncoderImpl ## WGPURenderBundleEncoder
type RenderPassEncoder   * = RenderPassEncoderImpl   ## WGPURenderPassEncoder
type RenderPipeline      * = RenderPipelineImpl      ## WGPURenderPipeline
type Sampler             * = SamplerImpl             ## WGPUSampler
type ShaderModule        * = ShaderModuleImpl        ## WGPUShaderModule
type Surface             * = SurfaceImpl             ## WGPUSurface
type SwapChain           * = SwapChainImpl           ## WGPUSwapChain
type Texture             * = TextureImpl             ## WGPUTexture
type TextureView         * = TextureViewImpl         ## WGPUTextureView

type InstanceExtras * = object
  ## WGPUInstanceExtras
  chain               *:ChainedStruct
  backends            *:InstanceBackendFlags
  dx12ShaderCompiler  *:Dx12Compiler
  dxilPath            *:cstring
  dxcPath             *:cstring

type BackendType *{.pure.}= enum  null, WebGPU, D3D11, D3D12, Metal, Vulkan, OpenGL, OpenGLES, force32 = 0x7FFFFFFF
  ## WGPUBackendType

type AdapterExtras * = object
  ## WGPUAdapterExtras
  chain    *:ChainedStruct
  backend  *:BackendType

type DeviceExtras * = object
  ## WGPUDeviceExtras
  chain      *:ChainedStruct
  tracePath  *:cstring

type RequiredLimitsExtras * = object
  ## WGPURequiredLimitsExtras
  chain                *:ChainedStruct
  maxPushConstantSize  *:uint32

type SupportedLimitsExtras * = object
  ## WGPUSupportedLimitsExtras
  chain                *:ChainedStructOut
  maxPushConstantSize  *:uint32

type PushConstantRange * = object
  ## WGPUPushConstantRange
  stages  *:ShaderStageFlags
  start   *:uint32
  `end`   *:uint32

type PipelineLayoutExtras * = object
  ## WGPUPipelineLayoutExtras
  chain                   *:ChainedStruct
  pushConstantRangeCount  *:uint32
  pushConstantRanges      *:ptr PushConstantRange

type SubmissionIndex * = uint64 
  ## WGPUSubmissionIndex

type WrappedSubmissionIndex * = object
  ## WGPUWrappedSubmissionIndex
  queue            *:Queue
  submissionIndex  *:SubmissionIndex

type ShaderDefine * = object
  ## WGPUShaderDefine
  name   *:cstring
  value  *:cstring
type ShaderStage {.pure.}= enum  none, vertex, fragment, compute, force32 = 0x7FFFFFFF
  ## WGPUShaderStage
type ShaderModuleGLSLDescriptor * = object
  ## WGPUShaderModuleGLSLDescriptor
  chain        *:ChainedStruct
  stage        *:ShaderStage
  code         *:cstring
  defineCount  *:uint32
  defines      *:ptr ShaderDefine

type StorageReport * = object
  ## WGPUStorageReport
  numOccupied  *:csize_t
  numVacant    *:csize_t
  numError     *:csize_t
  elementSize  *:csize_t

type HubReport * = object
  ## WGPUHubReport
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
  ## WGPUGlobalReport
  surfaces     *:StorageReport
  backendType  *:BackendType
  vulkan       *:HubReport
  metal        *:HubReport
  dx12         *:HubReport
  dx11         *:HubReport
  gl           *:HubReport

type TextureFormat *{.pure.}= enum
  ## WGPUTextureFormat
  Undefined,
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
  force32 = 0x7FFFFFFF

type PresentMode *{.pure.}= enum  immediate, mailbox, fifo, force32 = 0x7FFFFFFF
  ## WGPUPresentMode;

type SurfaceCapabilities * = object
  ## WGPUSurfaceCapabilities
  formatCount       *:csize_t
  formats           *:ptr TextureFormat
  presentModeCount  *:csize_t
  presentModes      *:ptr PresentMode
  alphaModeCount    *:csize_t
  alphaModes        *:ptr CompositeAlphaMode

type SwapChainDescriptorExtras * = object
  ## WGPUSwapChainDescriptorExtras
  chain            *:ChainedStruct
  alphaMode        *:CompositeAlphaMode
  viewFormatCount  *:csize_t
  viewFormats      *:ptr TextureFormat

type LogCallback * = proc (level :LogLevel; message :cstring; userdata :pointer) {.cdecl.}


#_______________________________________
# webgpu.h
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

#___________________
# Adapter
type RequestAdapterStatus *{.pure.}= enum
  success = 0x00000000
  unavailable
  error
  unknown
  force32 = 0x7FFFFFFF

type PowerPreference *{.pure.}= enum
  undefined = 0x00000000
  lowPower
  highPerformance
  force32 = 0x7FFFFFFF

type RequestAdapterOptions *{.bycopy.}= object
  nextInChain           *:ptr ChainedStruct
  compatibleSurface     *:Surface
  powerPreference       *:PowerPreference
  forceFallbackAdapter  *:bool

type Feature *{.pure.}= enum
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
  force32 = 0x7FFFFFFF

#___________________
# Device
type RequestDeviceStatus *{.pure.}= enum
  success = 0x00000000
  error
  unknown
  force32 = 0x7FFFFFFF

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
  maxComputeWorkgroupStorageSize             *:uint32
  maxComputeInvocationsPerWorkgroup          *:uint32
  maxComputeWorkgroupSizeX                   *:uint32
  maxComputeWorkgroupSizeY                   *:uint32
  maxComputeWorkgroupSizeZ                   *:uint32
  maxComputeWorkgroupsPerDimension           *:uint32

type RequiredLimits *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct
  limits       *:Limits

type QueueDescriptor *{.bycopy.}= object
  nextInChain  *:ptr ChainedStruct
  label        *:cstring

type DeviceDescriptor *{.bycopy.}= object
  nextInChain            *:ptr ChainedStruct
  label                  *:cstring
  requiredFeaturesCount  *:uint32
  requiredFeatures       *:ptr Feature
  requiredLimits         *:ptr RequiredLimits
  defaultQueue           *:QueueDescriptor

type ErrorType *{.pure.}= enum
  noError = 0x00000000
  validation
  outOfMemory
  internal
  unknown
  deviceLost
  force32 = 0x7FFFFFFF

type DeviceLostReason *{.pure.}= enum
  undefined = 0x00000000
  destroyed
  force32   = 0x7FFFFFFF

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
type ConstantEntry* {.bycopy.} = object
  nextInChain  *:ptr ChainedStruct
  key          *:cstring
  value        *:cdouble

type VertexStepMode *{.pure.}= enum
  vertex = 0x00000000,
  instance
  vertexBufferNotUsed
  force32 = 0x7FFFFFFF

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
  force32 = 0x7FFFFFFF

type VertexAttribute *{.bycopy.} = object
  format          *:VertexFormat
  offset          *:uint64
  shaderLocation  *:uint32

type VertexBufferLayout* {.bycopy.} = object
  arrayStride     *:uint64
  stepMode        *:VertexStepMode
  attributeCount  *:uint32
  attributes      *:ptr VertexAttribute

type VertexState *{.bycopy.}= object
  nextInChain    *:ptr ChainedStruct
  module         *:ShaderModule
  entryPoint     *:cstring
  constantCount  *:uint32
  constants      *:ptr ConstantEntry
  bufferCount    *:uint32
  buffers        *:ptr VertexBufferLayout

type PrimitiveTopology *{.pure.}= enum
  pointList = 0x00000000
  lineList
  lineStrip
  triangleList
  triangleStrip
  force32 = 0x7FFFFFFF
type FrontFace *{.pure.}= enum
  ccw = 0x00000000
  cw
  force32 = 0x7FFFFFFF

type CullMode *{.pure.}= enum
  none = 0x00000000
  front
  back
  force32 = 0x7FFFFFFF

type IndexFormat *{.pure.}= enum
  undefined = 0x00000000
  Uint16
  Uint32
  force32 = 0x7FFFFFFF

type PrimitiveState *{.bycopy.}= object
  nextInChain       *:ptr ChainedStruct
  topology          *:PrimitiveTopology
  stripIndexFormat  *:IndexFormat
  frontFace         *:FrontFace
  cullMode          *:CullMode

type CompareFunction *{.pure.}= enum
  undefined = 0x00000000,
  never
  less
  lessEqual
  greater
  greaterEqual
  equal
  notEqual
  always
  force32 = 0x7FFFFFFF

type StencilOperation *{.pure.}= enum
  keep = 0x00000000
  zero
  replace
  invert
  incrementClamp
  decrementClamp
  incrementWrap
  decrementWrap
  force32 = 0x7FFFFFFF

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

type BlendOperation *{.pure.}= enum
  Add = 0x00000000
  subtract
  reverseSubtract
  Min
  Max
  force32 = 0x7FFFFFFF

type BlendFactor *{.pure.}= enum
  zero = 0x00000000
  one
  src
  oneMinusSrc
  srcAlpha
  oneMinusSrcAlpha
  dst
  oneMinusDst
  dstAlpha
  oneMinusDstAlpha
  srcAlphaSaturated
  constant
  oneMinusConstant
  force32 = 0x7FFFFFFF

type BlendComponent *{.bycopy.}= object
  operation  *:BlendOperation
  srcFactor  *:BlendFactor
  dstFactor  *:BlendFactor

type BlendState *{.bycopy.}= object
  color  *:BlendComponent
  alpha  *:BlendComponent

type ColorWriteMask *{.pure.}= enum red, green, blue, alpha 
type ColorWriteMaskFlags * = set[ColorWriteMask]
template all  *(_ :typedesc[ColorWriteMask]) :auto=  {ColorWriteMask.red, ColorWriteMask.green, ColorWriteMask.blue, ColorWriteMask.alpha}
template none *(_ :typedesc[ColorWriteMask]) :auto=  {}

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

type CreatePipelineAsyncStatus *{.pure.}= enum
  success = 0x00000000
  validationError
  internalError
  deviceLost
  deviceDestroyed
  unknown
  force32 = 0x7FFFFFFF

#___________________
# SwapChain
type TextureUsage *{.pure.}= enum CopySrc, CopyDst, TextureBinding, StorageBinding, RenderAttachment
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
type LoadOp  *{.pure.}= enum  undefined = 0x00000000, clear, load,    force32 = 0x7FFFFFFF
type StoreOp *{.pure.}= enum  undefined = 0x00000000, store, Discard, force32 = 0x7FFFFFFF

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

type RenderPassTimestampLocation *{.pure.}= enum beginning, End, force32 = 0x7FFFFFFF

type RenderPassTimestampWrite* {.bycopy.} = object
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
