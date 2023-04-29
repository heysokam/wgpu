include ./compile

const
  MaxVertexAttributes      * = 16
  UndefinedArrayLayerCount * = 0xffffffff          # define WGPU_ARRAY_LAYER_COUNT_UNDEFINED (0xffffffffUL)
  UndefinedCopyStride      * = 0xffffffff          # define WGPU_COPY_STRIDE_UNDEFINED       (0xffffffffUL)
  UndefinedLimitU32        * = 0xffffffff          # define WGPU_LIMIT_U32_UNDEFINED         (0xffffffffUL)
  UndefinedLimitU64        * = 0xffffffffffffffff  # define WGPU_LIMIT_U64_UNDEFINED         (0xffffffffffffffffULL)
  UndefinedMipLevelCount   * = 0xffffffff          # define WGPU_MIP_LEVEL_COUNT_UNDEFINED   (0xffffffffUL)
  WholeMapSize             * = csize_t.high        # define WGPU_WHOLE_MAP_SIZE              SIZE_MAX
  WholeSize                * = 0xffffffffffffffff  # define WGPU_WHOLE_SIZE                  (0xffffffffffffffffULL)

# type
#   AdapterImpl             = pointer
#   BindGroupImpl           = pointer
#   BindGroupLayoutImpl     = pointer
#   BufferImpl              = pointer
#   CommandBufferImpl       = pointer
#   CommandEncoderImpl      = pointer
#   ComputePassEncoderImpl  = pointer
#   ComputePipelineImpl     = pointer
#   DeviceImpl              = pointer
#   InstanceImpl            = pointer
#   PipelineLayoutImpl      = pointer
#   QuerySetImpl            = pointer
#   QueueImpl               = pointer
#   RenderBundleImpl        = pointer
#   RenderBundleEncoderImpl = pointer
#   RenderPassEncoderImpl   = pointer
#   RenderPipelineImpl      = pointer
#   SamplerImpl             = pointer
#   ShaderModuleImpl        = pointer
#   SurfaceImpl             = pointer
#   SwapChainImpl           = pointer
#   TextureImpl             = pointer
#   TextureViewImpl         = pointer

  # Flags* = uint
  # Adapter* = ptr AdapterImpl
  # BindGroup*                    = ptr BindGroupImpl
  # BindGroupLayout*              = ptr BindGroupLayoutImpl
  # Buffer*                       = ptr BufferImpl
  # CommandBuffer*                = ptr CommandBufferImpl
  # CommandEncoder*               = ptr CommandEncoderImpl
  # ComputePassEncoder*           = ptr ComputePassEncoderImpl
  # ComputePipeline*              = ptr ComputePipelineImpl
  # Device*                       = ptr DeviceImpl
  # Instance*                     = ptr InstanceImpl
  # PipelineLayout*               = ptr PipelineLayoutImpl
  # QuerySet*                     = ptr QuerySetImpl
  # Queue*                        = ptr QueueImpl
  # RenderBundle*                 = ptr RenderBundleImpl
  # RenderBundleEncoder*          = ptr RenderBundleEncoderImpl
  # RenderPassEncoder*            = ptr RenderPassEncoderImpl
  # RenderPipeline*               = ptr RenderPipelineImpl
  # Sampler*                      = ptr SamplerImpl
  # ShaderModule*                 = ptr ShaderModuleImpl
  # Surface*                      = ptr SurfaceImpl
  # SwapChain*                    = ptr SwapChainImpl
  # Texture*                      = ptr TextureImpl
  # TextureView*                  = ptr TextureViewImpl
  AdapterType*                  = distinct uint32
  AddressMode*                  = distinct uint32
  # BackendType*                  = distinct uint32
  # BlendFactor*                  = distinct uint32
  # BlendOperation*               = distinct uint32
  # BufferBindingType*            = distinct uint32
  # BufferMapAsyncStatus*         = distinct uint32
  # CompareFunction*              = distinct uint32
  # CompilationInfoRequestStatus* = distinct uint32
  # CompilationMessageType*       = distinct uint32
  # ComputePassTimestampLocation* = distinct uint32
  # CreatePipelineAsyncStatus*    = distinct uint32
  # CullMode*                     = distinct uint32
  DeviceLostReason*             = distinct uint32
  # ErrorFilter*                  = distinct uint32
  ErrorType*                    = distinct uint32
  # Feature*                  = distinct uint32
  FilterMode*                   = distinct uint32
  # FrontFace*                    = distinct uint32
  # IndexFormat*                  = distinct uint32
  # LoadOp*                       = distinct uint32
  MipmapFilterMode*             = distinct uint32
  PipelineStatisticName*        = distinct uint32
  # PowerPreference*              = distinct uint32
  # PresentMode*                  = distinct uint32
  # PrimitiveTopology*            = distinct uint32
  # QueryType*                    = distinct uint32
  # QueueWorkDoneStatus*          = distinct uint32
  # RenderPassTimestampLocation*  = distinct uint32
  # RequestAdapterStatus*         = distinct uint32
  # RequestDeviceStatus*          = distinct uint32
  # SType*                        = distinct uint32
  # SamplerBindingType*           = distinct uint32
  # StencilOperation*             = distinct uint32
  # StorageTextureAccess*         = distinct uint32
  # StoreOp*                      = distinct uint32
  TextureAspect*                = distinct uint32
  TextureComponentType*         = distinct uint32
  # TextureDimension*             = distinct uint32
  TextureFormat*                = distinct uint32
  # TextureSampleType*            = distinct uint32
  # TextureViewDimension*         = distinct uint32
  # VertexFormat*                 = distinct uint32
  # VertexStepMode*               = distinct uint32
  BufferUsage*                  = distinct uint32
  # BufferUsageFlags*             = Flags
  # ColorWriteMask*               = distinct uint32
  # ColorWriteMaskFlags*          = Flags
  MapMode*                      = distinct uint32
  # MapModeFlags*                 = Flags
  # ShaderStage*                  = distinct uint32
  ShaderStageFlags*             = Flags
  # TextureUsage*                 = distinct uint32
  # TextureUsageFlags*            = Flags
  # ChainedStruct* {.bycopy.} = object
  #   next*: ptr ChainedStruct
  #   sType*: SType

  ChainedStructOut* {.bycopy.} = object
    next*: ptr ChainedStructOut
    sType*: SType

  AdapterProperties* {.bycopy.} = object
    nextInChain*: ptr ChainedStructOut
    vendorID*: uint
    vendorName*: cstring
    architecture*: cstring
    deviceID*: uint
    name*: cstring
    driverDescription*: cstring
    adapterType*: AdapterType
    backendType*: BackendType

  # BindGroupEntry* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   binding*: uint
  #   buffer*: Buffer
  #   offset*: uint64
  #   size*: uint64
  #   sampler*: Sampler
  #   textureView*: TextureView

  # BlendComponent* {.bycopy.} = object
  #   operation*: BlendOperation
  #   srcFactor*: BlendFactor
  #   dstFactor*: BlendFactor

  # BufferBindingLayout* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   `type`*: BufferBindingType
  #   hasDynamicOffset*: bool
  #   minBindingSize*: uint64

  # BufferDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring
  #   usage*: BufferUsageFlags
  #   size*: uint64
  #   mappedAtCreation*: bool

  # Color* {.bycopy.} = object
  #   r*: cdouble
  #   g*: cdouble
  #   b*: cdouble
  #   a*: cdouble

  # CommandBufferDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring

  # CommandEncoderDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring

  # CompilationMessage* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   message*: cstring
  #   `type`*: CompilationMessageType
  #   lineNum*: uint64
  #   linePos*: uint64
  #   offset*: uint64
  #   length*: uint64

  # ComputePassTimestampWrite* {.bycopy.} = object
  #   querySet*: QuerySet
  #   queryIndex*: uint
  #   location*: ComputePassTimestampLocation

  # ConstantEntry* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   key*: cstring
  #   value*: cdouble

  Extent3D* {.bycopy.} = object
    width*: uint
    height*: uint
    depthOrArrayLayers*: uint

  # InstanceDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct

  # Limits* {.bycopy.} = object
  #   maxTextureDimension1D*: uint
  #   maxTextureDimension2D*: uint
  #   maxTextureDimension3D*: uint
  #   maxTextureArrayLayers*: uint
  #   maxBindGroups*: uint
  #   maxBindingsPerBindGroup*: uint
  #   maxDynamicUniformBuffersPerPipelineLayout*: uint
  #   maxDynamicStorageBuffersPerPipelineLayout*: uint
  #   maxSampledTexturesPerShaderStage*: uint
  #   maxSamplersPerShaderStage*: uint
  #   maxStorageBuffersPerShaderStage*: uint
  #   maxStorageTexturesPerShaderStage*: uint
  #   maxUniformBuffersPerShaderStage*: uint
  #   maxUniformBufferBindingSize*: uint64
  #   maxStorageBufferBindingSize*: uint64
  #   minUniformBufferOffsetAlignment*: uint
  #   minStorageBufferOffsetAlignment*: uint
  #   maxVertexBuffers*: uint
  #   maxBufferSize*: uint64
  #   maxVertexAttributes*: uint
  #   maxVertexBufferArrayStride*: uint
  #   maxInterStageShaderComponents*: uint
  #   maxInterStageShaderVariables*: uint
  #   maxColorAttachments*: uint
  #   maxComputeWorkgroupStorageSize*: uint
  #   maxComputeInvocationsPerWorkgroup*: uint
  #   maxComputeWorkgroupSizeX*: uint
  #   maxComputeWorkgroupSizeY*: uint
  #   maxComputeWorkgroupSizeZ*: uint
  #   maxComputeWorkgroupsPerDimension*: uint

  # MultisampleState* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   count*: uint
  #   mask*: uint
  #   alphaToCoverageEnabled*: bool

  Origin3D* {.bycopy.} = object
    x*: uint
    y*: uint
    z*: uint

  # PipelineLayoutDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring
  #   bindGroupLayoutCount*: uint
  #   bindGroupLayouts*: ptr BindGroupLayout

  PrimitiveDepthClipControl* {.bycopy.} = object
    chain*: ChainedStruct
    unclippedDepth*: bool

  # PrimitiveState* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   topology*: PrimitiveTopology
  #   stripIndexFormat*: IndexFormat
  #   frontFace*: FrontFace
  #   cullMode*: CullMode

  QuerySetDescriptor* {.bycopy.} = object
    nextInChain*: ptr ChainedStruct
    label*: cstring
    `type`*: QueryType
    count*: uint
    pipelineStatistics*: ptr PipelineStatisticName
    pipelineStatisticsCount*: uint

  # QueueDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring

  RenderBundleDescriptor* {.bycopy.} = object
    nextInChain*: ptr ChainedStruct
    label*: cstring

  RenderBundleEncoderDescriptor* {.bycopy.} = object
    nextInChain*: ptr ChainedStruct
    label*: cstring
    colorFormatsCount*: uint
    colorFormats*: ptr TextureFormat
    depthStencilFormat*: TextureFormat
    sampleCount*: uint
    depthReadOnly*: bool
    stencilReadOnly*: bool

  # RenderPassDepthStencilAttachment* {.bycopy.} = object
  #   view*: TextureView
  #   depthLoadOp*: LoadOp
  #   depthStoreOp*: StoreOp
  #   depthClearValue*: cfloat
  #   depthReadOnly*: bool
  #   stencilLoadOp*: LoadOp
  #   stencilStoreOp*: StoreOp
  #   stencilClearValue*: uint
  #   stencilReadOnly*: bool

  RenderPassDescriptorMaxDrawCount* {.bycopy.} = object
    chain*: ChainedStruct
    maxDrawCount*: uint64

  # RenderPassTimestampWrite* {.bycopy.} = object
  #   querySet*: QuerySet
  #   queryIndex*: uint
  #   location*: RenderPassTimestampLocation

  # RequestAdapterOptions* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   compatibleSurface*: Surface
  #   powerPreference*: PowerPreference
  #   forceFallbackAdapter*: bool

  # SamplerBindingLayout* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   `type`*: SamplerBindingType

  SamplerDescriptor* {.bycopy.} = object
    nextInChain*: ptr ChainedStruct
    label*: cstring
    addressModeU*: AddressMode
    addressModeV*: AddressMode
    addressModeW*: AddressMode
    magFilter*: FilterMode
    minFilter*: FilterMode
    mipmapFilter*: MipmapFilterMode
    lodMinClamp*: cfloat
    lodMaxClamp*: cfloat
    compare*: CompareFunction
    maxAnisotropy*: uint16

  # ShaderModuleCompilationHint* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   entryPoint*: cstring
  #   layout*: PipelineLayout

  ShaderModuleSPIRVDescriptor* {.bycopy.} = object
    chain*: ChainedStruct
    codeSize*: uint
    code*: ptr uint

  # ShaderModuleWGSLDescriptor* {.bycopy.} = object
  #   chain*: ChainedStruct
  #   code*: cstring

  # StencilFaceState* {.bycopy.} = object
  #   compare*: CompareFunction
  #   failOp*: StencilOperation
  #   depthFailOp*: StencilOperation
  #   passOp*: StencilOperation

  # StorageTextureBindingLayout* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   access*: StorageTextureAccess
  #   format*: TextureFormat
  #   viewDimension*: TextureViewDimension

  # SurfaceDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring

  SurfaceDescriptorFromAndroidNativeWindow* {.bycopy.} = object
    chain*: ChainedStruct
    window*: pointer

  SurfaceDescriptorFromCanvasHTMLSelector* {.bycopy.} = object
    chain*: ChainedStruct
    selector*: cstring

  SurfaceDescriptorFromMetalLayer* {.bycopy.} = object
    chain*: ChainedStruct
    layer*: pointer

  SurfaceDescriptorFromWaylandSurface* {.bycopy.} = object
    chain*: ChainedStruct
    display*: pointer
    surface*: pointer

  SurfaceDescriptorFromWindowsHWND* {.bycopy.} = object
    chain*: ChainedStruct
    hinstance*: pointer
    hwnd*: pointer

  SurfaceDescriptorFromXcbWindow* {.bycopy.} = object
    chain*: ChainedStruct
    connection*: pointer
    window*: uint

  # SurfaceDescriptorFromXlibWindow* {.bycopy.} = object
  #   chain*: ChainedStruct
  #   display*: pointer
  #   window*: uint

  # SwapChainDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring
  #   usage*: TextureUsageFlags
  #   format*: TextureFormat
  #   width*: uint
  #   height*: uint
  #   presentMode*: PresentMode

  # TextureBindingLayout* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   sampleType*: TextureSampleType
  #   viewDimension*: TextureViewDimension
  #   multisampled*: bool

  TextureDataLayout* {.bycopy.} = object
    nextInChain*: ptr ChainedStruct
    offset*: uint64
    bytesPerRow*: uint
    rowsPerImage*: uint

  TextureViewDescriptor* {.bycopy.} = object
    nextInChain*: ptr ChainedStruct
    label*: cstring
    format*: TextureFormat
    dimension*: TextureViewDimension
    baseMipLevel*: uint
    mipLevelCount*: uint
    baseArrayLayer*: uint
    arrayLayerCount*: uint
    aspect*: TextureAspect

  # VertexAttribute* {.bycopy.} = object
  #   format*: VertexFormat
  #   offset*: uint64
  #   shaderLocation*: uint

  # BindGroupDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring
  #   layout*: BindGroupLayout
  #   entryCount*: uint
  #   entries*: ptr BindGroupEntry

  # BindGroupLayoutEntry* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   binding*: uint
  #   visibility*: ShaderStageFlags
  #   buffer*: BufferBindingLayout
  #   sampler*: SamplerBindingLayout
  #   texture*: TextureBindingLayout
  #   storageTexture*: StorageTextureBindingLayout

  # BlendState* {.bycopy.} = object
  #   color*: BlendComponent
  #   alpha*: BlendComponent

  # CompilationInfo* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   messageCount*: uint
  #   messages*: ptr CompilationMessage

  # ComputePassDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring
  #   timestampWriteCount*: uint
  #   timestampWrites*: ptr ComputePassTimestampWrite

  # DepthStencilState* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   format*: TextureFormat
  #   depthWriteEnabled*: bool
  #   depthCompare*: CompareFunction
  #   stencilFront*: StencilFaceState
  #   stencilBack*: StencilFaceState
  #   stencilReadMask*: uint
  #   stencilWriteMask*: uint
  #   depthBias*: int32
  #   depthBiasSlopeScale*: cfloat
  #   depthBiasClamp*: cfloat

  ImageCopyBuffer* {.bycopy.} = object
    nextInChain*: ptr ChainedStruct
    layout*: TextureDataLayout
    buffer*: Buffer

  ImageCopyTexture* {.bycopy.} = object
    nextInChain*: ptr ChainedStruct
    texture*: Texture
    mipLevel*: uint
    origin*: Origin3D
    aspect*: TextureAspect

  # ProgrammableStageDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   module*: ShaderModule
  #   entryPoint*: cstring
  #   constantCount*: uint
  #   constants*: ptr ConstantEntry

  # RenderPassColorAttachment* {.bycopy.} = object
  #   view*: TextureView
  #   resolveTarget*: TextureView
  #   loadOp*: LoadOp
  #   storeOp*: StoreOp
  #   clearValue*: Color

  # RequiredLimits* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   limits*: Limits

  # ShaderModuleDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring
  #   hintCount*: uint
  #   hints*: ptr ShaderModuleCompilationHint

  # SupportedLimits* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStructOut
  #   limits*: Limits

  TextureDescriptor* {.bycopy.} = object
    nextInChain*: ptr ChainedStruct
    label*: cstring
    usage*: TextureUsageFlags
    dimension*: TextureDimension
    size*: Extent3D
    format*: TextureFormat
    mipLevelCount*: uint
    sampleCount*: uint
    viewFormatCount*: uint
    viewFormats*: ptr TextureFormat

  # VertexBufferLayout* {.bycopy.} = object
  #   arrayStride*: uint64
  #   stepMode*: VertexStepMode
  #   attributeCount*: uint
  #   attributes*: ptr VertexAttribute

  # BindGroupLayoutDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring
  #   entryCount*: uint
  #   entries*: ptr BindGroupLayoutEntry

  # ColorTargetState* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   format*: TextureFormat
  #   blend*: ptr BlendState
  #   writeMask*: ColorWriteMaskFlags

  # ComputePipelineDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring
  #   layout*: PipelineLayout
  #   compute*: ProgrammableStageDescriptor

  # DeviceDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring
  #   requiredFeaturesCount*: uint
  #   requiredFeatures*: ptr Feature
  #   requiredLimits*: ptr RequiredLimits
  #   defaultQueue*: QueueDescriptor

  # RenderPassDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring
  #   colorAttachmentCount*: uint
  #   colorAttachments*: ptr RenderPassColorAttachment
  #   depthStencilAttachment*: ptr RenderPassDepthStencilAttachment
  #   occlusionQuerySet*: QuerySet
  #   timestampWriteCount*: uint
  #   timestampWrites*: ptr RenderPassTimestampWrite

  # VertexState* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   module*: ShaderModule
  #   entryPoint*: cstring
  #   constantCount*: uint
  #   constants*: ptr ConstantEntry
  #   bufferCount*: uint
  #   buffers*: ptr VertexBufferLayout

  # FragmentState* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   module*: ShaderModule
  #   entryPoint*: cstring
  #   constantCount*: uint
  #   constants*: ptr ConstantEntry
  #   targetCount*: uint
  #   targets*: ptr ColorTargetState

  # RenderPipelineDescriptor* {.bycopy.} = object
  #   nextInChain*: ptr ChainedStruct
  #   label*: cstring
  #   layout*: PipelineLayout
  #   vertex*: VertexState
  #   primitive*: PrimitiveState
  #   depthStencil*: ptr DepthStencilState
  #   multisample*: MultisampleState
  #   fragment*: ptr FragmentState

  # BufferMapCallback* = proc (status: BufferMapAsyncStatus; userdata: pointer) {.cdecl.}
  # CompilationInfoCallback* = proc (status: CompilationInfoRequestStatus; compilationInfo: ptr CompilationInfo; userdata: pointer) {.cdecl.}
  # CreateComputePipelineAsyncCallback* = proc (status: CreatePipelineAsyncStatus;
  #     pipeline: ComputePipeline; message: cstring; userdata: pointer) {.cdecl.}
  # CreateRenderPipelineAsyncCallback* = proc (status: CreatePipelineAsyncStatus;
  #     pipeline: RenderPipeline; message: cstring; userdata: pointer) {.cdecl.}
  # DeviceLostCallback* = proc (reason: DeviceLostReason; message: cstring; userdata: pointer) {.cdecl.}
  # ErrorCallback* = proc (`type`: ErrorType; message: cstring; userdata: pointer) {.cdecl.}
  # Proc* = proc () {.cdecl.}
  # QueueWorkDoneCallback* = proc (status: QueueWorkDoneStatus; userdata: pointer) {.cdecl.}
  # RequestAdapterCallback* = proc (status: RequestAdapterStatus; adapter: Adapter; message: cstring; userdata: pointer) {.cdecl.}
  # RequestDeviceCallback* = proc (status: RequestDeviceStatus; device: Device; message: cstring; userdata: pointer) {.cdecl.}
  ProcCreateInstance* = proc (descriptor: ptr InstanceDescriptor): Instance {.cdecl.}
  ProcGetProcAddress* = proc (device: Device; procName: cstring): Proc {.cdecl.}
  ProcAdapterEnumerateFeatures* = proc (adapter: Adapter; features: ptr Feature): csize_t {.cdecl.}
  # ProcAdapterGetLimits* = proc (adapter: Adapter; limits: ptr SupportedLimits): bool {.cdecl.}
  ProcAdapterGetProperties* = proc (adapter: Adapter; properties: ptr AdapterProperties) {.cdecl.}
  ProcAdapterHasFeature* = proc (adapter: Adapter; feature: Feature): bool {.cdecl.}
  ProcAdapterRequestDevice* = proc (adapter: Adapter; descriptor: ptr DeviceDescriptor; callback: RequestDeviceCallback; userdata: pointer) {.cdecl.}
  ProcBindGroupSetLabel* = proc (bindGroup: BindGroup; label: cstring) {.cdecl.}
  ProcBindGroupLayoutSetLabel* = proc (bindGroupLayout: BindGroupLayout; label: cstring) {.cdecl.}
  ProcBufferDestroy* = proc (buffer: Buffer) {.cdecl.}
  ProcBufferGetConstMappedRange* = proc (buffer: Buffer; offset: csize_t; size: csize_t): pointer {.cdecl.}
  ProcBufferGetMappedRange* = proc (buffer: Buffer; offset: csize_t; size: csize_t): pointer {.cdecl.}
  ProcBufferGetSize* = proc (buffer: Buffer): uint64 {.cdecl.}
  ProcBufferGetUsage* = proc (buffer: Buffer): BufferUsage {.cdecl.}
  # ProcBufferMapAsync* = proc (buffer: Buffer; mode: MapModeFlags; offset: csize_t; size: csize_t; callback: BufferMapCallback; userdata: pointer) {.cdecl.}
  ProcBufferSetLabel* = proc (buffer: Buffer; label: cstring) {.cdecl.}
  ProcBufferUnmap* = proc (buffer: Buffer) {.cdecl.}
  ProcCommandBufferSetLabel* = proc (commandBuffer: CommandBuffer; label: cstring) {.cdecl.}
  # ProcCommandEncoderBeginComputePass* = proc (commandEncoder: CommandEncoder; descriptor: ptr ComputePassDescriptor): ComputePassEncoder {.cdecl.}
  ProcCommandEncoderBeginRenderPass* = proc (commandEncoder: CommandEncoder; descriptor: ptr RenderPassDescriptor): RenderPassEncoder {.cdecl.}
  ProcCommandEncoderClearBuffer* = proc (commandEncoder: CommandEncoder; buffer: Buffer; offset: uint64; size: uint64) {.cdecl.}
  ProcCommandEncoderCopyBufferToBuffer* = proc (commandEncoder: CommandEncoder; source: Buffer; sourceOffset: uint64; destination: Buffer; destinationOffset: uint64; size: uint64) {.cdecl.}
  ProcCommandEncoderCopyBufferToTexture* = proc (commandEncoder: CommandEncoder; source: ptr ImageCopyBuffer; destination: ptr ImageCopyTexture; copySize: ptr Extent3D) {.cdecl.}
  ProcCommandEncoderCopyTextureToBuffer* = proc (commandEncoder: CommandEncoder; source: ptr ImageCopyTexture; destination: ptr ImageCopyBuffer; copySize: ptr Extent3D) {.cdecl.}
  ProcCommandEncoderCopyTextureToTexture* = proc (commandEncoder: CommandEncoder; source: ptr ImageCopyTexture; destination: ptr ImageCopyTexture; copySize: ptr Extent3D) {.cdecl.}
  ProcCommandEncoderFinish* = proc (commandEncoder: CommandEncoder; descriptor: ptr CommandBufferDescriptor): CommandBuffer {.cdecl.} = proc (commandEncoder: CommandEncoder; markerLabel: cstring) {.cdecl.}
  ProcCommandEncoderPopDebugGroup* = proc (commandEncoder: CommandEncoder) {.cdecl.}
  ProcCommandEncoderPushDebugGroup* = proc (commandEncoder: CommandEncoder; groupLabel: cstring) {.cdecl.}
  ProcCommandEncoderResolveQuerySet* = proc (commandEncoder: CommandEncoder; querySet: QuerySet; firstQuery: uint; queryCount: uint; destination: Buffer; destinationOffset: uint64) {.cdecl.}
  ProcCommandEncoderSetLabel* = proc (commandEncoder: CommandEncoder; label: cstring) {.cdecl.}
  ProcCommandEncoderWriteTimestamp* = proc (commandEncoder: CommandEncoder; querySet: QuerySet; queryIndex: uint) {.cdecl.}
  ProcComputePassEncoderBeginPipelineStatisticsQuery* = proc ( computePassEncoder: ComputePassEncoder; querySet: QuerySet; queryIndex: uint) {.cdecl.}
  # ProcComputePassEncoderDispatchWorkgroups* = proc ( computePassEncoder: ComputePassEncoder; workgroupCountX: uint; workgroupCountY: uint; workgroupCountZ: uint) {.cdecl.}
  ProcComputePassEncoderDispatchWorkgroupsIndirect* = proc ( computePassEncoder: ComputePassEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl.}
  # ProcComputePassEncoderEnd* = proc (computePassEncoder: ComputePassEncoder) {.cdecl.}
  ProcComputePassEncoderEndPipelineStatisticsQuery* = proc ( computePassEncoder: ComputePassEncoder) {.cdecl.}
  ProcComputePassEncoderInsertDebugMarker* = proc ( computePassEncoder: ComputePassEncoder; markerLabel: cstring) {.cdecl.}
  ProcComputePassEncoderPopDebugGroup* = proc ( computePassEncoder: ComputePassEncoder) {.cdecl.}
  ProcComputePassEncoderPushDebugGroup* = proc ( computePassEncoder: ComputePassEncoder; groupLabel: cstring) {.cdecl.}
  # ProcComputePassEncoderSetBindGroup* = proc ( computePassEncoder: ComputePassEncoder; groupIndex: uint; group: BindGroup; dynamicOffsetCount: uint; dynamicOffsets: ptr uint) {.cdecl.}
  ProcComputePassEncoderSetLabel* = proc (computePassEncoder: ComputePassEncoder; label: cstring) {.cdecl.}
  ProcComputePassEncoderSetPipeline* = proc ( computePassEncoder: ComputePassEncoder; pipeline: ComputePipeline) {.cdecl.}
  ProcComputePipelineGetBindGroupLayout* = proc (computePipeline: ComputePipeline; groupIndex: uint): BindGroupLayout {.cdecl.}
  ProcComputePipelineSetLabel* = proc (computePipeline: ComputePipeline; label: cstring) {.cdecl.}
  # ProcDeviceCreateBindGroup* = proc (device: Device; descriptor: ptr BindGroupDescriptor): BindGroup {.cdecl.}
  # ProcDeviceCreateBindGroupLayout* = proc (device: Device; descriptor: ptr BindGroupLayoutDescriptor): BindGroupLayout {.cdecl.}
  ProcDeviceCreateBuffer* = proc (device: Device; descriptor: ptr BufferDescriptor): Buffer {.cdecl.}
  ProcDeviceCreateCommandEncoder* = proc (device: Device; descriptor: ptr CommandEncoderDescriptor): CommandEncoder {.cdecl.}
  ProcDeviceCreateComputePipeline* = proc (device: Device; descriptor: ptr ComputePipelineDescriptor): ComputePipeline {.cdecl.}
  ProcDeviceCreateComputePipelineAsync* = proc (device: Device; descriptor: ptr ComputePipelineDescriptor; callback: CreateComputePipelineAsyncCallback; userdata: pointer) {.cdecl.}
  # ProcDeviceCreatePipelineLayout* = proc (device: Device; descriptor: ptr PipelineLayoutDescriptor): PipelineLayout {.cdecl.}
  ProcDeviceCreateQuerySet* = proc (device: Device; descriptor: ptr QuerySetDescriptor): QuerySet {.cdecl.}
  ProcDeviceCreateRenderBundleEncoder* = proc (device: Device; descriptor: ptr RenderBundleEncoderDescriptor): RenderBundleEncoder {.cdecl.}
  ProcDeviceCreateRenderPipeline* = proc (device: Device; descriptor: ptr RenderPipelineDescriptor): RenderPipeline {.cdecl.}
  ProcDeviceCreateRenderPipelineAsync* = proc (device: Device; descriptor: ptr RenderPipelineDescriptor; callback: CreateRenderPipelineAsyncCallback; userdata: pointer) {.cdecl.}
  ProcDeviceCreateSampler* = proc (device: Device; descriptor: ptr SamplerDescriptor): Sampler {.cdecl.}
  ProcDeviceCreateShaderModule* = proc (device: Device; descriptor: ptr ShaderModuleDescriptor): ShaderModule {.cdecl.}
  ProcDeviceCreateSwapChain* = proc (device: Device; surface: Surface; descriptor: ptr SwapChainDescriptor): SwapChain {.cdecl.}
  ProcDeviceCreateTexture* = proc (device: Device; descriptor: ptr TextureDescriptor): Texture {.cdecl.}
  ProcDeviceDestroy* = proc (device: Device) {.cdecl.}
  ProcDeviceEnumerateFeatures* = proc (device: Device; features: ptr Feature): csize_t {.cdecl.}
  # ProcDeviceGetLimits* = proc (device: Device; limits: ptr SupportedLimits): bool {.cdecl.}
  ProcDeviceGetQueue* = proc (device: Device): Queue {.cdecl.}
  ProcDeviceHasFeature* = proc (device: Device; feature: Feature): bool {.cdecl.}
  ProcDevicePopErrorScope* = proc (device: Device; callback: ErrorCallback; userdata: pointer): bool {.cdecl.}
  ProcDevicePushErrorScope* = proc (device: Device; filter: ErrorFilter) {.cdecl.}
  ProcDeviceSetDeviceLostCallback* = proc (device: Device; callback: DeviceLostCallback; userdata: pointer) {.cdecl.}
  ProcDeviceSetLabel* = proc (device: Device; label: cstring) {.cdecl.}
  ProcDeviceSetUncapturedErrorCallback* = proc (device: Device; callback: ErrorCallback; userdata: pointer) {.cdecl.}
  ProcInstanceCreateSurface* = proc (instance: Instance; descriptor: ptr SurfaceDescriptor): Surface {.cdecl.}
  ProcInstanceProcessEvents* = proc (instance: Instance) {.cdecl.}
  ProcInstanceRequestAdapter* = proc (instance: Instance; options: ptr RequestAdapterOptions; callback: RequestAdapterCallback; userdata: pointer) {.cdecl.}
  ProcPipelineLayoutSetLabel* = proc (pipelineLayout: PipelineLayout; label: cstring) {.cdecl.}
  ProcQuerySetDestroy* = proc (querySet: QuerySet) {.cdecl.}
  ProcQuerySetGetCount* = proc (querySet: QuerySet): uint {.cdecl.}
  ProcQuerySetGetType* = proc (querySet: QuerySet): QueryType {.cdecl.}
  ProcQuerySetSetLabel* = proc (querySet: QuerySet; label: cstring) {.cdecl.}
  ProcQueueOnSubmittedWorkDone* = proc (queue: Queue; callback: QueueWorkDoneCallback; userdata: pointer) {.cdecl.}
  ProcQueueSetLabel* = proc (queue: Queue; label: cstring) {.cdecl.}
  ProcQueueSubmit* = proc (queue: Queue; commandCount: uint; commands: ptr CommandBuffer) {.cdecl.}
  ProcQueueWriteBuffer* = proc (queue: Queue; buffer: Buffer; bufferOffset: uint64; data: pointer; size: csize_t) {.cdecl.}
  ProcQueueWriteTexture* = proc (queue: Queue; destination: ptr ImageCopyTexture; data: pointer; dataSize: csize_t; dataLayout: ptr TextureDataLayout; writeSize: ptr Extent3D) {.cdecl.}
  ProcRenderBundleEncoderDraw* = proc (renderBundleEncoder: RenderBundleEncoder; vertexCount: uint; instanceCount: uint; firstVertex: uint; firstInstance: uint) {.cdecl.}
  ProcRenderBundleEncoderDrawIndexed* = proc ( renderBundleEncoder: RenderBundleEncoder; indexCount: uint; instanceCount: uint; firstIndex: uint; baseVertex: int32; firstInstance: uint) {.cdecl.}
  ProcRenderBundleEncoderDrawIndexedIndirect* = proc ( renderBundleEncoder: RenderBundleEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl.}
  ProcRenderBundleEncoderDrawIndirect* = proc ( renderBundleEncoder: RenderBundleEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl.}
  ProcRenderBundleEncoderFinish* = proc (renderBundleEncoder: RenderBundleEncoder; descriptor: ptr RenderBundleDescriptor): RenderBundle {.cdecl.}
  ProcRenderBundleEncoderInsertDebugMarker* = proc ( renderBundleEncoder: RenderBundleEncoder; markerLabel: cstring) {.cdecl.}
  ProcRenderBundleEncoderPopDebugGroup* = proc ( renderBundleEncoder: RenderBundleEncoder) {.cdecl.}
  ProcRenderBundleEncoderPushDebugGroup* = proc ( renderBundleEncoder: RenderBundleEncoder; groupLabel: cstring) {.cdecl.}
  ProcRenderBundleEncoderSetBindGroup* = proc ( renderBundleEncoder: RenderBundleEncoder; groupIndex: uint; group: BindGroup; dynamicOffsetCount: uint; dynamicOffsets: ptr uint) {.cdecl.}
  ProcRenderBundleEncoderSetIndexBuffer* = proc ( renderBundleEncoder: RenderBundleEncoder; buffer: Buffer; format: IndexFormat; offset: uint64; size: uint64) {.cdecl.}
  ProcRenderBundleEncoderSetLabel* = proc (renderBundleEncoder: RenderBundleEncoder; label: cstring) {.cdecl.}
  ProcRenderBundleEncoderSetPipeline* = proc ( renderBundleEncoder: RenderBundleEncoder; pipeline: RenderPipeline) {.cdecl.}
  ProcRenderBundleEncoderSetVertexBuffer* = proc ( renderBundleEncoder: RenderBundleEncoder; slot: uint; buffer: Buffer; offset: uint64; size: uint64) {.cdecl.}
  ProcRenderPassEncoderBeginOcclusionQuery* = proc ( renderPassEncoder: RenderPassEncoder; queryIndex: uint) {.cdecl.}
  ProcRenderPassEncoderBeginPipelineStatisticsQuery* = proc ( renderPassEncoder: RenderPassEncoder; querySet: QuerySet; queryIndex: uint) {.cdecl.}
  ProcRenderPassEncoderDraw* = proc (renderPassEncoder: RenderPassEncoder; vertexCount: uint; instanceCount: uint; firstVertex: uint; firstInstance: uint) {.cdecl.}
  # ProcRenderPassEncoderDrawIndexed* = proc (renderPassEncoder: RenderPassEncoder; indexCount: uint; instanceCount: uint; firstIndex: uint; baseVertex: int32; firstInstance: uint) {.cdecl.}
  ProcRenderPassEncoderDrawIndexedIndirect* = proc ( renderPassEncoder: RenderPassEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl.}
  ProcRenderPassEncoderDrawIndirect* = proc (renderPassEncoder: RenderPassEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl.}
  ProcRenderPassEncoderEnd* = proc (renderPassEncoder: RenderPassEncoder) {.cdecl.}
  ProcRenderPassEncoderEndOcclusionQuery* = proc ( renderPassEncoder: RenderPassEncoder) {.cdecl.}
  ProcRenderPassEncoderEndPipelineStatisticsQuery* = proc ( renderPassEncoder: RenderPassEncoder) {.cdecl.}
  ProcRenderPassEncoderExecuteBundles* = proc ( renderPassEncoder: RenderPassEncoder; bundlesCount: uint; bundles: ptr RenderBundle) {.cdecl.}
  ProcRenderPassEncoderInsertDebugMarker* = proc ( renderPassEncoder: RenderPassEncoder; markerLabel: cstring) {.cdecl.}
  ProcRenderPassEncoderPopDebugGroup* = proc (renderPassEncoder: RenderPassEncoder) {.cdecl.}
  ProcRenderPassEncoderPushDebugGroup* = proc ( renderPassEncoder: RenderPassEncoder; groupLabel: cstring) {.cdecl.}
  # ProcRenderPassEncoderSetBindGroup* = proc (renderPassEncoder: RenderPassEncoder; groupIndex: uint; group: BindGroup; dynamicOffsetCount: uint; dynamicOffsets: ptr uint) {.cdecl.}
  ProcRenderPassEncoderSetBlendConstant* = proc ( renderPassEncoder: RenderPassEncoder; color: ptr Color) {.cdecl.}
  # ProcRenderPassEncoderSetIndexBuffer* = proc ( renderPassEncoder: RenderPassEncoder; buffer: Buffer; format: IndexFormat; offset: uint64; size: uint64) {.cdecl.}
  ProcRenderPassEncoderSetLabel* = proc (renderPassEncoder: RenderPassEncoder; label: cstring) {.cdecl.}
  ProcRenderPassEncoderSetPipeline* = proc (renderPassEncoder: RenderPassEncoder; pipeline: RenderPipeline) {.cdecl.}
  ProcRenderPassEncoderSetScissorRect* = proc ( renderPassEncoder: RenderPassEncoder; x: uint; y: uint; width: uint; height: uint) {.cdecl.}
  ProcRenderPassEncoderSetStencilReference* = proc ( renderPassEncoder: RenderPassEncoder; reference: uint) {.cdecl.}
  ProcRenderPassEncoderSetVertexBuffer* = proc ( renderPassEncoder: RenderPassEncoder; slot: uint; buffer: Buffer; offset: uint64; size: uint64) {.cdecl.}
  ProcRenderPassEncoderSetViewport* = proc (renderPassEncoder: RenderPassEncoder; x: cfloat; y: cfloat; width: cfloat; height: cfloat; minDepth: cfloat; maxDepth: cfloat) {.cdecl.}
  ProcRenderPipelineGetBindGroupLayout* = proc (renderPipeline: RenderPipeline; groupIndex: uint): BindGroupLayout {.cdecl.}
  ProcRenderPipelineSetLabel* = proc (renderPipeline: RenderPipeline; label: cstring) {.cdecl.}
  ProcSamplerSetLabel* = proc (sampler: Sampler; label: cstring) {.cdecl.}
  ProcShaderModuleGetCompilationInfo* = proc (shaderModule: ShaderModule; callback: CompilationInfoCallback; userdata: pointer) {.cdecl.}
  ProcShaderModuleSetLabel* = proc (shaderModule: ShaderModule; label: cstring) {.cdecl.}
  ProcSurfaceGetPreferredFormat* = proc (surface: Surface; adapter: Adapter): TextureFormat {.cdecl.}
  ProcSwapChainGetCurrentTextureView* = proc (swapChain: SwapChain): TextureView {.cdecl.}
  ProcSwapChainPresent* = proc (swapChain: SwapChain) {.cdecl.}
  ProcTextureCreateView* = proc (texture: Texture; descriptor: ptr TextureViewDescriptor): TextureView {.cdecl.}
  ProcTextureDestroy* = proc (texture: Texture) {.cdecl.}
  ProcTextureGetDepthOrArrayLayers* = proc (texture: Texture): uint {.cdecl.}
  ProcTextureGetDimension* = proc (texture: Texture): TextureDimension {.cdecl.}
  ProcTextureGetFormat* = proc (texture: Texture): TextureFormat {.cdecl.}
  ProcTextureGetHeight* = proc (texture: Texture): uint {.cdecl.}
  ProcTextureGetMipLevelCount* = proc (texture: Texture): uint {.cdecl.}
  ProcTextureGetSampleCount* = proc (texture: Texture): uint {.cdecl.}
  ProcTextureGetUsage* = proc (texture: Texture): TextureUsage {.cdecl.}
  ProcTextureGetWidth* = proc (texture: Texture): uint {.cdecl.}
  ProcTextureSetLabel* = proc (texture: Texture; label: cstring) {.cdecl.}
  ProcTextureViewSetLabel* = proc (textureView: TextureView; label: cstring) {.cdecl.}

const
  AdapterType_DiscreteGPU* = AdapterType(0x00000000)
  AdapterType_IntegratedGPU* = AdapterType(0x00000001)
  AdapterType_CPU* = AdapterType(0x00000002)
  AdapterType_Unknown* = AdapterType(0x00000003)

  AddressMode_Repeat* = AddressMode(0x00000000) 
  AddressMode_MirrorRepeat* = AddressMode(0x00000001)
  AddressMode_ClampToEdge* = AddressMode(0x00000002)

  # BackendType_Null* = BackendType(0x00000000) 
  # BackendType_WebGPU* = BackendType(0x00000001)
  # BackendType_D3D11* = BackendType(0x00000002)
  # BackendType_D3D12* = BackendType(0x00000003)
  # BackendType_Metal* = BackendType(0x00000004)
  # BackendType_Vulkan* = BackendType(0x00000005)
  # BackendType_OpenGL* = BackendType(0x00000006)
  # BackendType_OpenGLES* = BackendType(0x00000007)

  # BlendFactor_Zero* = BlendFactor(0x00000000) 
  # BlendFactor_One* = BlendFactor(0x00000001)
  # BlendFactor_Src* = BlendFactor(0x00000002) 
  # BlendFactor_OneMinusSrc* = BlendFactor(0x00000003)
  # BlendFactor_SrcAlpha* = BlendFactor(0x00000004)
  # BlendFactor_OneMinusSrcAlpha* = BlendFactor(0x00000005)
  # BlendFactor_Dst* = BlendFactor(0x00000006)
  # BlendFactor_OneMinusDst* = BlendFactor(0x00000007)
  # BlendFactor_DstAlpha* = BlendFactor(0x00000008)
  # BlendFactor_OneMinusDstAlpha* = BlendFactor(0x00000009)
  # BlendFactor_SrcAlphaSaturated* = BlendFactor(0x0000000A) 
  # BlendFactor_Constant* = BlendFactor(0x0000000B)
  # BlendFactor_OneMinusConstant* = BlendFactor(0x0000000C)

  # BlendOperation_Add* = BlendOperation(0x00000000)
  # BlendOperation_Subtract* = BlendOperation(0x00000001)
  # BlendOperation_ReverseSubtract* = BlendOperation(0x00000002)
  # BlendOperation_Min* = BlendOperation(0x00000003)
  # BlendOperation_Max* = BlendOperation(0x00000004)

  # BufferBindingType_Undefined* = BufferBindingType(0x00000000)
  # BufferBindingType_Uniform* = BufferBindingType(0x00000001)
  # BufferBindingType_Storage* = BufferBindingType(0x00000002)
  # BufferBindingType_ReadOnlyStorage* = BufferBindingType(0x00000003)

  # BufferMapAsyncStatus_Success* = BufferMapAsyncStatus(0x00000000)
  # BufferMapAsyncStatus_Error* = BufferMapAsyncStatus(0x00000001)
  # BufferMapAsyncStatus_Unknown* = BufferMapAsyncStatus(0x00000002)
  # BufferMapAsyncStatus_DeviceLost* = BufferMapAsyncStatus(0x00000003)
  # BufferMapAsyncStatus_DestroyedBeforeCallback* = BufferMapAsyncStatus(0x00000004)
  # BufferMapAsyncStatus_UnmappedBeforeCallback* = BufferMapAsyncStatus(0x00000005)

  # CompareFunction_Undefined* = CompareFunction(0x00000000)
  # CompareFunction_Never* = CompareFunction(0x00000001)
  # CompareFunction_Less* = CompareFunction(0x00000002)
  # CompareFunction_LessEqual* = CompareFunction(0x00000003)
  # CompareFunction_Greater* = CompareFunction(0x00000004)
  # CompareFunction_GreaterEqual* = CompareFunction(0x00000005)
  # CompareFunction_Equal* = CompareFunction(0x00000006)
  # CompareFunction_NotEqual* = CompareFunction(0x00000007)
  # CompareFunction_Always* = CompareFunction(0x00000008)

  # CompilationInfoRequestStatus_Success* = CompilationInfoRequestStatus(0x00000000)
  # CompilationInfoRequestStatus_Error* = CompilationInfoRequestStatus(0x00000001)
  # CompilationInfoRequestStatus_DeviceLost* = CompilationInfoRequestStatus(0x00000002)
  # CompilationInfoRequestStatus_Unknown* = CompilationInfoRequestStatus(0x00000003)

  # CompilationMessageType_Error* = CompilationMessageType(0x00000000)
  # CompilationMessageType_Warning* = CompilationMessageType(0x00000001)
  # CompilationMessageType_Info* = CompilationMessageType(0x00000002)

  # ComputePassTimestampLocation_Beginning* = ComputePassTimestampLocation(0x00000000)
  # ComputePassTimestampLocation_End* = ComputePassTimestampLocation(0x00000001)

  # CreatePipelineAsyncStatus_Success* = CreatePipelineAsyncStatus(0x00000000)
  # CreatePipelineAsyncStatus_Error* = CreatePipelineAsyncStatus(0x00000001)
  # CreatePipelineAsyncStatus_DeviceLost* = CreatePipelineAsyncStatus(0x00000002)
  # CreatePipelineAsyncStatus_DeviceDestroyed* = CreatePipelineAsyncStatus(0x00000003)
  # CreatePipelineAsyncStatus_Unknown* = CreatePipelineAsyncStatus(0x00000004)

  # CullMode_None* = CullMode(0x00000000)
  # CullMode_Front* = CullMode(0x00000001)
  # CullMode_Back* = CullMode(0x00000002)

  DeviceLostReason_Undefined* = DeviceLostReason(0x00000000)
  DeviceLostReason_Destroyed* = DeviceLostReason(0x00000001)

  # ErrorFilter_Validation* = ErrorFilter(0x00000000) 
  # ErrorFilter_OutOfMemory* = ErrorFilter(0x00000001)
  # ErrorFilter_Internal* = ErrorFilter(0x00000002)

  ErrorType_NoError* = ErrorType(0x00000000)
  ErrorType_Validation* = ErrorType(0x00000001)
  ErrorType_OutOfMemory* = ErrorType(0x00000002)
  ErrorType_Internal* = ErrorType(0x00000003)
  ErrorType_Unknown* = ErrorType(0x00000004)
  ErrorType_DeviceLost* = ErrorType(0x00000005)

  # Feature_Undefined* = Feature(0x00000000)
  # Feature_DepthClipControl* = Feature(0x00000001)
  # Feature_Depth32FloatStencil8* = Feature(0x00000002)
  # Feature_TimestampQuery* = Feature(0x00000003)
  # Feature_PipelineStatisticsQuery* = Feature(0x00000004)
  # Feature_TextureCompressionBC* = Feature(0x00000005)
  # Feature_TextureCompressionETC2* = Feature(0x00000006)
  # Feature_TextureCompressionASTC* = Feature(0x00000007)
  # Feature_IndirectFirstInstance* = Feature(0x00000008)
  # Feature_ShaderF16* = Feature(0x00000009)
  # Feature_RG11B10UfloatRenderable* = Feature(0x0000000A)

  FilterMode_Nearest* = FilterMode(0x00000000)
  FilterMode_Linear* = FilterMode(0x00000001)

  # FrontFace_CCW* = FrontFace(0x00000000)
  # FrontFace_CW* = FrontFace(0x00000001)

  # IndexFormat_Undefined* = IndexFormat(0x00000000)
  # IndexFormat_Uint16* = IndexFormat(0x00000001)
  # IndexFormat_Uint32* = IndexFormat(0x00000002)

  # LoadOp_Undefined* = LoadOp(0x00000000)
  # LoadOp_Clear* = LoadOp(0x00000001)
  # LoadOp_Load* = LoadOp(0x00000002)

  MipmapFilterMode_Nearest* = MipmapFilterMode(0x00000000)
  MipmapFilterMode_Linear* = MipmapFilterMode(0x00000001)

  PipelineStatisticName_VertexShaderInvocations* = PipelineStatisticName(0x00000000)
  PipelineStatisticName_ClipperInvocations* = PipelineStatisticName(0x00000001)
  PipelineStatisticName_ClipperPrimitivesOut* = PipelineStatisticName(0x00000002)
  PipelineStatisticName_FragmentShaderInvocations* = PipelineStatisticName(0x00000003)
  PipelineStatisticName_ComputeShaderInvocations* = PipelineStatisticName(0x00000004)

  # PresentMode_Immediate* = PresentMode(0x00000000)
  # PresentMode_Mailbox* = PresentMode(0x00000001)
  # PresentMode_Fifo* = PresentMode(0x00000002)

  # PrimitiveTopology_PointList* = PrimitiveTopology(0x00000000)
  # PrimitiveTopology_LineList* = PrimitiveTopology(0x00000001)
  # PrimitiveTopology_LineStrip* = PrimitiveTopology(0x00000002)
  # PrimitiveTopology_TriangleList* = PrimitiveTopology(0x00000003)
  # PrimitiveTopology_TriangleStrip* = PrimitiveTopology(0x00000004)

  # QueryType_Occlusion* = QueryType(0x00000000)
  # QueryType_PipelineStatistics* = QueryType(0x00000001)
  # QueryType_Timestamp* = QueryType(0x00000002)

  # QueueWorkDoneStatus_Success* = QueueWorkDoneStatus(0x00000000)
  # QueueWorkDoneStatus_Error* = QueueWorkDoneStatus(0x00000001)
  # QueueWorkDoneStatus_Unknown* = QueueWorkDoneStatus(0x00000002)
  # QueueWorkDoneStatus_DeviceLost* = QueueWorkDoneStatus(0x00000003)

  # RenderPassTimestampLocation_Beginning* = RenderPassTimestampLocation(0x00000000)
  # RenderPassTimestampLocation_End* = RenderPassTimestampLocation(0x00000001)

  # RequestAdapterStatus_Success* = RequestAdapterStatus(0x00000000)
  # RequestAdapterStatus_Unavailable* = RequestAdapterStatus(0x00000001)
  # RequestAdapterStatus_Error* = RequestAdapterStatus(0x00000002)
  # RequestAdapterStatus_Unknown* = RequestAdapterStatus(0x00000003)

  # RequestDeviceStatus_Success* = RequestDeviceStatus(0x00000000)
  # RequestDeviceStatus_Error* = RequestDeviceStatus(0x00000001)
  # RequestDeviceStatus_Unknown* = RequestDeviceStatus(0x00000002)

  # SType_Invalid* = SType(0x00000000)
  # SType_SurfaceDescriptorFromMetalLayer* = SType(0x00000001)
  # SType_SurfaceDescriptorFromWindowsHWND* = SType(0x00000002)
  # SType_SurfaceDescriptorFromXlibWindow* = SType(0x00000003)
  # SType_SurfaceDescriptorFromCanvasHTMLSelector* = SType(0x00000004)
  # SType_ShaderModuleSPIRVDescriptor* = SType(0x00000005)
  # SType_ShaderModuleWGSLDescriptor* = SType(0x00000006)
  # SType_PrimitiveDepthClipControl* = SType(0x00000007)
  # SType_SurfaceDescriptorFromWaylandSurface* = SType(0x00000008)
  # SType_SurfaceDescriptorFromAndroidNativeWindow* = SType(0x00000009)
  # SType_SurfaceDescriptorFromXcbWindow* = SType(0x0000000A)
  # SType_RenderPassDescriptorMaxDrawCount* = SType(0x0000000F)
  
  # SamplerBindingType_Undefined* = SamplerBindingType(0x00000000)
  # SamplerBindingType_Filtering* = SamplerBindingType(0x00000001)
  # SamplerBindingType_NonFiltering* = SamplerBindingType(0x00000002)
  # SamplerBindingType_Comparison* = SamplerBindingType(0x00000003)

  # StencilOperation_Keep* = StencilOperation(0x00000000)
  # StencilOperation_Zero* = StencilOperation(0x00000001)
  # StencilOperation_Replace* = StencilOperation(0x00000002)
  # StencilOperation_Invert* = StencilOperation(0x00000003)
  # StencilOperation_IncrementClamp* = StencilOperation(0x00000004)
  # StencilOperation_DecrementClamp* = StencilOperation(0x00000005)
  # StencilOperation_IncrementWrap* = StencilOperation(0x00000006)
  # StencilOperation_DecrementWrap* = StencilOperation(0x00000007)

  # StorageTextureAccess_Undefined* = StorageTextureAccess(0x00000000)
  # StorageTextureAccess_WriteOnly* = StorageTextureAccess(0x00000001)

  # StoreOp_Undefined* = StoreOp(0x00000000)
  # StoreOp_Store* = StoreOp(0x00000001)
  # StoreOp_Discard* = StoreOp(0x00000002)

  TextureAspect_All* = TextureAspect(0x00000000) 
  TextureAspect_StencilOnly* = TextureAspect(0x00000001)
  TextureAspect_DepthOnly* = TextureAspect(0x00000002)

  TextureComponentType_Float* = TextureComponentType(0x00000000)
  TextureComponentType_Sint* = TextureComponentType(0x00000001)
  TextureComponentType_Uint* = TextureComponentType(0x00000002)
  TextureComponentType_DepthComparison* = TextureComponentType(0x00000003)

  # TextureDimension_1D* = TextureDimension(0x00000000)
  # TextureDimension_2D* = TextureDimension(0x00000001)
  # TextureDimension_3D* = TextureDimension(0x00000002)

  # TextureFormat_Undefined* = TextureFormat(0x00000000) 
  # TextureFormat_R8Unorm* = TextureFormat(0x00000001)
  # TextureFormat_R8Snorm* = TextureFormat(0x00000002) 
  # TextureFormat_R8Uint* = TextureFormat(0x00000003)
  # TextureFormat_R8Sint* = TextureFormat(0x00000004) 
  # TextureFormat_R16Uint* = TextureFormat(0x00000005)
  # TextureFormat_R16Sint* = TextureFormat(0x00000006) 
  # TextureFormat_R16Float* = TextureFormat(0x00000007)
  # TextureFormat_RG8Unorm* = TextureFormat(0x00000008) 
  # TextureFormat_RG8Snorm* = TextureFormat(0x00000009)
  # TextureFormat_RG8Uint* = TextureFormat(0x0000000A) 
  # TextureFormat_RG8Sint* = TextureFormat(0x0000000B)
  # TextureFormat_R32Float* = TextureFormat(0x0000000C) 
  # TextureFormat_R32Uint* = TextureFormat(0x0000000D)
  # TextureFormat_R32Sint* = TextureFormat(0x0000000E) 
  # TextureFormat_RG16Uint* = TextureFormat(0x0000000F)
  # TextureFormat_RG16Sint* = TextureFormat(0x00000010) 
  # TextureFormat_RG16Float* = TextureFormat(0x00000011)
  # TextureFormat_RGBA8Unorm* = TextureFormat(0x00000012)
  # TextureFormat_RGBA8UnormSrgb* = TextureFormat(0x00000013)
  # TextureFormat_RGBA8Snorm* = TextureFormat(0x00000014) 
  # TextureFormat_RGBA8Uint* = TextureFormat(0x00000015)
  # TextureFormat_RGBA8Sint* = TextureFormat(0x00000016) 
  # TextureFormat_BGRA8Unorm* = TextureFormat(0x00000017)
  # TextureFormat_BGRA8UnormSrgb* = TextureFormat(0x00000018)
  # TextureFormat_RGB10A2Unorm* = TextureFormat(0x00000019)
  # TextureFormat_RG11B10Ufloat* = TextureFormat(0x0000001A)
  # TextureFormat_RGB9E5Ufloat* = TextureFormat(0x0000001B) 
  # TextureFormat_RG32Float* = TextureFormat(0x0000001C)
  # TextureFormat_RG32Uint* = TextureFormat(0x0000001D) 
  # TextureFormat_RG32Sint* = TextureFormat(0x0000001E)
  # TextureFormat_RGBA16Uint* = TextureFormat(0x0000001F) 
  # TextureFormat_RGBA16Sint* = TextureFormat(0x00000020)
  # TextureFormat_RGBA16Float* = TextureFormat(0x00000021) 
  # TextureFormat_RGBA32Float* = TextureFormat(0x00000022)
  # TextureFormat_RGBA32Uint* = TextureFormat(0x00000023) 
  # TextureFormat_RGBA32Sint* = TextureFormat(0x00000024)
  # TextureFormat_Stencil8* = TextureFormat(0x00000025) 
  # TextureFormat_Depth16Unorm* = TextureFormat(0x00000026)
  # TextureFormat_Depth24Plus* = TextureFormat(0x00000027)
  # TextureFormat_Depth24PlusStencil8* = TextureFormat(0x00000028)
  # TextureFormat_Depth32Float* = TextureFormat(0x00000029)
  # TextureFormat_Depth32FloatStencil8* = TextureFormat(0x0000002A)
  # TextureFormat_BC1RGBAUnorm* = TextureFormat(0x0000002B)
  # TextureFormat_BC1RGBAUnormSrgb* = TextureFormat(0x0000002C)
  # TextureFormat_BC2RGBAUnorm* = TextureFormat(0x0000002D)
  # TextureFormat_BC2RGBAUnormSrgb* = TextureFormat(0x0000002E)
  # TextureFormat_BC3RGBAUnorm* = TextureFormat(0x0000002F)
  # TextureFormat_BC3RGBAUnormSrgb* = TextureFormat(0x00000030)
  # TextureFormat_BC4RUnorm* = TextureFormat(0x00000031) 
  # TextureFormat_BC4RSnorm* = TextureFormat(0x00000032)
  # TextureFormat_BC5RGUnorm* = TextureFormat(0x00000033) 
  # TextureFormat_BC5RGSnorm* = TextureFormat(0x00000034)
  # TextureFormat_BC6HRGBUfloat* = TextureFormat(0x00000035)
  # TextureFormat_BC6HRGBFloat* = TextureFormat(0x00000036)
  # TextureFormat_BC7RGBAUnorm* = TextureFormat(0x00000037)
  # TextureFormat_BC7RGBAUnormSrgb* = TextureFormat(0x00000038)
  # TextureFormat_ETC2RGB8Unorm* = TextureFormat(0x00000039)
  # TextureFormat_ETC2RGB8UnormSrgb* = TextureFormat(0x0000003A)
  # TextureFormat_ETC2RGB8A1Unorm* = TextureFormat(0x0000003B)
  # TextureFormat_ETC2RGB8A1UnormSrgb* = TextureFormat(0x0000003C)
  # TextureFormat_ETC2RGBA8Unorm* = TextureFormat(0x0000003D)
  # TextureFormat_ETC2RGBA8UnormSrgb* = TextureFormat(0x0000003E)
  # TextureFormat_EACR11Unorm* = TextureFormat(0x0000003F) 
  # TextureFormat_EACR11Snorm* = TextureFormat(0x00000040)
  # TextureFormat_EACRG11Unorm* = TextureFormat(0x00000041)
  # TextureFormat_EACRG11Snorm* = TextureFormat(0x00000042)
  # TextureFormat_ASTC4x4Unorm* = TextureFormat(0x00000043)
  # TextureFormat_ASTC4x4UnormSrgb* = TextureFormat(0x00000044)
  # TextureFormat_ASTC5x4Unorm* = TextureFormat(0x00000045)
  # TextureFormat_ASTC5x4UnormSrgb* = TextureFormat(0x00000046)
  # TextureFormat_ASTC5x5Unorm* = TextureFormat(0x00000047)
  # TextureFormat_ASTC5x5UnormSrgb* = TextureFormat(0x00000048)
  # TextureFormat_ASTC6x5Unorm* = TextureFormat(0x00000049)
  # TextureFormat_ASTC6x5UnormSrgb* = TextureFormat(0x0000004A)
  # TextureFormat_ASTC6x6Unorm* = TextureFormat(0x0000004B)
  # TextureFormat_ASTC6x6UnormSrgb* = TextureFormat(0x0000004C)
  # TextureFormat_ASTC8x5Unorm* = TextureFormat(0x0000004D)
  # TextureFormat_ASTC8x5UnormSrgb* = TextureFormat(0x0000004E)
  # TextureFormat_ASTC8x6Unorm* = TextureFormat(0x0000004F)
  # TextureFormat_ASTC8x6UnormSrgb* = TextureFormat(0x00000050)
  # TextureFormat_ASTC8x8Unorm* = TextureFormat(0x00000051)
  # TextureFormat_ASTC8x8UnormSrgb* = TextureFormat(0x00000052)
  # TextureFormat_ASTC10x5Unorm* = TextureFormat(0x00000053)
  # TextureFormat_ASTC10x5UnormSrgb* = TextureFormat(0x00000054)
  # TextureFormat_ASTC10x6Unorm* = TextureFormat(0x00000055)
  # TextureFormat_ASTC10x6UnormSrgb* = TextureFormat(0x00000056)
  # TextureFormat_ASTC10x8Unorm* = TextureFormat(0x00000057)
  # TextureFormat_ASTC10x8UnormSrgb* = TextureFormat(0x00000058)
  # TextureFormat_ASTC10x10Unorm* = TextureFormat(0x00000059)
  # TextureFormat_ASTC10x10UnormSrgb* = TextureFormat(0x0000005A)
  # TextureFormat_ASTC12x10Unorm* = TextureFormat(0x0000005B)
  # TextureFormat_ASTC12x10UnormSrgb* = TextureFormat(0x0000005C)
  # TextureFormat_ASTC12x12Unorm* = TextureFormat(0x0000005D)
  # TextureFormat_ASTC12x12UnormSrgb* = TextureFormat(0x0000005E)

  # TextureSampleType_Undefined* = TextureSampleType(0x00000000) 
  # TextureSampleType_Float* = TextureSampleType(0x00000001)
  # TextureSampleType_UnfilterableFloat* = TextureSampleType(0x00000002)
  # TextureSampleType_Depth* = TextureSampleType(0x00000003) 
  # TextureSampleType_Sint* = TextureSampleType(0x00000004)
  # TextureSampleType_Uint* = TextureSampleType(0x00000005)

  # TextureViewDimension_Undefined* = TextureViewDimension(0x00000000)
  # TextureViewDimension_1D* = TextureViewDimension(0x00000001) 
  # TextureViewDimension_2D* = TextureViewDimension(0x00000002)
  # TextureViewDimension_2DArray* = TextureViewDimension(0x00000003)
  # TextureViewDimension_Cube* = TextureViewDimension(0x00000004)
  # TextureViewDimension_CubeArray* = TextureViewDimension(0x00000005)
  # TextureViewDimension_3D* = TextureViewDimension(0x00000006)

  # VertexFormat_Undefined* = VertexFormat(0x00000000) 
  # VertexFormat_Uint8x2* = VertexFormat(0x00000001)
  # VertexFormat_Uint8x4* = VertexFormat(0x00000002) 
  # VertexFormat_Sint8x2* = VertexFormat(0x00000003)
  # VertexFormat_Sint8x4* = VertexFormat(0x00000004) 
  # VertexFormat_Unorm8x2* = VertexFormat(0x00000005)
  # VertexFormat_Unorm8x4* = VertexFormat(0x00000006) 
  # VertexFormat_Snorm8x2* = VertexFormat(0x00000007)
  # VertexFormat_Snorm8x4* = VertexFormat(0x00000008) 
  # VertexFormat_Uint16x2* = VertexFormat(0x00000009)
  # VertexFormat_Uint16x4* = VertexFormat(0x0000000A) 
  # VertexFormat_Sint16x2* = VertexFormat(0x0000000B)
  # VertexFormat_Sint16x4* = VertexFormat(0x0000000C) 
  # VertexFormat_Unorm16x2* = VertexFormat(0x0000000D)
  # VertexFormat_Unorm16x4* = VertexFormat(0x0000000E) 
  # VertexFormat_Snorm16x2* = VertexFormat(0x0000000F)
  # VertexFormat_Snorm16x4* = VertexFormat(0x00000010) 
  # VertexFormat_Float16x2* = VertexFormat(0x00000011)
  # VertexFormat_Float16x4* = VertexFormat(0x00000012) 
  # VertexFormat_Float32* = VertexFormat(0x00000013)
  # VertexFormat_Float32x2* = VertexFormat(0x00000014) 
  # VertexFormat_Float32x3* = VertexFormat(0x00000015)
  # VertexFormat_Float32x4* = VertexFormat(0x00000016) 
  # VertexFormat_Uint32* = VertexFormat(0x00000017)
  # VertexFormat_Uint32x2* = VertexFormat(0x00000018) 
  # VertexFormat_Uint32x3* = VertexFormat(0x00000019)
  # VertexFormat_Uint32x4* = VertexFormat(0x0000001A) 
  # VertexFormat_Sint32* = VertexFormat(0x0000001B)
  # VertexFormat_Sint32x2* = VertexFormat(0x0000001C) 
  # VertexFormat_Sint32x3* = VertexFormat(0x0000001D)
  # VertexFormat_Sint32x4* = VertexFormat(0x0000001E)

  # VertexStepMode_Vertex* = VertexStepMode(0x00000000) 
  # VertexStepMode_Instance* = VertexStepMode(0x00000001)
  # VertexStepMode_VertexBufferNotUsed* = VertexStepMode(0x00000002)

  BufferUsage_None* = BufferUsage(0x00000000) 
  BufferUsage_MapRead* = BufferUsage(0x00000001)
  BufferUsage_MapWrite* = BufferUsage(0x00000002) 
  BufferUsage_CopySrc* = BufferUsage(0x00000004)
  BufferUsage_CopyDst* = BufferUsage(0x00000008) 
  BufferUsage_Index* = BufferUsage(0x00000010)
  BufferUsage_Vertex* = BufferUsage(0x00000020) 
  BufferUsage_Uniform* = BufferUsage(0x00000040)
  BufferUsage_Storage* = BufferUsage(0x00000080) 
  BufferUsage_Indirect* = BufferUsage(0x00000100)
  BufferUsage_QueryResolve* = BufferUsage(0x00000200)

  # ColorWriteMask_None* = ColorWriteMask(0x00000000) 
  # ColorWriteMask_Red* = ColorWriteMask(0x00000001)
  # ColorWriteMask_Green* = ColorWriteMask(0x00000002) 
  # ColorWriteMask_Blue* = ColorWriteMask(0x00000004)
  # ColorWriteMask_Alpha* = ColorWriteMask(0x00000008) 
  # ColorWriteMask_All* = ColorWriteMask(0x0000000F)

  # MapMode_None* = MapMode(0x00000000) 
  # MapMode_Read* = MapMode(0x00000001) 
  # MapMode_Write* = MapMode(0x00000002)

  # ShaderStage_None* = ShaderStage(0x00000000)
  # ShaderStage_Vertex* = ShaderStage(0x00000001)
  # ShaderStage_Fragment* = ShaderStage(0x00000002)
  # ShaderStage_Compute* = ShaderStage(0x00000004)

  # TextureUsage_None* = TextureUsage(0x00000000)
  # TextureUsage_CopySrc* = TextureUsage(0x00000001)
  # TextureUsage_CopyDst* = TextureUsage(0x00000002)
  # TextureUsage_TextureBinding* = TextureUsage(0x00000004)
  # TextureUsage_StorageBinding* = TextureUsage(0x00000008)
  # TextureUsage_RenderAttachment* = TextureUsage(0x00000010)

# proc getProcAddress*(device: Device; procName: cstring): Proc {.cdecl, importc: "wgpuGetProcAddress", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc adapterEnumerateFeatures*(adapter: Adapter; features: ptr Feature): csize_t {.cdecl, importc:"wgpuAdapterEnumerateFeatures".}
# proc adapterGetLimits*(adapter: Adapter; limits: ptr SupportedLimits): bool {.cdecl, importc: "wgpuAdapterGetLimits".}
proc adapterGetProperties*(adapter: Adapter; properties: ptr AdapterProperties) {.cdecl, importc:"wgpuAdapterGetProperties".}
proc adapterHasFeature*(adapter: Adapter; feature: Feature): bool {.cdecl, importc: "wgpuAdapterHasFeature".}
# proc adapterRequestDevice*(adapter: Adapter; descriptor: ptr DeviceDescriptor; callback: RequestDeviceCallback; userdata: pointer) {.cdecl, importc:"wgpuAdapterRequestDevice".}
# proc bindGroupSetLabel*(bindGroup: BindGroup; label: cstring) {.cdecl, importc: "wgpuBindGroupSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc bindGroupLayoutSetLabel*(bindGroupLayout: BindGroupLayout; label: cstring) {.cdecl, importc:"wgpuBindGroupLayoutSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc bufferDestroy*(buffer: Buffer) {.cdecl, importc: "wgpuBufferDestroy".}
proc bufferGetConstMappedRange*(buffer: Buffer; offset: csize_t; size: csize_t): pointer {.cdecl, importc:"wgpuBufferGetConstMappedRange".}
# proc bufferGetMappedRange*(buffer: Buffer; offset: csize_t; size: csize_t): pointer {.cdecl, importc:"wgpuBufferGetMappedRange".}
# proc bufferGetSize*(buffer: Buffer): uint64 {.cdecl, importc: "wgpuBufferGetSize", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc bufferGetUsage*(buffer: Buffer): BufferUsage {.cdecl, importc: "wgpuBufferGetUsage", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc bufferMapAsync*(buffer: Buffer; mode: MapModeFlags; offset: csize_t; size: csize_t; callback: BufferMapCallback; userdata: pointer) {.cdecl, importc:"wgpuBufferMapAsync".}
# proc bufferSetLabel*(buffer: Buffer; label: cstring) {.cdecl, importc: "wgpuBufferSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc bufferUnmap*(buffer: Buffer) {.cdecl, importc: "wgpuBufferUnmap".}
# proc commandBufferSetLabel*(commandBuffer: CommandBuffer; label: cstring) {.cdecl, importc: "wgpuCommandBufferSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc commandEncoderBeginComputePass*(commandEncoder: CommandEncoder; descriptor: ptr ComputePassDescriptor): ComputePassEncoder {.cdecl, importc:"wgpuCommandEncoderBeginComputePass".}
# proc commandEncoderBeginRenderPass*(commandEncoder: CommandEncoder; descriptor: ptr RenderPassDescriptor): RenderPassEncoder {.cdecl, importc:"wgpuCommandEncoderBeginRenderPass".}
proc commandEncoderClearBuffer*(commandEncoder: CommandEncoder; buffer: Buffer; offset: uint64; size: uint64) {.cdecl, importc:"wgpuCommandEncoderClearBuffer".}
# proc commandEncoderCopyBufferToBuffer*(commandEncoder: CommandEncoder; source: Buffer; sourceOffset: uint64; destination: Buffer; destinationOffset: uint64; size: uint64) {.cdecl, importc:"wgpuCommandEncoderCopyBufferToBuffer".}
proc commandEncoderCopyBufferToTexture*(commandEncoder: CommandEncoder; source: ptr ImageCopyBuffer; destination: ptr ImageCopyTexture; copySize: ptr Extent3D) {.cdecl, importc:"wgpuCommandEncoderCopyBufferToTexture".}
proc commandEncoderCopyTextureToBuffer*(commandEncoder: CommandEncoder; source: ptr ImageCopyTexture; destination: ptr ImageCopyBuffer; copySize: ptr Extent3D) {.cdecl, importc:"wgpuCommandEncoderCopyTextureToBuffer".}
proc commandEncoderCopyTextureToTexture*(commandEncoder: CommandEncoder; source: ptr ImageCopyTexture; destination: ptr ImageCopyTexture; copySize: ptr Extent3D) {.cdecl, importc:"wgpuCommandEncoderCopyTextureToTexture".}
# proc commandEncoderFinish*(commandEncoder: CommandEncoder; descriptor: ptr CommandBufferDescriptor): CommandBuffer {.cdecl, importc:"wgpuCommandEncoderFinish".}
proc commandEncoderInsertDebugMarker*(commandEncoder: CommandEncoder; markerLabel: cstring) {.cdecl, importc:"wgpuCommandEncoderInsertDebugMarker".}
proc commandEncoderPopDebugGroup*(commandEncoder: CommandEncoder) {.cdecl, importc: "wgpuCommandEncoderPopDebugGroup".}
proc commandEncoderPushDebugGroup*(commandEncoder: CommandEncoder; groupLabel: cstring) {.cdecl, importc:"wgpuCommandEncoderPushDebugGroup".}
proc commandEncoderResolveQuerySet*(commandEncoder: CommandEncoder; querySet: QuerySet; firstQuery: uint; queryCount: uint; destination: Buffer; destinationOffset: uint64) {.cdecl, importc:"wgpuCommandEncoderResolveQuerySet".}
# proc commandEncoderSetLabel*(commandEncoder: CommandEncoder; label: cstring) {.cdecl, importc:"wgpuCommandEncoderSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc commandEncoderWriteTimestamp*(commandEncoder: CommandEncoder; querySet: QuerySet; queryIndex: uint) {.cdecl, importc:"wgpuCommandEncoderWriteTimestamp".}
proc computePassEncoderBeginPipelineStatisticsQuery*( computePassEncoder: ComputePassEncoder; querySet: QuerySet; queryIndex: uint) {.cdecl, importc:"wgpuComputePassEncoderBeginPipelineStatisticsQuery".}
# proc computePassEncoderDispatchWorkgroups*( computePassEncoder: ComputePassEncoder; workgroupCountX: uint; workgroupCountY: uint; workgroupCountZ: uint) {.cdecl, importc:"wgpuComputePassEncoderDispatchWorkgroups".}
proc computePassEncoderDispatchWorkgroupsIndirect*( computePassEncoder: ComputePassEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl, importc:"wgpuComputePassEncoderDispatchWorkgroupsIndirect".}
# proc computePassEncoderEnd*(computePassEncoder: ComputePassEncoder) {.cdecl, importc: "wgpuComputePassEncoderEnd".}
proc computePassEncoderEndPipelineStatisticsQuery*( computePassEncoder: ComputePassEncoder) {.cdecl, importc:"wgpuComputePassEncoderEndPipelineStatisticsQuery".}
proc computePassEncoderInsertDebugMarker*( computePassEncoder: ComputePassEncoder; markerLabel: cstring) {.cdecl, importc:"wgpuComputePassEncoderInsertDebugMarker".}
proc computePassEncoderPopDebugGroup*(computePassEncoder: ComputePassEncoder) {.cdecl, importc:"wgpuComputePassEncoderPopDebugGroup".}
proc computePassEncoderPushDebugGroup*( computePassEncoder: ComputePassEncoder; groupLabel: cstring) {.cdecl, importc:"wgpuComputePassEncoderPushDebugGroup".}
# proc computePassEncoderSetBindGroup*(computePassEncoder: ComputePassEncoder; groupIndex: uint; group: BindGroup; dynamicOffsetCount: uint; dynamicOffsets: ptr uint) {.cdecl, importc:"wgpuComputePassEncoderSetBindGroup".}
# proc computePassEncoderSetLabel*(computePassEncoder: ComputePassEncoder; label: cstring) {.cdecl, importc:"wgpuComputePassEncoderSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc computePassEncoderSetPipeline*(computePassEncoder: ComputePassEncoder; pipeline: ComputePipeline) {.cdecl, importc:"wgpuComputePassEncoderSetPipeline".}
# proc computePipelineGetBindGroupLayout*(computePipeline: ComputePipeline; groupIndex: uint): BindGroupLayout {.cdecl, importc:"wgpuComputePipelineGetBindGroupLayout".}
# proc computePipelineSetLabel*(computePipeline: ComputePipeline; label: cstring) {.cdecl, importc:"wgpuComputePipelineSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc deviceCreateBindGroup*(device: Device; descriptor: ptr BindGroupDescriptor): BindGroup {.cdecl, importc:"wgpuDeviceCreateBindGroup".}
# proc deviceCreateBindGroupLayout*(device: Device; descriptor: ptr BindGroupLayoutDescriptor): BindGroupLayout {.cdecl, importc:"wgpuDeviceCreateBindGroupLayout".}
# proc deviceCreateBuffer*(device: Device; descriptor: ptr BufferDescriptor): Buffer {.cdecl, importc:"wgpuDeviceCreateBuffer".}
# proc deviceCreateCommandEncoder*(device: Device; descriptor: ptr CommandEncoderDescriptor): CommandEncoder {.cdecl, importc:"wgpuDeviceCreateCommandEncoder".}
# proc deviceCreateComputePipeline*(device: Device; descriptor: ptr ComputePipelineDescriptor): ComputePipeline {.cdecl, importc:"wgpuDeviceCreateComputePipeline".}
# proc deviceCreateComputePipelineAsync*(device: Device; descriptor: ptr ComputePipelineDescriptor; callback: CreateComputePipelineAsyncCallback; userdata: pointer) {.cdecl, importc:"wgpuDeviceCreateComputePipelineAsync", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc deviceCreatePipelineLayout*(device: Device; descriptor: ptr PipelineLayoutDescriptor): PipelineLayout {.cdecl, importc:"wgpuDeviceCreatePipelineLayout".}
proc deviceCreateQuerySet*(device: Device; descriptor: ptr QuerySetDescriptor): QuerySet {.cdecl, importc:"wgpuDeviceCreateQuerySet".}
proc deviceCreateRenderBundleEncoder*(device: Device; descriptor: ptr RenderBundleEncoderDescriptor): RenderBundleEncoder {.cdecl, importc:"wgpuDeviceCreateRenderBundleEncoder".}
# proc deviceCreateRenderPipeline*(device: Device; descriptor: ptr RenderPipelineDescriptor): RenderPipeline {.cdecl, importc:"wgpuDeviceCreateRenderPipeline".}
# proc deviceCreateRenderPipelineAsync*(device: Device; descriptor: ptr RenderPipelineDescriptor; callback: CreateRenderPipelineAsyncCallback; userdata: pointer) {.cdecl, importc:"wgpuDeviceCreateRenderPipelineAsync".}
proc deviceCreateSampler*(device: Device; descriptor: ptr SamplerDescriptor): Sampler {.cdecl, importc:"wgpuDeviceCreateSampler".}
# proc deviceCreateShaderModule*(device: Device; descriptor: ptr ShaderModuleDescriptor): ShaderModule {.cdecl, importc:"wgpuDeviceCreateShaderModule".}
# proc deviceCreateSwapChain*(device: Device; surface: Surface; descriptor: ptr SwapChainDescriptor): SwapChain {.cdecl, importc:"wgpuDeviceCreateSwapChain".}
proc deviceCreateTexture*(device: Device; descriptor: ptr TextureDescriptor): Texture {.cdecl, importc:"wgpuDeviceCreateTexture".}
proc deviceDestroy*(device: Device) {.cdecl, importc: "wgpuDeviceDestroy".}
proc deviceEnumerateFeatures*(device: Device; features: ptr Feature): csize_t {.cdecl, importc:"wgpuDeviceEnumerateFeatures".}
# proc deviceGetLimits*(device: Device; limits: ptr SupportedLimits): bool {.cdecl, importc: "wgpuDeviceGetLimits".}
# proc deviceGetQueue*(device: Device): Queue {.cdecl, importc: "wgpuDeviceGetQueue".}
proc deviceHasFeature*(device: Device; feature: Feature): bool {.cdecl, importc: "wgpuDeviceHasFeature".}
# proc devicePopErrorScope*(device: Device; callback: ErrorCallback; userdata: pointer): bool {.cdecl, importc:"wgpuDevicePopErrorScope", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc devicePushErrorScope*(device: Device; filter: ErrorFilter) {.cdecl, importc: "wgpuDevicePushErrorScope", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc deviceSetDeviceLostCallback*(device: Device; callback: DeviceLostCallback; userdata: pointer) {.cdecl, importc:"wgpuDeviceSetDeviceLostCallback".}
# proc deviceSetLabel*(device: Device; label: cstring) {.cdecl, importc: "wgpuDeviceSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc deviceSetUncapturedErrorCallback*(device: Device; callback: ErrorCallback; userdata: pointer) {.cdecl, importc:"wgpuDeviceSetUncapturedErrorCallback".}
# proc instanceCreateSurface*(instance: Instance; descriptor: ptr SurfaceDescriptor): Surface {.cdecl, importc:"wgpuInstanceCreateSurface".}
# proc instanceProcessEvents*(instance: Instance) {.cdecl, importc: "wgpuInstanceProcessEvents", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc instanceRequestAdapter*(instance: Instance; options: ptr RequestAdapterOptions; callback: RequestAdapterCallback; userdata: pointer) {.cdecl, importc:"wgpuInstanceRequestAdapter".}
# proc pipelineLayoutSetLabel*(pipelineLayout: PipelineLayout; label: cstring) {.cdecl, importc:"wgpuPipelineLayoutSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc querySetDestroy*(querySet: QuerySet) {.cdecl, importc: "wgpuQuerySetDestroy", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc querySetGetCount*(querySet: QuerySet): uint {.cdecl, importc: "wgpuQuerySetGetCount", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc querySetGetType*(querySet: QuerySet): QueryType {.cdecl, importc: "wgpuQuerySetGetType", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc querySetSetLabel*(querySet: QuerySet; label: cstring) {.cdecl, importc: "wgpuQuerySetSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc queueOnSubmittedWorkDone*(queue: Queue; callback: QueueWorkDoneCallback; userdata: pointer) {.cdecl, importc:"wgpuQueueOnSubmittedWorkDone".}
# proc queueSetLabel*(queue: Queue; label: cstring) {.cdecl, importc: "wgpuQueueSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc queueSubmit*(queue: Queue; commandCount: uint; commands: ptr CommandBuffer) {.cdecl, importc:"wgpuQueueSubmit".}
# proc queueWriteBuffer*(queue: Queue; buffer: Buffer; bufferOffset: uint64; data: pointer; size: csize_t) {.cdecl, importc:"wgpuQueueWriteBuffer".}
proc queueWriteTexture*(queue: Queue; destination: ptr ImageCopyTexture; data: pointer; dataSize: csize_t; dataLayout: ptr TextureDataLayout; writeSize: ptr Extent3D) {.cdecl, importc:"wgpuQueueWriteTexture".}
proc renderBundleEncoderDraw*(renderBundleEncoder: RenderBundleEncoder; vertexCount: uint; instanceCount: uint; firstVertex: uint; firstInstance: uint) {.cdecl, importc:"wgpuRenderBundleEncoderDraw".}
proc renderBundleEncoderDrawIndexed*(renderBundleEncoder: RenderBundleEncoder; indexCount: uint; instanceCount: uint; firstIndex: uint; baseVertex: int32; firstInstance: uint) {.cdecl, importc:"wgpuRenderBundleEncoderDrawIndexed".}
proc renderBundleEncoderDrawIndexedIndirect*( renderBundleEncoder: RenderBundleEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl, importc:"wgpuRenderBundleEncoderDrawIndexedIndirect".}
proc renderBundleEncoderDrawIndirect*( renderBundleEncoder: RenderBundleEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl, importc:"wgpuRenderBundleEncoderDrawIndirect".}
proc renderBundleEncoderFinish*(renderBundleEncoder: RenderBundleEncoder; descriptor: ptr RenderBundleDescriptor): RenderBundle {.cdecl, importc:"wgpuRenderBundleEncoderFinish".}
proc renderBundleEncoderInsertDebugMarker*( renderBundleEncoder: RenderBundleEncoder; markerLabel: cstring) {.cdecl, importc:"wgpuRenderBundleEncoderInsertDebugMarker".}
proc renderBundleEncoderPopDebugGroup*( renderBundleEncoder: RenderBundleEncoder) {.cdecl, importc:"wgpuRenderBundleEncoderPopDebugGroup".}
proc renderBundleEncoderPushDebugGroup*( renderBundleEncoder: RenderBundleEncoder; groupLabel: cstring) {.cdecl, importc:"wgpuRenderBundleEncoderPushDebugGroup".}
proc renderBundleEncoderSetBindGroup*( renderBundleEncoder: RenderBundleEncoder; groupIndex: uint; group: BindGroup; dynamicOffsetCount: uint; dynamicOffsets: ptr uint) {.cdecl, importc:"wgpuRenderBundleEncoderSetBindGroup".}
proc renderBundleEncoderSetIndexBuffer*( renderBundleEncoder: RenderBundleEncoder; buffer: Buffer; format: IndexFormat; offset: uint64; size: uint64) {.cdecl, importc:"wgpuRenderBundleEncoderSetIndexBuffer".}
# proc renderBundleEncoderSetLabel*(renderBundleEncoder: RenderBundleEncoder; label: cstring) {.cdecl, importc:"wgpuRenderBundleEncoderSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc renderBundleEncoderSetPipeline*(renderBundleEncoder: RenderBundleEncoder; pipeline: RenderPipeline) {.cdecl, importc:"wgpuRenderBundleEncoderSetPipeline".}
proc renderBundleEncoderSetVertexBuffer*( renderBundleEncoder: RenderBundleEncoder; slot: uint; buffer: Buffer; offset: uint64; size: uint64) {.cdecl, importc:"wgpuRenderBundleEncoderSetVertexBuffer".}
# proc renderPassEncoderBeginOcclusionQuery*( renderPassEncoder: RenderPassEncoder; queryIndex: uint) {.cdecl, importc:"wgpuRenderPassEncoderBeginOcclusionQuery", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc renderPassEncoderBeginPipelineStatisticsQuery*( renderPassEncoder: RenderPassEncoder; querySet: QuerySet; queryIndex: uint) {.cdecl, importc:"wgpuRenderPassEncoderBeginPipelineStatisticsQuery".}
# proc renderPassEncoderDraw*(renderPassEncoder: RenderPassEncoder; vertexCount: uint; instanceCount: uint; firstVertex: uint; firstInstance: uint) {.cdecl, importc:"wgpuRenderPassEncoderDraw".}
# proc renderPassEncoderDrawIndexed*(renderPassEncoder: RenderPassEncoder; indexCount: uint; instanceCount: uint; firstIndex: uint; baseVertex: int32; firstInstance: uint) {.cdecl, importc:"wgpuRenderPassEncoderDrawIndexed".}
proc renderPassEncoderDrawIndexedIndirect*( renderPassEncoder: RenderPassEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl, importc:"wgpuRenderPassEncoderDrawIndexedIndirect".}
proc renderPassEncoderDrawIndirect*(renderPassEncoder: RenderPassEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl, importc:"wgpuRenderPassEncoderDrawIndirect".}
# proc renderPassEncoderEnd*(renderPassEncoder: RenderPassEncoder) {.cdecl, importc: "wgpuRenderPassEncoderEnd".}
# proc renderPassEncoderEndOcclusionQuery*(renderPassEncoder: RenderPassEncoder) {.cdecl, importc:"wgpuRenderPassEncoderEndOcclusionQuery", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc renderPassEncoderEndPipelineStatisticsQuery*( renderPassEncoder: RenderPassEncoder) {.cdecl, importc:"wgpuRenderPassEncoderEndPipelineStatisticsQuery".}
proc renderPassEncoderExecuteBundles*(renderPassEncoder: RenderPassEncoder; bundlesCount: uint; bundles: ptr RenderBundle) {.cdecl, importc:"wgpuRenderPassEncoderExecuteBundles".}
proc renderPassEncoderInsertDebugMarker*( renderPassEncoder: RenderPassEncoder; markerLabel: cstring) {.cdecl, importc:"wgpuRenderPassEncoderInsertDebugMarker".}
proc renderPassEncoderPopDebugGroup*(renderPassEncoder: RenderPassEncoder) {.cdecl, importc:"wgpuRenderPassEncoderPopDebugGroup".}
proc renderPassEncoderPushDebugGroup*(renderPassEncoder: RenderPassEncoder; groupLabel: cstring) {.cdecl, importc:"wgpuRenderPassEncoderPushDebugGroup".}
# proc renderPassEncoderSetBindGroup*(renderPassEncoder: RenderPassEncoder; groupIndex: uint; group: BindGroup; dynamicOffsetCount: uint; dynamicOffsets: ptr uint) {.cdecl, importc:"wgpuRenderPassEncoderSetBindGroup".}
proc renderPassEncoderSetBlendConstant*(renderPassEncoder: RenderPassEncoder; color: ptr Color) {.cdecl, importc:"wgpuRenderPassEncoderSetBlendConstant".}
# proc renderPassEncoderSetIndexBuffer*(renderPassEncoder: RenderPassEncoder; buffer: Buffer; format: IndexFormat; offset: uint64; size: uint64) {.cdecl, importc:"wgpuRenderPassEncoderSetIndexBuffer".}
# proc renderPassEncoderSetLabel*(renderPassEncoder: RenderPassEncoder; label: cstring) {.cdecl, importc:"wgpuRenderPassEncoderSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc renderPassEncoderSetPipeline*(renderPassEncoder: RenderPassEncoder; pipeline: RenderPipeline) {.cdecl, importc:"wgpuRenderPassEncoderSetPipeline".}
proc renderPassEncoderSetScissorRect*(renderPassEncoder: RenderPassEncoder; x: uint; y: uint; width: uint; height: uint) {.cdecl, importc:"wgpuRenderPassEncoderSetScissorRect".}
proc renderPassEncoderSetStencilReference*( renderPassEncoder: RenderPassEncoder; reference: uint) {.cdecl, importc:"wgpuRenderPassEncoderSetStencilReference".}
# proc renderPassEncoderSetVertexBuffer*(renderPassEncoder: RenderPassEncoder; slot: uint; buffer: Buffer; offset: uint64; size: uint64) {.cdecl, importc:"wgpuRenderPassEncoderSetVertexBuffer".}
proc renderPassEncoderSetViewport*(renderPassEncoder: RenderPassEncoder; x: cfloat; y: cfloat; width: cfloat; height: cfloat; minDepth: cfloat; maxDepth: cfloat) {.cdecl, importc:"wgpuRenderPassEncoderSetViewport".}
proc renderPipelineGetBindGroupLayout*(renderPipeline: RenderPipeline; groupIndex: uint): BindGroupLayout {.cdecl, importc:"wgpuRenderPipelineGetBindGroupLayout".}
# proc renderPipelineSetLabel*(renderPipeline: RenderPipeline; label: cstring) {.cdecl, importc:"wgpuRenderPipelineSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc samplerSetLabel*(sampler: Sampler; label: cstring) {.cdecl, importc: "wgpuSamplerSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc shaderModuleGetCompilationInfo*(shaderModule: ShaderModule; callback: CompilationInfoCallback; userdata: pointer) {.cdecl, importc:"wgpuShaderModuleGetCompilationInfo", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc shaderModuleSetLabel*(shaderModule: ShaderModule; label: cstring) {.cdecl, importc: "wgpuShaderModuleSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc surfaceGetPreferredFormat*(surface: Surface; adapter: Adapter): TextureFormat {.cdecl, importc:"wgpuSurfaceGetPreferredFormat".}
# proc swapChainGetCurrentTextureView*(swapChain: SwapChain): TextureView {.cdecl, importc: "wgpuSwapChainGetCurrentTextureView".}
# proc swapChainPresent*(swapChain: SwapChain) {.cdecl, importc: "wgpuSwapChainPresent".}
proc textureCreateView*(texture: Texture; descriptor: ptr TextureViewDescriptor): TextureView {.cdecl, importc:"wgpuTextureCreateView".}
proc textureDestroy*(texture: Texture) {.cdecl, importc: "wgpuTextureDestroy".}
# proc textureGetDepthOrArrayLayers*(texture: Texture): uint {.cdecl, importc: "wgpuTextureGetDepthOrArrayLayers", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc textureGetDimension*(texture: Texture): TextureDimension {.cdecl, importc: "wgpuTextureGetDimension", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc textureGetFormat*(texture: Texture): TextureFormat {.cdecl, importc: "wgpuTextureGetFormat", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc textureGetHeight*(texture: Texture): uint {.cdecl, importc: "wgpuTextureGetHeight", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc textureGetMipLevelCount*(texture: Texture): uint {.cdecl, importc: "wgpuTextureGetMipLevelCount", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc textureGetSampleCount*(texture: Texture): uint {.cdecl, importc: "wgpuTextureGetSampleCount", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc textureGetUsage*(texture: Texture): TextureUsage {.cdecl, importc: "wgpuTextureGetUsage", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc textureGetWidth*(texture: Texture): uint {.cdecl, importc: "wgpuTextureGetWidth", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc textureSetLabel*(texture: Texture; label: cstring) {.cdecl, importc: "wgpuTextureSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# proc textureViewSetLabel*(textureView: TextureView; label: cstring) {.cdecl, importc: "wgpuTextureViewSetLabel", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}

type
  NativeSType* = distinct uint32
  NativeFeature* = distinct uint32
  # LogLevel* = distinct uint32
  # InstanceBackend* = distinct uint32
  
const
  NativeSType_DeviceExtras* = NativeSType(0x60000001) 
  NativeSType_AdapterExtras* = NativeSType(0x60000002)
  NativeSType_RequiredLimitsExtras* = NativeSType(0x60000003)
  NativeSType_PipelineLayoutExtras* = NativeSType(0x60000004)
  NativeSType_ShaderModuleGLSLDescriptor* = NativeSType(0x60000005)
  NativeSType_InstanceExtras* = NativeSType(0x60000006)
  NativeSType_SupportedLimitsExtras* = NativeSType_RequiredLimitsExtras

  NativeFeature_PUSH_CONSTANTS* = NativeFeature(0x60000001)
  NativeFeature_TEXTURE_ADAPTER_SPECIFIC_FORMAT_FEATURES* = NativeFeature(0x60000002)
  NativeFeature_MULTI_DRAW_INDIRECT* = NativeFeature(0x60000003)
  NativeFeature_MULTI_DRAW_INDIRECT_COUNT* = NativeFeature(0x60000004)
  NativeFeature_VERTEX_WRITABLE_STORAGE* = NativeFeature(0x60000005) 
  NativeFeature_SAMPLED_TEXTURE_AND_STORAGE_BUFFER_ARRAY_NON_UNIFORM_INDEXING* = NativeFeature(0x60000006)

  # LogLevel_Off* = LogLevel(0x00000000)
  # LogLevel_Error* = LogLevel(0x00000001)
  # LogLevel_Warn* = LogLevel(0x00000002)
  # LogLevel_Info* = LogLevel(0x00000003)
  # LogLevel_Debug* = LogLevel(0x00000004)
  # LogLevel_Trace* = LogLevel(0x00000005)

  # InstanceBackend_Vulkan* = InstanceBackend(1 shl 1)
  # InstanceBackend_Metal* = InstanceBackend(1 shl 2)
  # InstanceBackend_DX12* = InstanceBackend(1 shl 3)
  # InstanceBackend_DX11* = InstanceBackend(1 shl 4)
  # InstanceBackend_GL* = InstanceBackend(1 shl 5)
  # InstanceBackend_BrowserWebGPU* = InstanceBackend(1 shl 6)
  # InstanceBackend_Primary* = InstanceBackend(
  #   uint32(InstanceBackend_Vulkan) or
  #   uint32(InstanceBackend_Metal) or
  #   uint32(InstanceBackend_DX12)
  # )
  # InstanceBackend_Secondary* = InstanceBackend(
  #   uint32(InstanceBackend_GL) or
  #   uint32(InstanceBackend_DX11)
  # )
  # InstanceBackend_None* = InstanceBackend(0x00000000)

# type
  # InstanceBackendFlags* = Flags
  # InstanceExtras* {.bycopy.} = object
  #   chain*: ChainedStruct
  #   backends*: InstanceBackendFlags

  # AdapterExtras* {.bycopy.} = object
  #   chain*: ChainedStruct
  #   backend*: BackendType

  # DeviceExtras* {.bycopy.} = object
  #   chain*: ChainedStruct
  #   tracePath*: cstring

  # RequiredLimitsExtras* {.bycopy.} = object
  #   chain*: ChainedStruct
  #   maxPushConstantSize*: uint

  # SupportedLimitsExtras* {.bycopy.} = object
  #   chain*: ChainedStructOut
  #   maxPushConstantSize*: uint

  # PushConstantRange* {.bycopy.} = object
  #   stages*: ShaderStageFlags
  #   start*: uint
  #   `end`*: uint

  # PipelineLayoutExtras* {.bycopy.} = object
  #   chain*: ChainedStruct
  #   pushConstantRangeCount*: uint
  #   pushConstantRanges*: ptr PushConstantRange

  # SubmissionIndex* = uint64
  # WrappedSubmissionIndex* {.bycopy.} = object
  #   queue*: Queue
  #   submissionIndex*: SubmissionIndex

  # ShaderDefine* {.bycopy.} = object
  #   name*: cstring
  #   value*: cstring

  # ShaderModuleGLSLDescriptor* {.bycopy.} = object
  #   chain*: ChainedStruct
  #   stage*: ShaderStage
  #   code*: cstring
  #   defineCount*: uint
  #   defines*: ptr ShaderDefine

  # StorageReport* {.bycopy.} = object
  #   numOccupied*: csize_t
  #   numVacant*: csize_t
  #   numError*: csize_t
  #   elementSize*: csize_t

  # HubReport* {.bycopy.} = object
  #   adapters*: StorageReport
  #   devices*: StorageReport
  #   pipelineLayouts*: StorageReport
  #   shaderModules*: StorageReport
  #   bindGroupLayouts*: StorageReport
  #   bindGroups*: StorageReport
  #   commandBuffers*: StorageReport
  #   renderBundles*: StorageReport
  #   renderPipelines*: StorageReport
  #   computePipelines*: StorageReport
  #   querySets*: StorageReport
  #   buffers*: StorageReport
  #   textures*: StorageReport
  #   textureViews*: StorageReport
  #   samplers*: StorageReport

  # GlobalReport* {.bycopy.} = object
  #   surfaces*: StorageReport
  #   backendType*: BackendType
  #   vulkan*: HubReport
  #   metal*: HubReport
  #   dx12*: HubReport
  #   dx11*: HubReport
  #   gl*: HubReport

  # LogCallback* = proc (level: LogLevel; message: cstring; userdata: pointer) {.cdecl.}

# proc generateReport*(instance: Instance; report: ptr GlobalReport) {.cdecl, importc: "wgpuGenerateReport".}
# proc queueSubmitForIndex*(queue: Queue; commandCount: uint; commands: ptr CommandBuffer): SubmissionIndex {.cdecl, importc: "wgpuQueueSubmitForIndex".}
# proc devicePoll*(device: Device; wait: bool; wrappedSubmissionIndex: ptr WrappedSubmissionIndex): bool {.cdecl, importc: "wgpuDevicePoll".}
# proc setLogCallback*(callback: LogCallback; userdata: pointer) {.cdecl, importc: "wgpuSetLogCallback".}
# proc setLogLevel*(level: LogLevel) {.cdecl, importc: "wgpuSetLogLevel".}
# proc getVersion*(): uint {.cdecl, importc: "wgpuGetVersion".}
proc surfaceGetSupportedFormats*(surface: Surface; adapter: Adapter; count: ptr csize_t): ptr TextureFormat {.cdecl, importc:" wgpuSurfaceGetSupportedFormats".}
proc surfaceGetSupportedPresentModes*(surface: Surface; adapter: Adapter; count: ptr csize_t): ptr PresentMode {.cdecl, importc: "wgpuSurfaceGetSupportedPresentModes".}
# proc renderPassEncoderSetPushConstants*(encoder: RenderPassEncoder; stages: ShaderStageFlags; offset: uint; sizeBytes: uint; data: pointer) {.cdecl, importc: "wgpuRenderPassEncoderSetPushConstants".}
# proc renderPassEncoderMultiDrawIndirect*(encoder: RenderPassEncoder; buffer: Buffer; offset: uint64; count: uint) {.cdecl, importc: "wgpuRenderPassEncoderMultiDrawIndirect".}
# proc renderPassEncoderMultiDrawIndexedIndirect*(encoder: RenderPassEncoder; buffer: Buffer; offset: uint64; count: uint) {.cdecl, importc: "wgpuRenderPassEncoderMultiDrawIndexedIndirect".}
# proc renderPassEncoderMultiDrawIndirectCount*(encoder: RenderPassEncoder; buffer: Buffer; offset: uint64; count_buffer: Buffer; count_buffer_offset: uint64; max_count: uint) {.cdecl, importc: "wgpuRenderPassEncoderMultiDrawIndirectCount".}
# proc renderPassEncoderMultiDrawIndexedIndirectCount*(encoder: RenderPassEncoder; buffer: Buffer; offset: uint64; count_buffer: Buffer; count_buffer_offset: uint64; max_count: uint) {.cdecl, importc: "wgpuRenderPassEncoderMultiDrawIndexedIndirectCount".}
# proc instanceDrop*(instance: Instance) {.cdecl, importc: "wgpuInstanceDrop".}
# proc adapterDrop*(adapter: Adapter) {.cdecl, importc: "wgpuAdapterDrop".}
# proc bindGroupDrop*(bindGroup: BindGroup) {.cdecl, importc: "wgpuBindGroupDrop".}
# proc bindGroupLayoutDrop*(bindGroupLayout: BindGroupLayout) {.cdecl, importc: "wgpuBindGroupLayoutDrop".}
# proc bufferDrop*(buffer: Buffer) {.cdecl, importc: "wgpuBufferDrop".}
# proc commandBufferDrop*(commandBuffer: CommandBuffer) {.cdecl, importc: "wgpuCommandBufferDrop".}
# proc commandEncoderDrop*(commandEncoder: CommandEncoder) {.cdecl, importc: "wgpuCommandEncoderDrop".}
# proc renderPassEncoderDrop*(renderPassEncoder: RenderPassEncoder) {.cdecl, importc: "wgpuRenderPassEncoderDrop".}
# proc computePassEncoderDrop*(computePassEncoder: ComputePassEncoder) {.cdecl, importc: "wgpuComputePassEncoderDrop".}
# proc renderBundleEncoderDrop*(renderBundleEncoder: RenderBundleEncoder) {.cdecl, importc: "wgpuRenderBundleEncoderDrop".}
# proc computePipelineDrop*(computePipeline: ComputePipeline) {.cdecl, importc: "wgpuComputePipelineDrop".}
# proc deviceDrop*(device: Device) {.cdecl, importc: "wgpuDeviceDrop".}
# proc pipelineLayoutDrop*(pipelineLayout: PipelineLayout) {.cdecl, importc: "wgpuPipelineLayoutDrop".}
# proc querySetDrop*(querySet: QuerySet) {.cdecl, importc: "wgpuQuerySetDrop".}
# proc renderBundleDrop*(renderBundle: RenderBundle) {.cdecl, importc: "wgpuRenderBundleDrop".}
# proc renderPipelineDrop*(renderPipeline: RenderPipeline) {.cdecl, importc: "wgpuRenderPipelineDrop".}
# proc samplerDrop*(sampler: Sampler) {.cdecl, importc: "wgpuSamplerDrop".}
# proc shaderModuleDrop*(shaderModule: ShaderModule) {.cdecl, importc: "wgpuShaderModuleDrop".}
# proc surfaceDrop*(surface: Surface) {.cdecl, importc: "wgpuSurfaceDrop".}
# proc swapChainDrop*(swapChain: SwapChain) {.cdecl, importc: "wgpuSwapChainDrop".}
# proc textureDrop*(texture: Texture) {.cdecl, importc: "wgpuTextureDrop".}
# proc textureViewDrop*(textureView: TextureView) {.cdecl, importc: "wgpuTextureViewDrop".}
proc free*(`ptr`: pointer; size: csize_t; align: csize_t) {.cdecl, importc: "wgpuFree".}
