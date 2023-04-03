#:________________________________________________________
#  wgpu-nim  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:________________________________________________________

type SType *{.pure.}= enum
  ## WGPUNativeSType
  ## Starts at 6 to prevent collisions with webgpu STypes
  deviceExtras  = 0x60000001
  adapterExtras
  requiredLimitsExtras
  pipelineLayoutExtras
  shaderModuleGLSLDescriptor
  instanceExtras
  SwapChainDescriptorExtras
  force32  = 0x7FFFFFFF
template supportedLimitsExtras *(_ :typedesc[SType]) :auto=  SType 0x60000003  # repeat of SType.requiredLimitsExtras

type Feature *{.pure.}= enum
  ## WGPUNativeFeature
  pushConstants  = 0x60000001
  textureAdapter_SpecificFormatFeatures
  multiDrawIndirect
  multiDrawIndirect_Count
  vertexWritableStorage

type LogLEvel *{.pure.}= enum  off, error, warn, info, debug, trace, force32 = 0x7FFFFFFF
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

type LogCallback * = proc (level :LogLevel; message :cstring; userdata :pointer)

proc generateReport *(instance :Instance; report :ptr GlobalReport) :void {.importc: "wgpuGenerateReport", header: "wgpu.h".}
proc submitForIndex *(queue :Queue; commandCount :uint32; commands :ptr CommandBuffer) :SubmissionIndex {.importc: "wgpuQueueSubmitForIndex", header: "wgpu.h".}
proc poll *(device :Device; wait :bool; wrappedSubmissionIndex :ptr WrappedSubmissionIndex) :bool {.importc: "wgpuDevicePoll", header: "wgpu.h".}
  ## Returns true if the queue is empty, or false if there are more queue submissions still in flight.
proc set *(callback :LogCallback; userdata :pointer) :void {.importc: "wgpuSetLogCallback", header: "wgpu.h".}
proc set *(level :LogLevel) :void {.importc: "wgpuSetLogLevel", header: "wgpu.h".}
proc getVersion *() :uint32 {.importc: "wgpuGetVersion", header: "wgpu.h".}
proc getCapabilities *(surface :Surface; adapter :Adapter; capabilities :ptr SurfaceCapabilities) :void {.importc: "wgpuSurfaceGetCapabilities", header: "wgpu.h".}
proc setPushConstants *(encoder :RenderPassEncoder; stages :ShaderStageFlags; offset :uint32, sizeBytes :uint32; data :pointer) :void {.importc: "wgpuRenderPassEncoderSetPushConstants", header: "wgpu.h".}
proc multiDrawIndirect *(encoder :RenderPassEncoder; buffer :Buffer; offset :uint64; count :uint32) :void {.importc: "wgpuRenderPassEncoderMultiDrawIndirect", header: "wgpu.h".}
proc multiDrawIndirectCount *(encoder :RenderPassEncoder; buffer :Buffer; offset :uint64; count_buffer :Buffer; count_buffer_offset :uint64; max_count :uint32) :void {.importc: "wgpuRenderPassEncoderMultiDrawIndirectCount", header: "wgpu.h".}
proc multiDrawIndexedIndirect *(encoder :RenderPassEncoder; buffer :Buffer; offset :uint64; count :uint32) :void {.importc: "wgpuRenderPassEncoderMultiDrawIndexedIndirect", header: "wgpu.h".}
proc multiDrawIndexedIndirectCount *(encoder :RenderPassEncoder; buffer :Buffer; offset :uint64; count_buffer :Buffer; count_buffer_offset :uint64; max_count :uint32) :void {.importc: "wgpuRenderPassEncoderMultiDrawIndexedIndirectCount", header: "wgpu.h".}
proc drop *(instance :Instance) :void {.importc: "wgpuInstanceDrop", header: "wgpu.h".}
proc drop *(adapter :Adapter) :void {.importc: "wgpuAdapterDrop", header: "wgpu.h".}
proc drop *(bindGroup :BindGroup) :void {.importc: "wgpuBindGroupDrop", header: "wgpu.h".}
proc drop *(bindGroupLayout :BindGroupLayout) :void {.importc: "wgpuBindGroupLayoutDrop", header: "wgpu.h".}
proc drop *(buffer :Buffer) :void {.importc: "wgpuBufferDrop", header: "wgpu.h".}
proc drop *(commandBuffer :CommandBuffer) :void {.importc: "wgpuCommandBufferDrop", header: "wgpu.h".}
proc drop *(commandEncoder :CommandEncoder) :void {.importc: "wgpuCommandEncoderDrop", header: "wgpu.h".}
proc drop *(renderPassEncoder :RenderPassEncoder) :void {.importc: "wgpuRenderPassEncoderDrop", header: "wgpu.h".}
proc drop *(computePassEncoder :ComputePassEncoder) :void {.importc: "wgpuComputePassEncoderDrop", header: "wgpu.h".}
proc drop *(renderBundleEncoder :RenderBundleEncoder) :void {.importc: "wgpuRenderBundleEncoderDrop", header: "wgpu.h".}
proc drop *(computePipeline :ComputePipeline) :void {.importc: "wgpuComputePipelineDrop", header: "wgpu.h".}
proc drop *(device :Device) :void {.importc: "wgpuDeviceDrop", header: "wgpu.h".}
proc drop *(pipelineLayout :PipelineLayout) :void {.importc: "wgpuPipelineLayoutDrop", header: "wgpu.h".}
proc drop *(querySet :QuerySet) :void {.importc: "wgpuQuerySetDrop", header: "wgpu.h".}
proc drop *(renderBundle :RenderBundle) :void {.importc: "wgpuRenderBundleDrop", header: "wgpu.h".}
proc drop *(renderPipeline :RenderPipeline) :void {.importc: "wgpuRenderPipelineDrop", header: "wgpu.h".}
proc drop *(sampler :Sampler) :void {.importc: "wgpuSamplerDrop", header: "wgpu.h".}
proc drop *(shaderModule :ShaderModule) :void {.importc: "wgpuShaderModuleDrop", header: "wgpu.h".}
proc drop *(surface :Surface) :void {.importc: "wgpuSurfaceDrop", header: "wgpu.h".}
proc drop *(swapChain :SwapChain) :void {.importc: "wgpuSwapChainDrop", header: "wgpu.h".}
proc drop *(texture :Texture) :void {.importc: "wgpuTextureDrop", header: "wgpu.h".}
proc drop *(textureView :TextureView) :void {.importc: "wgpuTextureViewDrop", header: "wgpu.h".}

