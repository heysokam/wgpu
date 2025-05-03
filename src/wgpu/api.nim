
type
  enum_WGPUAdapterType* {.size: sizeof(cuint).} = enum
    DiscreteGPU = 1, IntegratedGPU = 2, CPU = 3, Unknown = 4,
    Force32 = 2147483647
type
  enum_WGPUAddressMode* {.size: sizeof(cuint).} = enum
    Undefined = 0, ClampToEdge = 1, Repeat = 2, MirrorRepeat = 3,
    Force32 = 2147483647
type
  enum_WGPUBackendType* {.size: sizeof(cuint).} = enum
    Undefined = 0, Null = 1, WebGPU = 2, D3D11 = 3, D3D12 = 4, Metal = 5,
    Vulkan = 6, OpenGL = 7, OpenGLES = 8, Force32 = 2147483647
type
  enum_WGPUBlendFactor* {.size: sizeof(cuint).} = enum
    Undefined = 0, Zero = 1, One = 2, Src = 3, OneMinusSrc = 4, SrcAlpha = 5,
    OneMinusSrcAlpha = 6, Dst = 7, OneMinusDst = 8, DstAlpha = 9,
    OneMinusDstAlpha = 10, SrcAlphaSaturated = 11, Constant = 12,
    OneMinusConstant = 13, Src1 = 14, OneMinusSrc1 = 15, Src1Alpha = 16,
    OneMinusSrc1Alpha = 17, Force32 = 2147483647
type
  enum_WGPUBlendOperation* {.size: sizeof(cuint).} = enum
    Undefined = 0, Add = 1, Subtract = 2, ReverseSubtract = 3, Min = 4, Max = 5,
    Force32 = 2147483647
type
  enum_WGPUBufferBindingType* {.size: sizeof(cuint).} = enum
    BindingNotUsed = 0, Undefined = 1, Uniform = 2, Storage = 3,
    ReadOnlyStorage = 4, Force32 = 2147483647
type
  enum_WGPUBufferMapState* {.size: sizeof(cuint).} = enum
    Unmapped = 1, Pending = 2, Mapped = 3, Force32 = 2147483647
type
  enum_WGPUCallbackMode* {.size: sizeof(cuint).} = enum
    WaitAnyOnly = 1, AllowProcessEvents = 2, AllowSpontaneous = 3,
    Force32 = 2147483647
type
  enum_WGPUCompareFunction* {.size: sizeof(cuint).} = enum
    Undefined = 0, Never = 1, Less = 2, Equal = 3, LessEqual = 4, Greater = 5,
    NotEqual = 6, GreaterEqual = 7, Always = 8, Force32 = 2147483647
type
  enum_WGPUCompilationInfoRequestStatus* {.size: sizeof(cuint).} = enum
    Success = 1, InstanceDropped = 2, Error = 3, Unknown = 4,
    Force32 = 2147483647
type
  enum_WGPUCompilationMessageType* {.size: sizeof(cuint).} = enum
    Error = 1, Warning = 2, Info = 3, Force32 = 2147483647
type
  enum_WGPUCompositeAlphaMode* {.size: sizeof(cuint).} = enum
    Auto = 0, Opaque = 1, Premultiplied = 2, Unpremultiplied = 3, Inherit = 4,
    Force32 = 2147483647
type
  enum_WGPUCreatePipelineAsyncStatus* {.size: sizeof(cuint).} = enum
    Success = 1, InstanceDropped = 2, ValidationError = 3, InternalError = 4,
    Unknown = 5, Force32 = 2147483647
type
  enum_WGPUCullMode* {.size: sizeof(cuint).} = enum
    Undefined = 0, None = 1, Front = 2, Back = 3, Force32 = 2147483647
type
  enum_WGPUDeviceLostReason* {.size: sizeof(cuint).} = enum
    Unknown = 1, Destroyed = 2, InstanceDropped = 3, FailedCreation = 4,
    Force32 = 2147483647
type
  enum_WGPUErrorFilter* {.size: sizeof(cuint).} = enum
    Validation = 1, OutOfMemory = 2, Internal = 3, Force32 = 2147483647
type
  enum_WGPUErrorType* {.size: sizeof(cuint).} = enum
    NoError = 1, Validation = 2, OutOfMemory = 3, Internal = 4, Unknown = 5,
    Force32 = 2147483647
type
  enum_WGPUFeatureLevel* {.size: sizeof(cuint).} = enum
    Compatibility = 1, Core = 2, Force32 = 2147483647
type
  enum_WGPUFeatureName* {.size: sizeof(cuint).} = enum
    Undefined = 0, DepthClipControl = 1, Depth32FloatStencil8 = 2,
    TimestampQuery = 3, TextureCompressionBC = 4,
    TextureCompressionBCSliced3D = 5, TextureCompressionETC2 = 6,
    TextureCompressionASTC = 7, TextureCompressionASTCSliced3D = 8,
    IndirectFirstInstance = 9, ShaderF16 = 10, RG11B10UfloatRenderable = 11,
    BGRA8UnormStorage = 12, Float32Filterable = 13, Float32Blendable = 14,
    ClipDistances = 15, DualSourceBlending = 16, Force32 = 2147483647
type
  enum_WGPUFilterMode* {.size: sizeof(cuint).} = enum
    Undefined = 0, Nearest = 1, Linear = 2, Force32 = 2147483647
type
  enum_WGPUFrontFace* {.size: sizeof(cuint).} = enum
    Undefined = 0, CCW = 1, CW = 2, Force32 = 2147483647
type
  enum_WGPUIndexFormat* {.size: sizeof(cuint).} = enum
    Undefined = 0, Uint16 = 1, Uint32 = 2, Force32 = 2147483647
type
  enum_WGPULoadOp* {.size: sizeof(cuint).} = enum
    Undefined = 0, Load = 1, Clear = 2, Force32 = 2147483647
type
  enum_WGPUMapAsyncStatus* {.size: sizeof(cuint).} = enum
    Success = 1, InstanceDropped = 2, Error = 3, Aborted = 4, Unknown = 5,
    Force32 = 2147483647
type
  enum_WGPUMipmapFilterMode* {.size: sizeof(cuint).} = enum
    Undefined = 0, Nearest = 1, Linear = 2, Force32 = 2147483647
type
  enum_WGPUOptionalBool* {.size: sizeof(cuint).} = enum
    False = 0, True = 1, Undefined = 2, Force32 = 2147483647
type
  enum_WGPUPopErrorScopeStatus* {.size: sizeof(cuint).} = enum
    Success = 1, InstanceDropped = 2, EmptyStack = 3, Force32 = 2147483647
type
  enum_WGPUPowerPreference* {.size: sizeof(cuint).} = enum
    Undefined = 0, LowPower = 1, HighPerformance = 2, Force32 = 2147483647
type
  enum_WGPUPresentMode* {.size: sizeof(cuint).} = enum
    Undefined = 0, Fifo = 1, FifoRelaxed = 2, Immediate = 3, Mailbox = 4,
    Force32 = 2147483647
type
  enum_WGPUPrimitiveTopology* {.size: sizeof(cuint).} = enum
    Undefined = 0, PointList = 1, LineList = 2, LineStrip = 3, TriangleList = 4,
    TriangleStrip = 5, Force32 = 2147483647
type
  enum_WGPUQueryType* {.size: sizeof(cuint).} = enum
    Occlusion = 1, Timestamp = 2, Force32 = 2147483647
type
  enum_WGPUQueueWorkDoneStatus* {.size: sizeof(cuint).} = enum
    Success = 1, InstanceDropped = 2, Error = 3, Unknown = 4,
    Force32 = 2147483647
type
  enum_WGPURequestAdapterStatus* {.size: sizeof(cuint).} = enum
    Success = 1, InstanceDropped = 2, Unavailable = 3, Error = 4, Unknown = 5,
    Force32 = 2147483647
type
  enum_WGPURequestDeviceStatus* {.size: sizeof(cuint).} = enum
    Success = 1, InstanceDropped = 2, Error = 3, Unknown = 4,
    Force32 = 2147483647
type
  enum_WGPUSType* {.size: sizeof(cuint).} = enum
    SType_ShaderSourceSPIRV = 1, SType_ShaderSourceWGSL = 2,
    SType_RenderPassMaxDrawCount = 3, SType_SurfaceSourceMetalLayer = 4,
    SType_SurfaceSourceWindowsHWND = 5, SType_SurfaceSourceXlibWindow = 6,
    SType_SurfaceSourceWaylandSurface = 7,
    SType_SurfaceSourceAndroidNativeWindow = 8,
    SType_SurfaceSourceXCBWindow = 9, SType_Force32 = 2147483647
type
  enum_WGPUSamplerBindingType* {.size: sizeof(cuint).} = enum
    BindingNotUsed = 0, Undefined = 1, Filtering = 2, NonFiltering = 3,
    Comparison = 4, Force32 = 2147483647
type
  enum_WGPUStatus* {.size: sizeof(cuint).} = enum
    Success = 1, Error = 2, Force32 = 2147483647
type
  enum_WGPUStencilOperation* {.size: sizeof(cuint).} = enum
    Undefined = 0, Keep = 1, Zero = 2, Replace = 3, Invert = 4,
    IncrementClamp = 5, DecrementClamp = 6, IncrementWrap = 7,
    DecrementWrap = 8, Force32 = 2147483647
type
  enum_WGPUStorageTextureAccess* {.size: sizeof(cuint).} = enum
    BindingNotUsed = 0, Undefined = 1, WriteOnly = 2, ReadOnly = 3,
    ReadWrite = 4, Force32 = 2147483647
type
  enum_WGPUStoreOp* {.size: sizeof(cuint).} = enum
    Undefined = 0, Store = 1, Discard = 2, Force32 = 2147483647
type
  enum_WGPUSurfaceGetCurrentTextureStatus* {.size: sizeof(cuint).} = enum
    SuccessOptimal = 1, SuccessSuboptimal = 2, Timeout = 3, Outdated = 4,
    Lost = 5, OutOfMemory = 6, DeviceLost = 7, Error = 8, Force32 = 2147483647
type
  enum_WGPUTextureAspect* {.size: sizeof(cuint).} = enum
    Undefined = 0, All = 1, StencilOnly = 2, DepthOnly = 3, Force32 = 2147483647
type
  enum_WGPUTextureDimension* {.size: sizeof(cuint).} = enum
    TextureDimension_Undefined = 0, TextureDimension_1D = 1,
    TextureDimension_2D = 2, TextureDimension_3D = 3,
    TextureDimension_Force32 = 2147483647
type
  enum_WGPUTextureFormat* {.size: sizeof(cuint).} = enum
    Undefined = 0, R8Unorm = 1, R8Snorm = 2, R8Uint = 3, R8Sint = 4,
    R16Uint = 5, R16Sint = 6, R16Float = 7, RG8Unorm = 8, RG8Snorm = 9,
    RG8Uint = 10, RG8Sint = 11, R32Float = 12, R32Uint = 13, R32Sint = 14,
    RG16Uint = 15, RG16Sint = 16, RG16Float = 17, RGBA8Unorm = 18,
    RGBA8UnormSrgb = 19, RGBA8Snorm = 20, RGBA8Uint = 21, RGBA8Sint = 22,
    BGRA8Unorm = 23, BGRA8UnormSrgb = 24, RGB10A2Uint = 25, RGB10A2Unorm = 26,
    RG11B10Ufloat = 27, RGB9E5Ufloat = 28, RG32Float = 29, RG32Uint = 30,
    RG32Sint = 31, RGBA16Uint = 32, RGBA16Sint = 33, RGBA16Float = 34,
    RGBA32Float = 35, RGBA32Uint = 36, RGBA32Sint = 37, Stencil8 = 38,
    Depth16Unorm = 39, Depth24Plus = 40, Depth24PlusStencil8 = 41,
    Depth32Float = 42, Depth32FloatStencil8 = 43, BC1RGBAUnorm = 44,
    BC1RGBAUnormSrgb = 45, BC2RGBAUnorm = 46, BC2RGBAUnormSrgb = 47,
    BC3RGBAUnorm = 48, BC3RGBAUnormSrgb = 49, BC4RUnorm = 50, BC4RSnorm = 51,
    BC5RGUnorm = 52, BC5RGSnorm = 53, BC6HRGBUfloat = 54, BC6HRGBFloat = 55,
    BC7RGBAUnorm = 56, BC7RGBAUnormSrgb = 57, ETC2RGB8Unorm = 58,
    ETC2RGB8UnormSrgb = 59, ETC2RGB8A1Unorm = 60, ETC2RGB8A1UnormSrgb = 61,
    ETC2RGBA8Unorm = 62, ETC2RGBA8UnormSrgb = 63, EACR11Unorm = 64,
    EACR11Snorm = 65, EACRG11Unorm = 66, EACRG11Snorm = 67, ASTC4x4Unorm = 68,
    ASTC4x4UnormSrgb = 69, ASTC5x4Unorm = 70, ASTC5x4UnormSrgb = 71,
    ASTC5x5Unorm = 72, ASTC5x5UnormSrgb = 73, ASTC6x5Unorm = 74,
    ASTC6x5UnormSrgb = 75, ASTC6x6Unorm = 76, ASTC6x6UnormSrgb = 77,
    ASTC8x5Unorm = 78, ASTC8x5UnormSrgb = 79, ASTC8x6Unorm = 80,
    ASTC8x6UnormSrgb = 81, ASTC8x8Unorm = 82, ASTC8x8UnormSrgb = 83,
    ASTC10x5Unorm = 84, ASTC10x5UnormSrgb = 85, ASTC10x6Unorm = 86,
    ASTC10x6UnormSrgb = 87, ASTC10x8Unorm = 88, ASTC10x8UnormSrgb = 89,
    ASTC10x10Unorm = 90, ASTC10x10UnormSrgb = 91, ASTC12x10Unorm = 92,
    ASTC12x10UnormSrgb = 93, ASTC12x12Unorm = 94, ASTC12x12UnormSrgb = 95,
    Force32 = 2147483647
type
  enum_WGPUTextureSampleType* {.size: sizeof(cuint).} = enum
    BindingNotUsed = 0, Undefined = 1, Float = 2, UnfilterableFloat = 3,
    Depth = 4, Sint = 5, Uint = 6, Force32 = 2147483647
type
  enum_WGPUTextureViewDimension* {.size: sizeof(cuint).} = enum
    Undefined = 0, 1D = 1, 2D = 2, 2DArray = 3, Cube = 4, CubeArray = 5, 3D = 6,
    Force32 = 2147483647
type
  enum_WGPUVertexFormat* {.size: sizeof(cuint).} = enum
    Uint8 = 1, Uint8x2 = 2, Uint8x4 = 3, Sint8 = 4, Sint8x2 = 5, Sint8x4 = 6,
    Unorm8 = 7, Unorm8x2 = 8, Unorm8x4 = 9, Snorm8 = 10, Snorm8x2 = 11,
    Snorm8x4 = 12, Uint16 = 13, Uint16x2 = 14, Uint16x4 = 15, Sint16 = 16,
    Sint16x2 = 17, Sint16x4 = 18, Unorm16 = 19, Unorm16x2 = 20, Unorm16x4 = 21,
    Snorm16 = 22, Snorm16x2 = 23, Snorm16x4 = 24, Float16 = 25, Float16x2 = 26,
    Float16x4 = 27, Float32 = 28, Float32x2 = 29, Float32x3 = 30,
    Float32x4 = 31, Uint32 = 32, Uint32x2 = 33, Uint32x3 = 34, Uint32x4 = 35,
    Sint32 = 36, Sint32x2 = 37, Sint32x3 = 38, Sint32x4 = 39,
    Unorm10_10_10_2 = 40, Unorm8x4BGRA = 41, Force32 = 2147483647
type
  enum_WGPUVertexStepMode* {.size: sizeof(cuint).} = enum
    VertexStepMode_VertexBufferNotUsed = 0, VertexStepMode_Undefined = 1,
    VertexStepMode_Vertex = 2, VertexStepMode_Instance = 3,
    VertexStepMode_Force32 = 2147483647
type
  enum_WGPUWGSLLanguageFeatureName* {.size: sizeof(cuint).} = enum
    ReadonlyAndReadwriteStorageTextures = 1, Packed4x8IntegerDotProduct = 2,
    UnrestrictedPointerParameters = 3, PointerCompositeAccess = 4,
    Force32 = 2147483647
type
  enum_WGPUWaitStatus* {.size: sizeof(cuint).} = enum
    Success = 1, TimedOut = 2, UnsupportedTimeout = 3, UnsupportedCount = 4,
    UnsupportedMixedSources = 5, Force32 = 2147483647
type
  enum_WGPUNativeSType* {.size: sizeof(cuint).} = enum
    SType_DeviceExtras = 196609, SType_NativeLimits = 196610,
    SType_PipelineLayoutExtras = 196611,
    SType_ShaderModuleGLSLDescriptor = 196612, SType_InstanceExtras = 196614,
    SType_BindGroupEntryExtras = 196615,
    SType_BindGroupLayoutEntryExtras = 196616,
    SType_QuerySetDescriptorExtras = 196617,
    SType_SurfaceConfigurationExtras = 196618, NativeSType_Force32 = 2147483647
type
  enum_WGPUNativeFeature* {.size: sizeof(cuint).} = enum
    PushConstants = 196609, TextureAdapterSpecificFormatFeatures = 196610,
    MultiDrawIndirect = 196611, MultiDrawIndirectCount = 196612,
    VertexWritableStorage = 196613, TextureBindingArray = 196614,
    SampledTextureAndStorageBufferArrayNonUniformIndexing = 196615,
    PipelineStatisticsQuery = 196616, StorageResourceBindingArray = 196617,
    PartiallyBoundBindingArray = 196618, TextureFormat16bitNorm = 196619,
    TextureCompressionAstcHdr = 196620, MappablePrimaryBuffers = 196622,
    BufferBindingArray = 196623,
    UniformBufferAndStorageTextureArrayNonUniformIndexing = 196624,
    SpirvShaderPassthrough = 196631, VertexAttribute64bit = 196633,
    TextureFormatNv12 = 196634, RayTracingAccelerationStructure = 196635,
    RayQuery = 196636, ShaderF64 = 196637, ShaderI16 = 196638,
    ShaderPrimitiveIndex = 196639, ShaderEarlyDepthTest = 196640,
    Subgroup = 196641, SubgroupVertex = 196642, SubgroupBarrier = 196643,
    TimestampQueryInsideEncoders = 196644, TimestampQueryInsidePasses = 196645,
    Force32 = 2147483647
type
  enum_WGPULogLevel* {.size: sizeof(cuint).} = enum
    Off = 0, Error = 1, Warn = 2, Info = 3, Debug = 4, Trace = 5,
    Force32 = 2147483647
type
  enum_WGPUDx12Compiler* {.size: sizeof(cuint).} = enum
    Undefined = 0, Fxc = 1, Dxc = 2, Force32 = 2147483647
type
  enum_WGPUGles3MinorVersion* {.size: sizeof(cuint).} = enum
    Automatic = 0, Version0 = 1, Version1 = 2, Version2 = 3,
    Force32 = 2147483647
type
  enum_WGPUPipelineStatisticName* {.size: sizeof(cuint).} = enum
    VertexShaderInvocations = 0, ClipperInvocations = 1,
    ClipperPrimitivesOut = 2, FragmentShaderInvocations = 3,
    ComputeShaderInvocations = 4, Force32 = 2147483647
type
  enum_WGPUNativeQueryType* {.size: sizeof(cuint).} = enum
    PipelineStatistics = 196608, Force32 = 2147483647
type
  enum_WGPUNativeTextureFormat* {.size: sizeof(cuint).} = enum
    R16Unorm = 196609, R16Snorm = 196610, Rg16Unorm = 196611,
    Rg16Snorm = 196612, Rgba16Unorm = 196613, Rgba16Snorm = 196614,
    NV12 = 196615
type
  struct_WGPUQuerySetImpl* = object
type
  struct_WGPUInstanceImpl* = object
type
  struct_WGPUBindGroupLayoutImpl* = object
type
  struct_WGPURenderBundleEncoderImpl* = object
type
  struct_WGPUBufferImpl* = object
type
  struct_WGPUAdapterImpl* = object
type
  struct_WGPUCommandBufferImpl* = object
type
  struct_WGPUShaderModuleImpl* = object
type
  struct_WGPURenderPipelineImpl* = object
type
  struct_WGPUTextureViewImpl* = object
type
  struct_WGPURenderBundleImpl* = object
type
  struct_WGPUSamplerImpl* = object
type
  struct_WGPUDeviceImpl* = object
type
  struct_WGPUTextureImpl* = object
type
  struct_WGPUComputePassEncoderImpl* = object
type
  struct_WGPURenderPassEncoderImpl* = object
type
  struct_WGPUComputePipelineImpl* = object
type
  struct_WGPUPipelineLayoutImpl* = object
type
  UINT64_MAX* = object
type
  struct_WGPUQueueImpl* = object
type
  struct_WGPUCommandEncoderImpl* = object
type
  struct_WGPUSurfaceImpl* = object
type
  struct_WGPUBindGroupImpl* = object
type
  Flags* = uint64            ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:96:18
  Bool* = uint32             ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:97:18
  struct_WGPUStringView* {.pure, inheritable, bycopy.} = object
    data*: cstring           ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:120:16
    length*: csize_t
  StringView* = struct_WGPUStringView ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:123:3
  Adapter* = ptr struct_WGPUAdapterImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:145:33
  BindGroup* = ptr struct_WGPUBindGroupImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:146:35
  BindGroupLayout* = ptr struct_WGPUBindGroupLayoutImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:147:41
  Buffer* = ptr struct_WGPUBufferImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:148:32
  CommandBuffer* = ptr struct_WGPUCommandBufferImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:149:39
  CommandEncoder* = ptr struct_WGPUCommandEncoderImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:150:40
  ComputePassEncoder* = ptr struct_WGPUComputePassEncoderImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:151:44
  ComputePipeline* = ptr struct_WGPUComputePipelineImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:152:41
  Device* = ptr struct_WGPUDeviceImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:153:32
  Instance* = ptr struct_WGPUInstanceImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:154:34
  PipelineLayout* = ptr struct_WGPUPipelineLayoutImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:155:40
  QuerySet* = ptr struct_WGPUQuerySetImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:156:34
  Queue* = ptr struct_WGPUQueueImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:157:31
  RenderBundle* = ptr struct_WGPURenderBundleImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:158:38
  RenderBundleEncoder* = ptr struct_WGPURenderBundleEncoderImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:159:45
  RenderPassEncoder* = ptr struct_WGPURenderPassEncoderImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:160:43
  RenderPipeline* = ptr struct_WGPURenderPipelineImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:161:40
  Sampler* = ptr struct_WGPUSamplerImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:162:33
  ShaderModule* = ptr struct_WGPUShaderModuleImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:163:38
  Surface* = ptr struct_WGPUSurfaceImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:167:33
  Texture* = ptr struct_WGPUTextureImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:168:33
  TextureView* = ptr struct_WGPUTextureViewImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:169:37
  AdapterType* = enum_WGPUAdapterType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:272:3
  AddressMode* = enum_WGPUAddressMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:284:3
  BackendType* = enum_WGPUBackendType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:301:3
  BlendFactor* = enum_WGPUBlendFactor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:327:3
  BlendOperation* = enum_WGPUBlendOperation ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:341:3
  BufferBindingType* = enum_WGPUBufferBindingType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:360:3
  BufferMapState* = enum_WGPUBufferMapState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:367:3
  CallbackMode* = enum_WGPUCallbackMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:399:3
  CompareFunction* = enum_WGPUCompareFunction ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:416:3
  CompilationInfoRequestStatus* = enum_WGPUCompilationInfoRequestStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:424:3
  CompilationMessageType* = enum_WGPUCompilationMessageType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:431:3
  CompositeAlphaMode* = enum_WGPUCompositeAlphaMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:463:3
  CreatePipelineAsyncStatus* = enum_WGPUCreatePipelineAsyncStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:472:3
  CullMode* = enum_WGPUCullMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:484:3
  DeviceLostReason* = enum_WGPUDeviceLostReason ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:492:3
  ErrorFilter* = enum_WGPUErrorFilter ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:499:3
  ErrorType* = enum_WGPUErrorType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:508:3
  FeatureLevel* = enum_WGPUFeatureLevel ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:525:3
  FeatureName* = enum_WGPUFeatureName ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:546:3
  FilterMode* = enum_WGPUFilterMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:557:3
  FrontFace* = enum_WGPUFrontFace ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:568:3
  IndexFormat* = enum_WGPUIndexFormat ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:579:3
  LoadOp* = enum_WGPULoadOp  ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:590:3
  MapAsyncStatus* = enum_WGPUMapAsyncStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:599:3
  MipmapFilterMode* = enum_WGPUMipmapFilterMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:610:3
  OptionalBool* = enum_WGPUOptionalBool ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:617:3
  PopErrorScopeStatus* = enum_WGPUPopErrorScopeStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:632:3
  PowerPreference* = enum_WGPUPowerPreference ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:643:3
  PresentMode* = enum_WGPUPresentMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:681:3
  PrimitiveTopology* = enum_WGPUPrimitiveTopology ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:695:3
  QueryType* = enum_WGPUQueryType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:701:3
  QueueWorkDoneStatus* = enum_WGPUQueueWorkDoneStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:709:3
  RequestAdapterStatus* = enum_WGPURequestAdapterStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:718:3
  RequestDeviceStatus* = enum_WGPURequestDeviceStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:726:3
  SType* = enum_WGPUSType    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:739:3
  SamplerBindingType* = enum_WGPUSamplerBindingType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:758:3
  Status* = enum_WGPUStatus  ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:769:3
  StencilOperation* = enum_WGPUStencilOperation ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:786:3
  StorageTextureAccess* = enum_WGPUStorageTextureAccess ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:805:3
  StoreOp* = enum_WGPUStoreOp ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:816:3
  SurfaceGetCurrentTextureStatus* = enum_WGPUSurfaceGetCurrentTextureStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:863:3
  TextureAspect* = enum_WGPUTextureAspect ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:875:3
  TextureDimension* = enum_WGPUTextureDimension ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:887:3
  TextureFormat* = enum_WGPUTextureFormat ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:991:3
  TextureSampleType* = enum_WGPUTextureSampleType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1012:3
  TextureViewDimension* = enum_WGPUTextureViewDimension ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1027:3
  VertexFormat* = enum_WGPUVertexFormat ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1072:3
  VertexStepMode* = enum_WGPUVertexStepMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1089:3
  WGSLLanguageFeatureName* = enum_WGPUWGSLLanguageFeatureName ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1097:3
  WaitStatus* = enum_WGPUWaitStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1129:3
  BufferUsage* = Flags       ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1140:19
  ColorWriteMask* = Flags    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1153:19
  MapMode* = Flags           ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1161:19
  ShaderStage* = Flags       ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1166:19
  TextureUsage* = Flags      ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1172:19
  Proc* = proc (): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1182:16
  BufferMapCallback* = proc (a0: MapAsyncStatus; a1: StringView; a2: pointer;
                             a3: pointer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1195:16
  CompilationInfoCallback* = proc (a0: CompilationInfoRequestStatus;
                                   a1: ptr struct_WGPUCompilationInfo;
                                   a2: pointer; a3: pointer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1200:16
  struct_WGPUCompilationInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2005:16
    messageCount*: csize_t
    messages*: ptr CompilationMessage
  CreateComputePipelineAsyncCallback* = proc (a0: CreatePipelineAsyncStatus;
      a1: ComputePipeline; a2: StringView; a3: pointer; a4: pointer): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1205:16
  CreateRenderPipelineAsyncCallback* = proc (a0: CreatePipelineAsyncStatus;
      a1: RenderPipeline; a2: StringView; a3: pointer; a4: pointer): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1210:16
  DeviceLostCallback* = proc (a0: ptr Device; a1: DeviceLostReason;
                              a2: StringView; a3: pointer; a4: pointer): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1219:16
  PopErrorScopeCallback* = proc (a0: PopErrorScopeStatus; a1: ErrorType;
                                 a2: StringView; a3: pointer; a4: pointer): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1233:16
  QueueWorkDoneCallback* = proc (a0: QueueWorkDoneStatus; a1: pointer;
                                 a2: pointer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1234:16
  RequestAdapterCallback* = proc (a0: RequestAdapterStatus; a1: Adapter;
                                  a2: StringView; a3: pointer; a4: pointer): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1242:16
  RequestDeviceCallback* = proc (a0: RequestDeviceStatus; a1: Device;
                                 a2: StringView; a3: pointer; a4: pointer): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1250:16
  UncapturedErrorCallback* = proc (a0: ptr Device; a1: ErrorType;
                                   a2: StringView; a3: pointer; a4: pointer): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1258:16
  struct_WGPUChainedStruct* {.pure, inheritable, bycopy.} = object
    next*: ptr struct_WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1268:16
    sType*: SType
  ChainedStruct* = struct_WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1271:3
  struct_WGPUChainedStructOut* {.pure, inheritable, bycopy.} = object
    next*: ptr struct_WGPUChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1273:16
    sType*: SType
  ChainedStructOut* = struct_WGPUChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1276:3
  struct_WGPUBufferMapCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1294:16
    mode*: CallbackMode
    callback*: BufferMapCallback
    userdata1*: pointer
    userdata2*: pointer
  BufferMapCallbackInfo* = struct_WGPUBufferMapCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1300:3
  struct_WGPUCompilationInfoCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1302:16
    mode*: CallbackMode
    callback*: CompilationInfoCallback
    userdata1*: pointer
    userdata2*: pointer
  CompilationInfoCallbackInfo* = struct_WGPUCompilationInfoCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1308:3
  struct_WGPUCreateComputePipelineAsyncCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1310:16
    mode*: CallbackMode
    callback*: CreateComputePipelineAsyncCallback
    userdata1*: pointer
    userdata2*: pointer
  CreateComputePipelineAsyncCallbackInfo* = struct_WGPUCreateComputePipelineAsyncCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1316:3
  struct_WGPUCreateRenderPipelineAsyncCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1318:16
    mode*: CallbackMode
    callback*: CreateRenderPipelineAsyncCallback
    userdata1*: pointer
    userdata2*: pointer
  CreateRenderPipelineAsyncCallbackInfo* = struct_WGPUCreateRenderPipelineAsyncCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1324:3
  struct_WGPUDeviceLostCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1326:16
    mode*: CallbackMode
    callback*: DeviceLostCallback
    userdata1*: pointer
    userdata2*: pointer
  DeviceLostCallbackInfo* = struct_WGPUDeviceLostCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1332:3
  struct_WGPUPopErrorScopeCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1334:16
    mode*: CallbackMode
    callback*: PopErrorScopeCallback
    userdata1*: pointer
    userdata2*: pointer
  PopErrorScopeCallbackInfo* = struct_WGPUPopErrorScopeCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1340:3
  struct_WGPUQueueWorkDoneCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1342:16
    mode*: CallbackMode
    callback*: QueueWorkDoneCallback
    userdata1*: pointer
    userdata2*: pointer
  QueueWorkDoneCallbackInfo* = struct_WGPUQueueWorkDoneCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1348:3
  struct_WGPURequestAdapterCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1350:16
    mode*: CallbackMode
    callback*: RequestAdapterCallback
    userdata1*: pointer
    userdata2*: pointer
  RequestAdapterCallbackInfo* = struct_WGPURequestAdapterCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1356:3
  struct_WGPURequestDeviceCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1358:16
    mode*: CallbackMode
    callback*: RequestDeviceCallback
    userdata1*: pointer
    userdata2*: pointer
  RequestDeviceCallbackInfo* = struct_WGPURequestDeviceCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1364:3
  struct_WGPUUncapturedErrorCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1366:16
    callback*: UncapturedErrorCallback
    userdata1*: pointer
    userdata2*: pointer
  UncapturedErrorCallbackInfo* = struct_WGPUUncapturedErrorCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1371:3
  struct_WGPUAdapterInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1375:16
    vendor*: StringView
    architecture*: StringView
    device*: StringView
    description*: StringView
    backendType*: BackendType
    adapterType*: AdapterType
    vendorID*: uint32
    deviceID*: uint32
  AdapterInfo* = struct_WGPUAdapterInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1397:3
  struct_WGPUBindGroupEntry* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1399:16
    binding*: uint32
    buffer*: Buffer
    offset*: uint64
    size*: uint64
    sampler*: Sampler
    textureView*: TextureView
  BindGroupEntry* = struct_WGPUBindGroupEntry ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1407:3
  struct_WGPUBlendComponent* {.pure, inheritable, bycopy.} = object
    operation*: BlendOperation ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1409:16
    srcFactor*: BlendFactor
    dstFactor*: BlendFactor
  BlendComponent* = struct_WGPUBlendComponent ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1413:3
  struct_WGPUBufferBindingLayout* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1415:16
    type_field*: BufferBindingType
    hasDynamicOffset*: Bool
    minBindingSize*: uint64
  BufferBindingLayout* = struct_WGPUBufferBindingLayout ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1420:3
  struct_WGPUBufferDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1422:16
    label*: StringView
    usage*: BufferUsage
    size*: uint64
    mappedAtCreation*: Bool
  BufferDescriptor* = struct_WGPUBufferDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1431:3
  struct_WGPUColor* {.pure, inheritable, bycopy.} = object
    r*: cdouble              ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1433:16
    g*: cdouble
    b*: cdouble
    a*: cdouble
  Color* = struct_WGPUColor  ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1438:3
  struct_WGPUCommandBufferDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1440:16
    label*: StringView
  CommandBufferDescriptor* = struct_WGPUCommandBufferDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1446:3
  struct_WGPUCommandEncoderDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1448:16
    label*: StringView
  CommandEncoderDescriptor* = struct_WGPUCommandEncoderDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1454:3
  struct_WGPUCompilationMessage* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1456:16
    message*: StringView
    type_field*: CompilationMessageType
    lineNum*: uint64
    linePos*: uint64
    offset*: uint64
    length*: uint64
  CompilationMessage* = struct_WGPUCompilationMessage ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1484:3
  struct_WGPUComputePassTimestampWrites* {.pure, inheritable, bycopy.} = object
    querySet*: QuerySet      ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1486:16
    beginningOfPassWriteIndex*: uint32
    endOfPassWriteIndex*: uint32
  ComputePassTimestampWrites* = struct_WGPUComputePassTimestampWrites ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1490:3
  struct_WGPUConstantEntry* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1492:16
    key*: StringView
    value*: cdouble
  ConstantEntry* = struct_WGPUConstantEntry ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1499:3
  struct_WGPUExtent3D* {.pure, inheritable, bycopy.} = object
    width*: uint32           ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1501:16
    height*: uint32
    depthOrArrayLayers*: uint32
  Extent3D* = struct_WGPUExtent3D ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1505:3
  struct_WGPUFuture* {.pure, inheritable, bycopy.} = object
    id*: uint64              ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1510:16
  Future* = struct_WGPUFuture ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1515:3
  struct_WGPUInstanceCapabilities* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1520:16
    timedWaitAnyEnable*: Bool
    timedWaitAnyMaxCount*: csize_t
  InstanceCapabilities* = struct_WGPUInstanceCapabilities ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1531:3
  struct_WGPULimits* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1533:16
    maxTextureDimension1D*: uint32
    maxTextureDimension2D*: uint32
    maxTextureDimension3D*: uint32
    maxTextureArrayLayers*: uint32
    maxBindGroups*: uint32
    maxBindGroupsPlusVertexBuffers*: uint32
    maxBindingsPerBindGroup*: uint32
    maxDynamicUniformBuffersPerPipelineLayout*: uint32
    maxDynamicStorageBuffersPerPipelineLayout*: uint32
    maxSampledTexturesPerShaderStage*: uint32
    maxSamplersPerShaderStage*: uint32
    maxStorageBuffersPerShaderStage*: uint32
    maxStorageTexturesPerShaderStage*: uint32
    maxUniformBuffersPerShaderStage*: uint32
    maxUniformBufferBindingSize*: uint64
    maxStorageBufferBindingSize*: uint64
    minUniformBufferOffsetAlignment*: uint32
    minStorageBufferOffsetAlignment*: uint32
    maxVertexBuffers*: uint32
    maxBufferSize*: uint64
    maxVertexAttributes*: uint32
    maxVertexBufferArrayStride*: uint32
    maxInterStageShaderVariables*: uint32
    maxColorAttachments*: uint32
    maxColorAttachmentBytesPerSample*: uint32
    maxComputeWorkgroupStorageSize*: uint32
    maxComputeInvocationsPerWorkgroup*: uint32
    maxComputeWorkgroupSizeX*: uint32
    maxComputeWorkgroupSizeY*: uint32
    maxComputeWorkgroupSizeZ*: uint32
    maxComputeWorkgroupsPerDimension*: uint32
  Limits* = struct_WGPULimits ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1567:3
  struct_WGPUMultisampleState* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1569:16
    count*: uint32
    mask*: uint32
    alphaToCoverageEnabled*: Bool
  MultisampleState* = struct_WGPUMultisampleState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1574:3
  struct_WGPUOrigin3D* {.pure, inheritable, bycopy.} = object
    x*: uint32               ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1576:16
    y*: uint32
    z*: uint32
  Origin3D* = struct_WGPUOrigin3D ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1580:3
  struct_WGPUPipelineLayoutDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1582:16
    label*: StringView
    bindGroupLayoutCount*: csize_t
    bindGroupLayouts*: ptr BindGroupLayout
  PipelineLayoutDescriptor* = struct_WGPUPipelineLayoutDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1590:3
  struct_WGPUPrimitiveState* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1592:16
    topology*: PrimitiveTopology
    stripIndexFormat*: IndexFormat
    frontFace*: FrontFace
    cullMode*: CullMode
    unclippedDepth*: Bool
  PrimitiveState* = struct_WGPUPrimitiveState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1599:3
  struct_WGPUQuerySetDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1601:16
    label*: StringView
    type_field*: QueryType
    count*: uint32
  QuerySetDescriptor* = struct_WGPUQuerySetDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1609:3
  struct_WGPUQueueDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1611:16
    label*: StringView
  QueueDescriptor* = struct_WGPUQueueDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1617:3
  struct_WGPURenderBundleDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1619:16
    label*: StringView
  RenderBundleDescriptor* = struct_WGPURenderBundleDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1625:3
  struct_WGPURenderBundleEncoderDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1627:16
    label*: StringView
    colorFormatCount*: csize_t
    colorFormats*: ptr TextureFormat
    depthStencilFormat*: TextureFormat
    sampleCount*: uint32
    depthReadOnly*: Bool
    stencilReadOnly*: Bool
  RenderBundleEncoderDescriptor* = struct_WGPURenderBundleEncoderDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1639:3
  struct_WGPURenderPassDepthStencilAttachment* {.pure, inheritable, bycopy.} = object
    view*: TextureView       ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1641:16
    depthLoadOp*: LoadOp
    depthStoreOp*: StoreOp
    depthClearValue*: cfloat
    depthReadOnly*: Bool
    stencilLoadOp*: LoadOp
    stencilStoreOp*: StoreOp
    stencilClearValue*: uint32
    stencilReadOnly*: Bool
  RenderPassDepthStencilAttachment* = struct_WGPURenderPassDepthStencilAttachment ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1651:3
  struct_WGPURenderPassMaxDrawCount* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1653:16
    maxDrawCount*: uint64
  RenderPassMaxDrawCount* = struct_WGPURenderPassMaxDrawCount ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1656:3
  struct_WGPURenderPassTimestampWrites* {.pure, inheritable, bycopy.} = object
    querySet*: QuerySet      ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1658:16
    beginningOfPassWriteIndex*: uint32
    endOfPassWriteIndex*: uint32
  RenderPassTimestampWrites* = struct_WGPURenderPassTimestampWrites ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1662:3
  struct_WGPURequestAdapterOptions* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1664:16
    featureLevel*: FeatureLevel
    powerPreference*: PowerPreference
    forceFallbackAdapter*: Bool
    backendType*: BackendType
    compatibleSurface*: Surface
  RequestAdapterOptions* = struct_WGPURequestAdapterOptions ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1688:3
  struct_WGPUSamplerBindingLayout* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1690:16
    type_field*: SamplerBindingType
  SamplerBindingLayout* = struct_WGPUSamplerBindingLayout ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1693:3
  struct_WGPUSamplerDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1695:16
    label*: StringView
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
  SamplerDescriptor* = struct_WGPUSamplerDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1711:3
  struct_WGPUShaderModuleDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1713:16
    label*: StringView
  ShaderModuleDescriptor* = struct_WGPUShaderModuleDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1719:3
  struct_WGPUShaderSourceSPIRV* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1721:16
    codeSize*: uint32
    code*: ptr uint32
  ShaderSourceSPIRV* = struct_WGPUShaderSourceSPIRV ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1725:3
  struct_WGPUShaderSourceWGSL* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1727:16
    code*: StringView
  ShaderSourceWGSL* = struct_WGPUShaderSourceWGSL ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1733:3
  struct_WGPUStencilFaceState* {.pure, inheritable, bycopy.} = object
    compare*: CompareFunction ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1735:16
    failOp*: StencilOperation
    depthFailOp*: StencilOperation
    passOp*: StencilOperation
  StencilFaceState* = struct_WGPUStencilFaceState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1740:3
  struct_WGPUStorageTextureBindingLayout* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1742:16
    access*: StorageTextureAccess
    format*: TextureFormat
    viewDimension*: TextureViewDimension
  StorageTextureBindingLayout* = struct_WGPUStorageTextureBindingLayout ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1747:3
  struct_WGPUSupportedFeatures* {.pure, inheritable, bycopy.} = object
    featureCount*: csize_t   ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1749:16
    features*: ptr FeatureName
  SupportedFeatures* = struct_WGPUSupportedFeatures ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1752:3
  struct_WGPUSupportedWGSLLanguageFeatures* {.pure, inheritable, bycopy.} = object
    featureCount*: csize_t   ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1754:16
    features*: ptr WGSLLanguageFeatureName
  SupportedWGSLLanguageFeatures* = struct_WGPUSupportedWGSLLanguageFeatures ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1757:3
  struct_WGPUSurfaceCapabilities* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1762:16
    usages*: TextureUsage
    formatCount*: csize_t
    formats*: ptr TextureFormat
    presentModeCount*: csize_t
    presentModes*: ptr PresentMode
    alphaModeCount*: csize_t
    alphaModes*: ptr CompositeAlphaMode
  SurfaceCapabilities* = struct_WGPUSurfaceCapabilities ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1786:3
  struct_WGPUSurfaceConfiguration* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1792:16
    device*: Device
    format*: TextureFormat
    usage*: TextureUsage
    width*: uint32
    height*: uint32
    viewFormatCount*: csize_t
    viewFormats*: ptr TextureFormat
    alphaMode*: CompositeAlphaMode
    presentMode*: PresentMode
  SurfaceConfiguration* = struct_WGPUSurfaceConfiguration ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1827:3
  struct_WGPUSurfaceDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1834:16
    label*: StringView
  SurfaceDescriptor* = struct_WGPUSurfaceDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1842:3
  struct_WGPUSurfaceSourceAndroidNativeWindow* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1847:16
    window*: pointer
  SurfaceSourceAndroidNativeWindow* = struct_WGPUSurfaceSourceAndroidNativeWindow ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1853:3
  struct_WGPUSurfaceSourceMetalLayer* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1858:16
    layer*: pointer
  SurfaceSourceMetalLayer* = struct_WGPUSurfaceSourceMetalLayer ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1864:3
  struct_WGPUSurfaceSourceWaylandSurface* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1869:16
    display*: pointer
    surface*: pointer
  SurfaceSourceWaylandSurface* = struct_WGPUSurfaceSourceWaylandSurface ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1879:3
  struct_WGPUSurfaceSourceWindowsHWND* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1884:16
    hinstance*: pointer
    hwnd*: pointer
  SurfaceSourceWindowsHWND* = struct_WGPUSurfaceSourceWindowsHWND ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1895:3
  struct_WGPUSurfaceSourceXCBWindow* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1900:16
    connection*: pointer
    window*: uint32
  SurfaceSourceXCBWindow* = struct_WGPUSurfaceSourceXCBWindow ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1910:3
  struct_WGPUSurfaceSourceXlibWindow* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1915:16
    display*: pointer
    window*: uint64
  SurfaceSourceXlibWindow* = struct_WGPUSurfaceSourceXlibWindow ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1925:3
  struct_WGPUSurfaceTexture* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1931:16
    texture*: Texture
    status*: SurfaceGetCurrentTextureStatus
  SurfaceTexture* = struct_WGPUSurfaceTexture ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1942:3
  struct_WGPUTexelCopyBufferLayout* {.pure, inheritable, bycopy.} = object
    offset*: uint64          ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1944:16
    bytesPerRow*: uint32
    rowsPerImage*: uint32
  TexelCopyBufferLayout* = struct_WGPUTexelCopyBufferLayout ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1948:3
  struct_WGPUTextureBindingLayout* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1950:16
    sampleType*: TextureSampleType
    viewDimension*: TextureViewDimension
    multisampled*: Bool
  TextureBindingLayout* = struct_WGPUTextureBindingLayout ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1955:3
  struct_WGPUTextureViewDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1957:16
    label*: StringView
    format*: TextureFormat
    dimension*: TextureViewDimension
    baseMipLevel*: uint32
    mipLevelCount*: uint32
    baseArrayLayer*: uint32
    arrayLayerCount*: uint32
    aspect*: TextureAspect
    usage*: TextureUsage
  TextureViewDescriptor* = struct_WGPUTextureViewDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1971:3
  struct_WGPUVertexAttribute* {.pure, inheritable, bycopy.} = object
    format*: VertexFormat    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1973:16
    offset*: uint64
    shaderLocation*: uint32
  VertexAttribute* = struct_WGPUVertexAttribute ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1977:3
  struct_WGPUBindGroupDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1979:16
    label*: StringView
    layout*: BindGroupLayout
    entryCount*: csize_t
    entries*: ptr BindGroupEntry
  BindGroupDescriptor* = struct_WGPUBindGroupDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1988:3
  struct_WGPUBindGroupLayoutEntry* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1990:16
    binding*: uint32
    visibility*: ShaderStage
    buffer*: BufferBindingLayout
    sampler*: SamplerBindingLayout
    texture*: TextureBindingLayout
    storageTexture*: StorageTextureBindingLayout
  BindGroupLayoutEntry* = struct_WGPUBindGroupLayoutEntry ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1998:3
  struct_WGPUBlendState* {.pure, inheritable, bycopy.} = object
    color*: BlendComponent   ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2000:16
    alpha*: BlendComponent
  BlendState* = struct_WGPUBlendState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2003:3
  CompilationInfo* = struct_WGPUCompilationInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2009:3
  struct_WGPUComputePassDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2011:16
    label*: StringView
    timestampWrites*: ptr ComputePassTimestampWrites
  ComputePassDescriptor* = struct_WGPUComputePassDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2018:3
  struct_WGPUDepthStencilState* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2020:16
    format*: TextureFormat
    depthWriteEnabled*: OptionalBool
    depthCompare*: CompareFunction
    stencilFront*: StencilFaceState
    stencilBack*: StencilFaceState
    stencilReadMask*: uint32
    stencilWriteMask*: uint32
    depthBias*: int32
    depthBiasSlopeScale*: cfloat
    depthBiasClamp*: cfloat
  DepthStencilState* = struct_WGPUDepthStencilState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2032:3
  struct_WGPUDeviceDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2034:16
    label*: StringView
    requiredFeatureCount*: csize_t
    requiredFeatures*: ptr FeatureName
    requiredLimits*: ptr Limits
    defaultQueue*: QueueDescriptor
    deviceLostCallbackInfo*: DeviceLostCallbackInfo
    uncapturedErrorCallbackInfo*: UncapturedErrorCallbackInfo
  DeviceDescriptor* = struct_WGPUDeviceDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2046:3
  struct_WGPUFutureWaitInfo* {.pure, inheritable, bycopy.} = object
    future*: Future          ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2051:16
    completed*: Bool
  FutureWaitInfo* = struct_WGPUFutureWaitInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2060:3
  struct_WGPUInstanceDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2062:16
    features*: InstanceCapabilities
  InstanceDescriptor* = struct_WGPUInstanceDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2068:3
  struct_WGPUProgrammableStageDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2070:16
    module*: ShaderModule
    entryPoint*: StringView
    constantCount*: csize_t
    constants*: ptr ConstantEntry
  ProgrammableStageDescriptor* = struct_WGPUProgrammableStageDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2079:3
  struct_WGPURenderPassColorAttachment* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2081:16
    view*: TextureView
    depthSlice*: uint32
    resolveTarget*: TextureView
    loadOp*: LoadOp
    storeOp*: StoreOp
    clearValue*: Color
  RenderPassColorAttachment* = struct_WGPURenderPassColorAttachment ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2089:3
  struct_WGPUTexelCopyBufferInfo* {.pure, inheritable, bycopy.} = object
    layout*: TexelCopyBufferLayout ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2091:16
    buffer*: Buffer
  TexelCopyBufferInfo* = struct_WGPUTexelCopyBufferInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2094:3
  struct_WGPUTexelCopyTextureInfo* {.pure, inheritable, bycopy.} = object
    texture*: Texture        ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2096:16
    mipLevel*: uint32
    origin*: Origin3D
    aspect*: TextureAspect
  TexelCopyTextureInfo* = struct_WGPUTexelCopyTextureInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2101:3
  struct_WGPUTextureDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2103:16
    label*: StringView
    usage*: TextureUsage
    dimension*: TextureDimension
    size*: Extent3D
    format*: TextureFormat
    mipLevelCount*: uint32
    sampleCount*: uint32
    viewFormatCount*: csize_t
    viewFormats*: ptr TextureFormat
  TextureDescriptor* = struct_WGPUTextureDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2117:3
  struct_WGPUVertexBufferLayout* {.pure, inheritable, bycopy.} = object
    stepMode*: VertexStepMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2119:16
    arrayStride*: uint64
    attributeCount*: csize_t
    attributes*: ptr VertexAttribute
  VertexBufferLayout* = struct_WGPUVertexBufferLayout ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2129:3
  struct_WGPUBindGroupLayoutDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2131:16
    label*: StringView
    entryCount*: csize_t
    entries*: ptr BindGroupLayoutEntry
  BindGroupLayoutDescriptor* = struct_WGPUBindGroupLayoutDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2139:3
  struct_WGPUColorTargetState* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2141:16
    format*: TextureFormat
    blend*: ptr BlendState
    writeMask*: ColorWriteMask
  ColorTargetState* = struct_WGPUColorTargetState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2151:3
  struct_WGPUComputePipelineDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2153:16
    label*: StringView
    layout*: PipelineLayout
    compute*: ProgrammableStageDescriptor
  ComputePipelineDescriptor* = struct_WGPUComputePipelineDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2161:3
  struct_WGPURenderPassDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2163:16
    label*: StringView
    colorAttachmentCount*: csize_t
    colorAttachments*: ptr RenderPassColorAttachment
    depthStencilAttachment*: ptr RenderPassDepthStencilAttachment
    occlusionQuerySet*: QuerySet
    timestampWrites*: ptr RenderPassTimestampWrites
  RenderPassDescriptor* = struct_WGPURenderPassDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2174:3
  struct_WGPUVertexState* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2176:16
    module*: ShaderModule
    entryPoint*: StringView
    constantCount*: csize_t
    constants*: ptr ConstantEntry
    bufferCount*: csize_t
    buffers*: ptr VertexBufferLayout
  VertexState* = struct_WGPUVertexState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2187:3
  struct_WGPUFragmentState* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2189:16
    module*: ShaderModule
    entryPoint*: StringView
    constantCount*: csize_t
    constants*: ptr ConstantEntry
    targetCount*: csize_t
    targets*: ptr ColorTargetState
  FragmentState* = struct_WGPUFragmentState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2200:3
  struct_WGPURenderPipelineDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2202:16
    label*: StringView
    layout*: PipelineLayout
    vertex*: VertexState
    primitive*: PrimitiveState
    depthStencil*: ptr DepthStencilState
    multisample*: MultisampleState
    fragment*: ptr FragmentState
  RenderPipelineDescriptor* = struct_WGPURenderPipelineDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2214:3
  ProcCreateInstance* = proc (a0: ptr InstanceDescriptor): Instance {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2228:24
  ProcGetInstanceCapabilities* = proc (a0: ptr InstanceCapabilities): Status {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2233:22
  ProcGetProcAddress* = proc (a0: StringView): Proc {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2238:20
  ProcAdapterGetFeatures* = proc (a0: Adapter; a1: ptr SupportedFeatures): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2245:16
  ProcAdapterGetInfo* = proc (a0: Adapter; a1: ptr AdapterInfo): Status {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2250:22
  ProcAdapterGetLimits* = proc (a0: Adapter; a1: ptr Limits): Status {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2255:22
  ProcAdapterHasFeature* = proc (a0: Adapter; a1: FeatureName): Bool {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2260:20
  ProcAdapterRequestDevice* = proc (a0: Adapter; a1: ptr DeviceDescriptor;
                                    a2: RequestDeviceCallbackInfo): Future {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2265:22
  ProcAdapterAddRef* = proc (a0: Adapter): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2270:16
  ProcAdapterRelease* = proc (a0: Adapter): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2275:16
  ProcAdapterInfoFreeMembers* = proc (a0: AdapterInfo): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2282:16
  ProcBindGroupSetLabel* = proc (a0: BindGroup; a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2289:16
  ProcBindGroupAddRef* = proc (a0: BindGroup): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2294:16
  ProcBindGroupRelease* = proc (a0: BindGroup): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2299:16
  ProcBindGroupLayoutSetLabel* = proc (a0: BindGroupLayout; a1: StringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2306:16
  ProcBindGroupLayoutAddRef* = proc (a0: BindGroupLayout): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2311:16
  ProcBindGroupLayoutRelease* = proc (a0: BindGroupLayout): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2316:16
  ProcBufferDestroy* = proc (a0: Buffer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2323:16
  ProcBufferGetConstMappedRange* = proc (a0: Buffer; a1: csize_t; a2: csize_t): pointer {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2328:24
  ProcBufferGetMapState* = proc (a0: Buffer): BufferMapState {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2333:30
  ProcBufferGetMappedRange* = proc (a0: Buffer; a1: csize_t; a2: csize_t): pointer {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2338:18
  ProcBufferGetSize* = proc (a0: Buffer): uint64 {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2343:20
  ProcBufferGetUsage* = proc (a0: Buffer): BufferUsage {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2348:27
  ProcBufferMapAsync* = proc (a0: Buffer; a1: MapMode; a2: csize_t; a3: csize_t;
                              a4: BufferMapCallbackInfo): Future {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2353:22
  ProcBufferSetLabel* = proc (a0: Buffer; a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2358:16
  ProcBufferUnmap* = proc (a0: Buffer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2363:16
  ProcBufferAddRef* = proc (a0: Buffer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2368:16
  ProcBufferRelease* = proc (a0: Buffer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2373:16
  ProcCommandBufferSetLabel* = proc (a0: CommandBuffer; a1: StringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2380:16
  ProcCommandBufferAddRef* = proc (a0: CommandBuffer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2385:16
  ProcCommandBufferRelease* = proc (a0: CommandBuffer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2390:16
  ProcCommandEncoderBeginComputePass* = proc (a0: CommandEncoder;
      a1: ptr ComputePassDescriptor): ComputePassEncoder {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2397:34
  ProcCommandEncoderBeginRenderPass* = proc (a0: CommandEncoder;
      a1: ptr RenderPassDescriptor): RenderPassEncoder {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2402:33
  ProcCommandEncoderClearBuffer* = proc (a0: CommandEncoder; a1: Buffer;
      a2: uint64; a3: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2407:16
  ProcCommandEncoderCopyBufferToBuffer* = proc (a0: CommandEncoder; a1: Buffer;
      a2: uint64; a3: Buffer; a4: uint64; a5: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2412:16
  ProcCommandEncoderCopyBufferToTexture* = proc (a0: CommandEncoder;
      a1: ptr TexelCopyBufferInfo; a2: ptr TexelCopyTextureInfo;
      a3: ptr Extent3D): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2417:16
  ProcCommandEncoderCopyTextureToBuffer* = proc (a0: CommandEncoder;
      a1: ptr TexelCopyTextureInfo; a2: ptr TexelCopyBufferInfo;
      a3: ptr Extent3D): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2422:16
  ProcCommandEncoderCopyTextureToTexture* = proc (a0: CommandEncoder;
      a1: ptr TexelCopyTextureInfo; a2: ptr TexelCopyTextureInfo;
      a3: ptr Extent3D): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2427:16
  ProcCommandEncoderFinish* = proc (a0: CommandEncoder;
                                    a1: ptr CommandBufferDescriptor): CommandBuffer {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2432:29
  ProcCommandEncoderInsertDebugMarker* = proc (a0: CommandEncoder;
      a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2437:16
  ProcCommandEncoderPopDebugGroup* = proc (a0: CommandEncoder): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2442:16
  ProcCommandEncoderPushDebugGroup* = proc (a0: CommandEncoder; a1: StringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2447:16
  ProcCommandEncoderResolveQuerySet* = proc (a0: CommandEncoder; a1: QuerySet;
      a2: uint32; a3: uint32; a4: Buffer; a5: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2452:16
  ProcCommandEncoderSetLabel* = proc (a0: CommandEncoder; a1: StringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2457:16
  ProcCommandEncoderWriteTimestamp* = proc (a0: CommandEncoder; a1: QuerySet;
      a2: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2462:16
  ProcCommandEncoderAddRef* = proc (a0: CommandEncoder): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2467:16
  ProcCommandEncoderRelease* = proc (a0: CommandEncoder): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2472:16
  ProcComputePassEncoderDispatchWorkgroups* = proc (a0: ComputePassEncoder;
      a1: uint32; a2: uint32; a3: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2479:16
  ProcComputePassEncoderDispatchWorkgroupsIndirect* = proc (
      a0: ComputePassEncoder; a1: Buffer; a2: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2484:16
  ProcComputePassEncoderEnd* = proc (a0: ComputePassEncoder): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2489:16
  ProcComputePassEncoderInsertDebugMarker* = proc (a0: ComputePassEncoder;
      a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2494:16
  ProcComputePassEncoderPopDebugGroup* = proc (a0: ComputePassEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2499:16
  ProcComputePassEncoderPushDebugGroup* = proc (a0: ComputePassEncoder;
      a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2504:16
  ProcComputePassEncoderSetBindGroup* = proc (a0: ComputePassEncoder;
      a1: uint32; a2: BindGroup; a3: csize_t; a4: ptr uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2509:16
  ProcComputePassEncoderSetLabel* = proc (a0: ComputePassEncoder; a1: StringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2514:16
  ProcComputePassEncoderSetPipeline* = proc (a0: ComputePassEncoder;
      a1: ComputePipeline): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2519:16
  ProcComputePassEncoderAddRef* = proc (a0: ComputePassEncoder): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2524:16
  ProcComputePassEncoderRelease* = proc (a0: ComputePassEncoder): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2529:16
  ProcComputePipelineGetBindGroupLayout* = proc (a0: ComputePipeline; a1: uint32): BindGroupLayout {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2536:31
  ProcComputePipelineSetLabel* = proc (a0: ComputePipeline; a1: StringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2541:16
  ProcComputePipelineAddRef* = proc (a0: ComputePipeline): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2546:16
  ProcComputePipelineRelease* = proc (a0: ComputePipeline): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2551:16
  ProcDeviceCreateBindGroup* = proc (a0: Device; a1: ptr BindGroupDescriptor): BindGroup {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2558:25
  ProcDeviceCreateBindGroupLayout* = proc (a0: Device;
      a1: ptr BindGroupLayoutDescriptor): BindGroupLayout {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2563:31
  ProcDeviceCreateBuffer* = proc (a0: Device; a1: ptr BufferDescriptor): Buffer {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2568:22
  ProcDeviceCreateCommandEncoder* = proc (a0: Device;
      a1: ptr CommandEncoderDescriptor): CommandEncoder {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2573:30
  ProcDeviceCreateComputePipeline* = proc (a0: Device;
      a1: ptr ComputePipelineDescriptor): ComputePipeline {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2578:31
  ProcDeviceCreateComputePipelineAsync* = proc (a0: Device;
      a1: ptr ComputePipelineDescriptor;
      a2: CreateComputePipelineAsyncCallbackInfo): Future {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2583:22
  ProcDeviceCreatePipelineLayout* = proc (a0: Device;
      a1: ptr PipelineLayoutDescriptor): PipelineLayout {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2588:30
  ProcDeviceCreateQuerySet* = proc (a0: Device; a1: ptr QuerySetDescriptor): QuerySet {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2593:24
  ProcDeviceCreateRenderBundleEncoder* = proc (a0: Device;
      a1: ptr RenderBundleEncoderDescriptor): RenderBundleEncoder {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2598:35
  ProcDeviceCreateRenderPipeline* = proc (a0: Device;
      a1: ptr RenderPipelineDescriptor): RenderPipeline {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2603:30
  ProcDeviceCreateRenderPipelineAsync* = proc (a0: Device;
      a1: ptr RenderPipelineDescriptor;
      a2: CreateRenderPipelineAsyncCallbackInfo): Future {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2608:22
  ProcDeviceCreateSampler* = proc (a0: Device; a1: ptr SamplerDescriptor): Sampler {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2613:23
  ProcDeviceCreateShaderModule* = proc (a0: Device;
                                        a1: ptr ShaderModuleDescriptor): ShaderModule {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2618:28
  ProcDeviceCreateTexture* = proc (a0: Device; a1: ptr TextureDescriptor): Texture {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2623:23
  ProcDeviceDestroy* = proc (a0: Device): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2628:16
  ProcDeviceGetAdapterInfo* = proc (a0: Device): AdapterInfo {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2633:27
  ProcDeviceGetFeatures* = proc (a0: Device; a1: ptr SupportedFeatures): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2638:16
  ProcDeviceGetLimits* = proc (a0: Device; a1: ptr Limits): Status {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2643:22
  ProcDeviceGetLostFuture* = proc (a0: Device): Future {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2648:22
  ProcDeviceGetQueue* = proc (a0: Device): Queue {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2653:21
  ProcDeviceHasFeature* = proc (a0: Device; a1: FeatureName): Bool {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2658:20
  ProcDevicePopErrorScope* = proc (a0: Device; a1: PopErrorScopeCallbackInfo): Future {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2663:22
  ProcDevicePushErrorScope* = proc (a0: Device; a1: ErrorFilter): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2668:16
  ProcDeviceSetLabel* = proc (a0: Device; a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2673:16
  ProcDeviceAddRef* = proc (a0: Device): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2678:16
  ProcDeviceRelease* = proc (a0: Device): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2683:16
  ProcInstanceCreateSurface* = proc (a0: Instance; a1: ptr SurfaceDescriptor): Surface {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2690:23
  ProcInstanceGetWGSLLanguageFeatures* = proc (a0: Instance;
      a1: ptr SupportedWGSLLanguageFeatures): Status {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2695:22
  ProcInstanceHasWGSLLanguageFeature* = proc (a0: Instance;
      a1: WGSLLanguageFeatureName): Bool {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2700:20
  ProcInstanceProcessEvents* = proc (a0: Instance): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2705:16
  ProcInstanceRequestAdapter* = proc (a0: Instance;
                                      a1: ptr RequestAdapterOptions;
                                      a2: RequestAdapterCallbackInfo): Future {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2710:22
  ProcInstanceWaitAny* = proc (a0: Instance; a1: csize_t;
                               a2: ptr FutureWaitInfo; a3: uint64): WaitStatus {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2715:26
  ProcInstanceAddRef* = proc (a0: Instance): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2720:16
  ProcInstanceRelease* = proc (a0: Instance): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2725:16
  ProcPipelineLayoutSetLabel* = proc (a0: PipelineLayout; a1: StringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2732:16
  ProcPipelineLayoutAddRef* = proc (a0: PipelineLayout): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2737:16
  ProcPipelineLayoutRelease* = proc (a0: PipelineLayout): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2742:16
  ProcQuerySetDestroy* = proc (a0: QuerySet): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2749:16
  ProcQuerySetGetCount* = proc (a0: QuerySet): uint32 {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2754:20
  ProcQuerySetGetType* = proc (a0: QuerySet): QueryType {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2759:25
  ProcQuerySetSetLabel* = proc (a0: QuerySet; a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2764:16
  ProcQuerySetAddRef* = proc (a0: QuerySet): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2769:16
  ProcQuerySetRelease* = proc (a0: QuerySet): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2774:16
  ProcQueueOnSubmittedWorkDone* = proc (a0: Queue; a1: QueueWorkDoneCallbackInfo): Future {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2781:22
  ProcQueueSetLabel* = proc (a0: Queue; a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2786:16
  ProcQueueSubmit* = proc (a0: Queue; a1: csize_t; a2: ptr CommandBuffer): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2791:16
  ProcQueueWriteBuffer* = proc (a0: Queue; a1: Buffer; a2: uint64; a3: pointer;
                                a4: csize_t): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2796:16
  ProcQueueWriteTexture* = proc (a0: Queue; a1: ptr TexelCopyTextureInfo;
                                 a2: pointer; a3: csize_t;
                                 a4: ptr TexelCopyBufferLayout; a5: ptr Extent3D): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2801:16
  ProcQueueAddRef* = proc (a0: Queue): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2806:16
  ProcQueueRelease* = proc (a0: Queue): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2811:16
  ProcRenderBundleSetLabel* = proc (a0: RenderBundle; a1: StringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2818:16
  ProcRenderBundleAddRef* = proc (a0: RenderBundle): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2823:16
  ProcRenderBundleRelease* = proc (a0: RenderBundle): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2828:16
  ProcRenderBundleEncoderDraw* = proc (a0: RenderBundleEncoder; a1: uint32;
                                       a2: uint32; a3: uint32; a4: uint32): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2835:16
  ProcRenderBundleEncoderDrawIndexed* = proc (a0: RenderBundleEncoder;
      a1: uint32; a2: uint32; a3: uint32; a4: int32; a5: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2840:16
  ProcRenderBundleEncoderDrawIndexedIndirect* = proc (a0: RenderBundleEncoder;
      a1: Buffer; a2: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2845:16
  ProcRenderBundleEncoderDrawIndirect* = proc (a0: RenderBundleEncoder;
      a1: Buffer; a2: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2850:16
  ProcRenderBundleEncoderFinish* = proc (a0: RenderBundleEncoder;
      a1: ptr RenderBundleDescriptor): RenderBundle {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2855:28
  ProcRenderBundleEncoderInsertDebugMarker* = proc (a0: RenderBundleEncoder;
      a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2860:16
  ProcRenderBundleEncoderPopDebugGroup* = proc (a0: RenderBundleEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2865:16
  ProcRenderBundleEncoderPushDebugGroup* = proc (a0: RenderBundleEncoder;
      a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2870:16
  ProcRenderBundleEncoderSetBindGroup* = proc (a0: RenderBundleEncoder;
      a1: uint32; a2: BindGroup; a3: csize_t; a4: ptr uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2875:16
  ProcRenderBundleEncoderSetIndexBuffer* = proc (a0: RenderBundleEncoder;
      a1: Buffer; a2: IndexFormat; a3: uint64; a4: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2880:16
  ProcRenderBundleEncoderSetLabel* = proc (a0: RenderBundleEncoder;
      a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2885:16
  ProcRenderBundleEncoderSetPipeline* = proc (a0: RenderBundleEncoder;
      a1: RenderPipeline): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2890:16
  ProcRenderBundleEncoderSetVertexBuffer* = proc (a0: RenderBundleEncoder;
      a1: uint32; a2: Buffer; a3: uint64; a4: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2895:16
  ProcRenderBundleEncoderAddRef* = proc (a0: RenderBundleEncoder): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2900:16
  ProcRenderBundleEncoderRelease* = proc (a0: RenderBundleEncoder): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2905:16
  ProcRenderPassEncoderBeginOcclusionQuery* = proc (a0: RenderPassEncoder;
      a1: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2912:16
  ProcRenderPassEncoderDraw* = proc (a0: RenderPassEncoder; a1: uint32;
                                     a2: uint32; a3: uint32; a4: uint32): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2917:16
  ProcRenderPassEncoderDrawIndexed* = proc (a0: RenderPassEncoder; a1: uint32;
      a2: uint32; a3: uint32; a4: int32; a5: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2922:16
  ProcRenderPassEncoderDrawIndexedIndirect* = proc (a0: RenderPassEncoder;
      a1: Buffer; a2: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2927:16
  ProcRenderPassEncoderDrawIndirect* = proc (a0: RenderPassEncoder; a1: Buffer;
      a2: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2932:16
  ProcRenderPassEncoderEnd* = proc (a0: RenderPassEncoder): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2937:16
  ProcRenderPassEncoderEndOcclusionQuery* = proc (a0: RenderPassEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2942:16
  ProcRenderPassEncoderExecuteBundles* = proc (a0: RenderPassEncoder;
      a1: csize_t; a2: ptr RenderBundle): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2947:16
  ProcRenderPassEncoderInsertDebugMarker* = proc (a0: RenderPassEncoder;
      a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2952:16
  ProcRenderPassEncoderPopDebugGroup* = proc (a0: RenderPassEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2957:16
  ProcRenderPassEncoderPushDebugGroup* = proc (a0: RenderPassEncoder;
      a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2962:16
  ProcRenderPassEncoderSetBindGroup* = proc (a0: RenderPassEncoder; a1: uint32;
      a2: BindGroup; a3: csize_t; a4: ptr uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2967:16
  ProcRenderPassEncoderSetBlendConstant* = proc (a0: RenderPassEncoder;
      a1: ptr Color): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2972:16
  ProcRenderPassEncoderSetIndexBuffer* = proc (a0: RenderPassEncoder;
      a1: Buffer; a2: IndexFormat; a3: uint64; a4: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2977:16
  ProcRenderPassEncoderSetLabel* = proc (a0: RenderPassEncoder; a1: StringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2982:16
  ProcRenderPassEncoderSetPipeline* = proc (a0: RenderPassEncoder;
      a1: RenderPipeline): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2987:16
  ProcRenderPassEncoderSetScissorRect* = proc (a0: RenderPassEncoder;
      a1: uint32; a2: uint32; a3: uint32; a4: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2992:16
  ProcRenderPassEncoderSetStencilReference* = proc (a0: RenderPassEncoder;
      a1: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2997:16
  ProcRenderPassEncoderSetVertexBuffer* = proc (a0: RenderPassEncoder;
      a1: uint32; a2: Buffer; a3: uint64; a4: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3002:16
  ProcRenderPassEncoderSetViewport* = proc (a0: RenderPassEncoder; a1: cfloat;
      a2: cfloat; a3: cfloat; a4: cfloat; a5: cfloat; a6: cfloat): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3007:16
  ProcRenderPassEncoderAddRef* = proc (a0: RenderPassEncoder): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3012:16
  ProcRenderPassEncoderRelease* = proc (a0: RenderPassEncoder): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3017:16
  ProcRenderPipelineGetBindGroupLayout* = proc (a0: RenderPipeline; a1: uint32): BindGroupLayout {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3024:31
  ProcRenderPipelineSetLabel* = proc (a0: RenderPipeline; a1: StringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3029:16
  ProcRenderPipelineAddRef* = proc (a0: RenderPipeline): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3034:16
  ProcRenderPipelineRelease* = proc (a0: RenderPipeline): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3039:16
  ProcSamplerSetLabel* = proc (a0: Sampler; a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3046:16
  ProcSamplerAddRef* = proc (a0: Sampler): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3051:16
  ProcSamplerRelease* = proc (a0: Sampler): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3056:16
  ProcShaderModuleGetCompilationInfo* = proc (a0: ShaderModule;
      a1: CompilationInfoCallbackInfo): Future {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3063:22
  ProcShaderModuleSetLabel* = proc (a0: ShaderModule; a1: StringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3068:16
  ProcShaderModuleAddRef* = proc (a0: ShaderModule): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3073:16
  ProcShaderModuleRelease* = proc (a0: ShaderModule): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3078:16
  ProcSupportedFeaturesFreeMembers* = proc (a0: SupportedFeatures): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3085:16
  ProcSupportedWGSLLanguageFeaturesFreeMembers* = proc (
      a0: SupportedWGSLLanguageFeatures): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3092:16
  ProcSurfaceConfigure* = proc (a0: Surface; a1: ptr SurfaceConfiguration): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3099:16
  ProcSurfaceGetCapabilities* = proc (a0: Surface; a1: Adapter;
                                      a2: ptr SurfaceCapabilities): Status {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3104:22
  ProcSurfaceGetCurrentTexture* = proc (a0: Surface; a1: ptr SurfaceTexture): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3109:16
  ProcSurfacePresent* = proc (a0: Surface): Status {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3114:22
  ProcSurfaceSetLabel* = proc (a0: Surface; a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3119:16
  ProcSurfaceUnconfigure* = proc (a0: Surface): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3124:16
  ProcSurfaceAddRef* = proc (a0: Surface): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3129:16
  ProcSurfaceRelease* = proc (a0: Surface): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3134:16
  ProcSurfaceCapabilitiesFreeMembers* = proc (a0: SurfaceCapabilities): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3141:16
  ProcTextureCreateView* = proc (a0: Texture; a1: ptr TextureViewDescriptor): TextureView {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3148:27
  ProcTextureDestroy* = proc (a0: Texture): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3153:16
  ProcTextureGetDepthOrArrayLayers* = proc (a0: Texture): uint32 {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3158:20
  ProcTextureGetDimension* = proc (a0: Texture): TextureDimension {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3163:32
  ProcTextureGetFormat* = proc (a0: Texture): TextureFormat {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3168:29
  ProcTextureGetHeight* = proc (a0: Texture): uint32 {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3173:20
  ProcTextureGetMipLevelCount* = proc (a0: Texture): uint32 {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3178:20
  ProcTextureGetSampleCount* = proc (a0: Texture): uint32 {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3183:20
  ProcTextureGetUsage* = proc (a0: Texture): TextureUsage {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3188:28
  ProcTextureGetWidth* = proc (a0: Texture): uint32 {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3193:20
  ProcTextureSetLabel* = proc (a0: Texture; a1: StringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3198:16
  ProcTextureAddRef* = proc (a0: Texture): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3203:16
  ProcTextureRelease* = proc (a0: Texture): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3208:16
  ProcTextureViewSetLabel* = proc (a0: TextureView; a1: StringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3215:16
  ProcTextureViewAddRef* = proc (a0: TextureView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3220:16
  ProcTextureViewRelease* = proc (a0: TextureView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3225:16
  NativeSType* = enum_WGPUNativeSType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:18:3
  NativeFeature* = enum_WGPUNativeFeature ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:59:3
  LogLevel* = enum_WGPULogLevel ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:69:3
  InstanceBackend* = Flags   ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:71:19
  InstanceFlag* = Flags      ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:85:19
  Dx12Compiler* = enum_WGPUDx12Compiler ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:97:3
  Gles3MinorVersion* = enum_WGPUGles3MinorVersion ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:105:3
  PipelineStatisticName* = enum_WGPUPipelineStatisticName ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:114:3
  NativeQueryType* = enum_WGPUNativeQueryType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:119:3
  struct_WGPUInstanceExtras* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:121:16
    backends*: InstanceBackend
    flags*: InstanceFlag
    dx12ShaderCompiler*: Dx12Compiler
    gles3MinorVersion*: Gles3MinorVersion
    dxilPath*: StringView
    dxcPath*: StringView
  InstanceExtras* = struct_WGPUInstanceExtras ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:129:3
  struct_WGPUDeviceExtras* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:131:16
    tracePath*: StringView
  DeviceExtras* = struct_WGPUDeviceExtras ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:134:3
  struct_WGPUNativeLimits* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:136:16
    maxPushConstantSize*: uint32
    maxNonSamplerBindings*: uint32
  NativeLimits* = struct_WGPUNativeLimits ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:141:3
  struct_WGPUPushConstantRange* {.pure, inheritable, bycopy.} = object
    stages*: ShaderStage     ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:143:16
    start*: uint32
    end_field*: uint32
  PushConstantRange* = struct_WGPUPushConstantRange ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:147:3
  struct_WGPUPipelineLayoutExtras* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:149:16
    pushConstantRangeCount*: csize_t
    pushConstantRanges*: ptr PushConstantRange
  PipelineLayoutExtras* = struct_WGPUPipelineLayoutExtras ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:153:3
  SubmissionIndex* = uint64  ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:155:18
  struct_WGPUShaderDefine* {.pure, inheritable, bycopy.} = object
    name*: StringView        ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:157:16
    value*: StringView
  ShaderDefine* = struct_WGPUShaderDefine ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:160:3
  struct_WGPUShaderModuleGLSLDescriptor* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:162:16
    stage*: ShaderStage
    code*: StringView
    defineCount*: uint32
    defines*: ptr ShaderDefine
  ShaderModuleGLSLDescriptor* = struct_WGPUShaderModuleGLSLDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:168:3
  struct_WGPUShaderModuleDescriptorSpirV* {.pure, inheritable, bycopy.} = object
    label*: StringView       ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:170:16
    sourceSize*: uint32
    source*: ptr uint32
  ShaderModuleDescriptorSpirV* = struct_WGPUShaderModuleDescriptorSpirV ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:174:3
  struct_WGPURegistryReport* {.pure, inheritable, bycopy.} = object
    numAllocated*: csize_t   ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:176:16
    numKeptFromUser*: csize_t
    numReleasedFromUser*: csize_t
    elementSize*: csize_t
  RegistryReport* = struct_WGPURegistryReport ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:181:3
  struct_WGPUHubReport* {.pure, inheritable, bycopy.} = object
    adapters*: RegistryReport ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:183:16
    devices*: RegistryReport
    queues*: RegistryReport
    pipelineLayouts*: RegistryReport
    shaderModules*: RegistryReport
    bindGroupLayouts*: RegistryReport
    bindGroups*: RegistryReport
    commandBuffers*: RegistryReport
    renderBundles*: RegistryReport
    renderPipelines*: RegistryReport
    computePipelines*: RegistryReport
    pipelineCaches*: RegistryReport
    querySets*: RegistryReport
    buffers*: RegistryReport
    textures*: RegistryReport
    textureViews*: RegistryReport
    samplers*: RegistryReport
  HubReport* = struct_WGPUHubReport ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:201:3
  struct_WGPUGlobalReport* {.pure, inheritable, bycopy.} = object
    surfaces*: RegistryReport ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:203:16
    hub*: HubReport
  GlobalReport* = struct_WGPUGlobalReport ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:206:3
  struct_WGPUInstanceEnumerateAdapterOptions* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr ChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:208:16
    backends*: InstanceBackend
  InstanceEnumerateAdapterOptions* = struct_WGPUInstanceEnumerateAdapterOptions ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:211:3
  struct_WGPUBindGroupEntryExtras* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:213:16
    buffers*: ptr Buffer
    bufferCount*: csize_t
    samplers*: ptr Sampler
    samplerCount*: csize_t
    textureViews*: ptr TextureView
    textureViewCount*: csize_t
  BindGroupEntryExtras* = struct_WGPUBindGroupEntryExtras ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:221:3
  struct_WGPUBindGroupLayoutEntryExtras* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:223:16
    count*: uint32
  BindGroupLayoutEntryExtras* = struct_WGPUBindGroupLayoutEntryExtras ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:226:3
  struct_WGPUQuerySetDescriptorExtras* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:228:16
    pipelineStatistics*: ptr PipelineStatisticName
    pipelineStatisticCount*: csize_t
  QuerySetDescriptorExtras* = struct_WGPUQuerySetDescriptorExtras ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:232:3
  struct_WGPUSurfaceConfigurationExtras* {.pure, inheritable, bycopy.} = object
    chain*: ChainedStruct    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:234:16
    desiredMaximumFrameLatency*: uint32
  SurfaceConfigurationExtras* = struct_WGPUSurfaceConfigurationExtras ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:237:3
  LogCallback* = proc (a0: LogLevel; a1: StringView; a2: pointer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:239:16
  NativeTextureFormat* = enum_WGPUNativeTextureFormat ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:251:3
when cast[cuint](4294967295'i64) is static:
  const
    UINT32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:118:10
else:
  let UINT32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:118:10
when UINT32_MAX is typedesc:
  type
    internal_COPY_STRIDE_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:79:9
else:
  when UINT32_MAX is static:
    const
      internal_COPY_STRIDE_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:79:9
  else:
    let internal_COPY_STRIDE_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:79:9
when UINT32_MAX is typedesc:
  type
    internal_DEPTH_SLICE_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:80:9
else:
  when UINT32_MAX is static:
    const
      internal_DEPTH_SLICE_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:80:9
  else:
    let internal_DEPTH_SLICE_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:80:9
when UINT32_MAX is typedesc:
  type
    internal_LIMIT_U32_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:81:9
else:
  when UINT32_MAX is static:
    const
      internal_LIMIT_U32_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:81:9
  else:
    let internal_LIMIT_U32_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:81:9
when UINT64_MAX is typedesc:
  type
    internal_LIMIT_U64_UNDEFINED* = UINT64_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:82:9
else:
  when UINT64_MAX is static:
    const
      internal_LIMIT_U64_UNDEFINED* = UINT64_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:82:9
  else:
    let internal_LIMIT_U64_UNDEFINED* = UINT64_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:82:9
when UINT32_MAX is typedesc:
  type
    internal_MIP_LEVEL_COUNT_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:83:9
else:
  when UINT32_MAX is static:
    const
      internal_MIP_LEVEL_COUNT_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:83:9
  else:
    let internal_MIP_LEVEL_COUNT_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:83:9
when UINT32_MAX is typedesc:
  type
    internal_QUERY_SET_INDEX_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:84:9
else:
  when UINT32_MAX is static:
    const
      internal_QUERY_SET_INDEX_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:84:9
  else:
    let internal_QUERY_SET_INDEX_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:84:9
when cast[culong](18446744073709551615'u) is static:
  const
    SIZE_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:216:11
else:
  let SIZE_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:216:11
when UINT64_MAX is typedesc:
  type
    internal_WHOLE_SIZE* = UINT64_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:86:9
else:
  when UINT64_MAX is static:
    const
      internal_WHOLE_SIZE* = UINT64_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:86:9
  else:
    let internal_WHOLE_SIZE* = UINT64_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:86:9
when SIZE_MAX is typedesc:
  type
    internal_STRLEN* = SIZE_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:129:9
else:
  when SIZE_MAX is static:
    const
      internal_STRLEN* = SIZE_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:129:9
  else:
    let internal_STRLEN* = SIZE_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:129:9
var BufferUsage_None*: BufferUsage
var BufferUsage_MapRead*: BufferUsage
var BufferUsage_MapWrite*: BufferUsage
var BufferUsage_CopySrc*: BufferUsage
var BufferUsage_CopyDst*: BufferUsage
var BufferUsage_Index*: BufferUsage
var BufferUsage_Vertex*: BufferUsage
var BufferUsage_Uniform*: BufferUsage
var BufferUsage_Storage*: BufferUsage
var BufferUsage_Indirect*: BufferUsage
var BufferUsage_QueryResolve*: BufferUsage
var ColorWriteMask_None*: ColorWriteMask
var ColorWriteMask_Red*: ColorWriteMask
var ColorWriteMask_Green*: ColorWriteMask
var ColorWriteMask_Blue*: ColorWriteMask
var ColorWriteMask_Alpha*: ColorWriteMask
var ColorWriteMask_All*: ColorWriteMask
var MapMode_None*: MapMode
var MapMode_Read*: MapMode
var MapMode_Write*: MapMode
var ShaderStage_None*: ShaderStage
var ShaderStage_Vertex*: ShaderStage
var ShaderStage_Fragment*: ShaderStage
var ShaderStage_Compute*: ShaderStage
var TextureUsage_None*: TextureUsage
var TextureUsage_CopySrc*: TextureUsage
var TextureUsage_CopyDst*: TextureUsage
var TextureUsage_TextureBinding*: TextureUsage
var TextureUsage_StorageBinding*: TextureUsage
var TextureUsage_RenderAttachment*: TextureUsage
proc create*(descriptor: ptr InstanceDescriptor): Instance {.cdecl,
    importc: "wgpuCreateInstance".}
proc wgpuGetInstanceCapabilities*(capabilities: ptr InstanceCapabilities): Status {.
    cdecl, importc: "wgpuGetInstanceCapabilities".}
proc getProcAddress*(procName: StringView): Proc {.cdecl,
    importc: "wgpuGetProcAddress".}
proc get*(adapter: Adapter; features: ptr SupportedFeatures): void {.cdecl,
    importc: "wgpuAdapterGetFeatures".}
proc wgpuAdapterGetInfo*(adapter: Adapter; info: ptr AdapterInfo): Status {.
    cdecl, importc: "wgpuAdapterGetInfo".}
proc get*(adapter: Adapter; limits: ptr Limits): Status {.cdecl,
    importc: "wgpuAdapterGetLimits".}
proc has*(adapter: Adapter; feature: FeatureName): Bool {.cdecl,
    importc: "wgpuAdapterHasFeature".}
proc request*(adapter: Adapter; descriptor: ptr DeviceDescriptor;
              callbackInfo: RequestDeviceCallbackInfo): Future {.cdecl,
    importc: "wgpuAdapterRequestDevice".}
proc wgpuAdapterAddRef*(adapter: Adapter): void {.cdecl,
    importc: "wgpuAdapterAddRef".}
proc release*(adapter: Adapter): void {.cdecl, importc: "wgpuAdapterRelease".}
proc wgpuAdapterInfoFreeMembers*(adapterInfo: AdapterInfo): void {.cdecl,
    importc: "wgpuAdapterInfoFreeMembers".}
proc setLabel*(bindGroup: BindGroup; label: StringView): void {.cdecl,
    importc: "wgpuBindGroupSetLabel".}
proc wgpuBindGroupAddRef*(bindGroup: BindGroup): void {.cdecl,
    importc: "wgpuBindGroupAddRef".}
proc release*(bindGroup: BindGroup): void {.cdecl,
    importc: "wgpuBindGroupRelease".}
proc layoutSetLabel*(bindGroupLayout: BindGroupLayout; label: StringView): void {.
    cdecl, importc: "wgpuBindGroupLayoutSetLabel".}
proc wgpuBindGroupLayoutAddRef*(bindGroupLayout: BindGroupLayout): void {.cdecl,
    importc: "wgpuBindGroupLayoutAddRef".}
proc release*(bindGroupLayout: BindGroupLayout): void {.cdecl,
    importc: "wgpuBindGroupLayoutRelease".}
proc destroy*(buffer: Buffer): void {.cdecl, importc: "wgpuBufferDestroy".}
proc getConstMappedRange*(buffer: Buffer; offset: csize_t; size: csize_t): pointer {.
    cdecl, importc: "wgpuBufferGetConstMappedRange".}
proc wgpuBufferGetMapState*(buffer: Buffer): BufferMapState {.cdecl,
    importc: "wgpuBufferGetMapState".}
proc getMappedRange*(buffer: Buffer; offset: csize_t; size: csize_t): pointer {.
    cdecl, importc: "wgpuBufferGetMappedRange".}
proc getSize*(buffer: Buffer): uint64 {.cdecl, importc: "wgpuBufferGetSize".}
proc getUsage*(buffer: Buffer): BufferUsage {.cdecl,
    importc: "wgpuBufferGetUsage".}
proc mapAsync*(buffer: Buffer; mode: MapMode; offset: csize_t; size: csize_t;
               callbackInfo: BufferMapCallbackInfo): Future {.cdecl,
    importc: "wgpuBufferMapAsync".}
proc setLabel*(buffer: Buffer; label: StringView): void {.cdecl,
    importc: "wgpuBufferSetLabel".}
proc unmap*(buffer: Buffer): void {.cdecl, importc: "wgpuBufferUnmap".}
proc wgpuBufferAddRef*(buffer: Buffer): void {.cdecl,
    importc: "wgpuBufferAddRef".}
proc release*(buffer: Buffer): void {.cdecl, importc: "wgpuBufferRelease".}
proc setLabel*(commandBuffer: CommandBuffer; label: StringView): void {.cdecl,
    importc: "wgpuCommandBufferSetLabel".}
proc wgpuCommandBufferAddRef*(commandBuffer: CommandBuffer): void {.cdecl,
    importc: "wgpuCommandBufferAddRef".}
proc release*(commandBuffer: CommandBuffer): void {.cdecl,
    importc: "wgpuCommandBufferRelease".}
proc begin*(commandEncoder: CommandEncoder;
            descriptor: ptr ComputePassDescriptor): ComputePassEncoder {.cdecl,
    importc: "wgpuCommandEncoderBeginComputePass".}
proc begin*(commandEncoder: CommandEncoder; descriptor: ptr RenderPassDescriptor): RenderPassEncoder {.
    cdecl, importc: "wgpuCommandEncoderBeginRenderPass".}
proc clear*(commandEncoder: CommandEncoder; buffer: Buffer; offset: uint64;
            size: uint64): void {.cdecl,
                                  importc: "wgpuCommandEncoderClearBuffer".}
proc copy*(commandEncoder: CommandEncoder; source: Buffer; sourceOffset: uint64;
           destination: Buffer; destinationOffset: uint64; size: uint64): void {.
    cdecl, importc: "wgpuCommandEncoderCopyBufferToBuffer".}
proc copy*(commandEncoder: CommandEncoder; source: ptr TexelCopyBufferInfo;
           destination: ptr TexelCopyTextureInfo; copySize: ptr Extent3D): void {.
    cdecl, importc: "wgpuCommandEncoderCopyBufferToTexture".}
proc copy*(commandEncoder: CommandEncoder; source: ptr TexelCopyTextureInfo;
           destination: ptr TexelCopyBufferInfo; copySize: ptr Extent3D): void {.
    cdecl, importc: "wgpuCommandEncoderCopyTextureToBuffer".}
proc copy*(commandEncoder: CommandEncoder; source: ptr TexelCopyTextureInfo;
           destination: ptr TexelCopyTextureInfo; copySize: ptr Extent3D): void {.
    cdecl, importc: "wgpuCommandEncoderCopyTextureToTexture".}
proc finish*(commandEncoder: CommandEncoder;
             descriptor: ptr CommandBufferDescriptor): CommandBuffer {.cdecl,
    importc: "wgpuCommandEncoderFinish".}
proc insertDebugMarker*(commandEncoder: CommandEncoder; markerLabel: StringView): void {.
    cdecl, importc: "wgpuCommandEncoderInsertDebugMarker".}
proc popDebugGroup*(commandEncoder: CommandEncoder): void {.cdecl,
    importc: "wgpuCommandEncoderPopDebugGroup".}
proc pushDebugGroup*(commandEncoder: CommandEncoder; groupLabel: StringView): void {.
    cdecl, importc: "wgpuCommandEncoderPushDebugGroup".}
proc resolve*(commandEncoder: CommandEncoder; querySet: QuerySet;
              firstQuery: uint32; queryCount: uint32; destination: Buffer;
              destinationOffset: uint64): void {.cdecl,
    importc: "wgpuCommandEncoderResolveQuerySet".}
proc setLabel*(commandEncoder: CommandEncoder; label: StringView): void {.cdecl,
    importc: "wgpuCommandEncoderSetLabel".}
proc writeTimestamp*(commandEncoder: CommandEncoder; querySet: QuerySet;
                     queryIndex: uint32): void {.cdecl,
    importc: "wgpuCommandEncoderWriteTimestamp".}
proc wgpuCommandEncoderAddRef*(commandEncoder: CommandEncoder): void {.cdecl,
    importc: "wgpuCommandEncoderAddRef".}
proc release*(commandEncoder: CommandEncoder): void {.cdecl,
    importc: "wgpuCommandEncoderRelease".}
proc dispatchWorkgroups*(computePassEncoder: ComputePassEncoder;
                         workgroupCountX: uint32; workgroupCountY: uint32;
                         workgroupCountZ: uint32): void {.cdecl,
    importc: "wgpuComputePassEncoderDispatchWorkgroups".}
proc dispatchWorkgroupsIndirect*(computePassEncoder: ComputePassEncoder;
                                 indirectBuffer: Buffer; indirectOffset: uint64): void {.
    cdecl, importc: "wgpuComputePassEncoderDispatchWorkgroupsIndirect".}
proc End*(computePassEncoder: ComputePassEncoder): void {.cdecl,
    importc: "wgpuComputePassEncoderEnd".}
proc insertDebugMarker*(computePassEncoder: ComputePassEncoder;
                        markerLabel: StringView): void {.cdecl,
    importc: "wgpuComputePassEncoderInsertDebugMarker".}
proc popDebugGroup*(computePassEncoder: ComputePassEncoder): void {.cdecl,
    importc: "wgpuComputePassEncoderPopDebugGroup".}
proc pushDebugGroup*(computePassEncoder: ComputePassEncoder;
                     groupLabel: StringView): void {.cdecl,
    importc: "wgpuComputePassEncoderPushDebugGroup".}
proc set*(computePassEncoder: ComputePassEncoder; groupIndex: uint32;
          group: BindGroup; dynamicOffsetCount: csize_t;
          dynamicOffsets: ptr uint32): void {.cdecl,
    importc: "wgpuComputePassEncoderSetBindGroup".}
proc setLabel*(computePassEncoder: ComputePassEncoder; label: StringView): void {.
    cdecl, importc: "wgpuComputePassEncoderSetLabel".}
proc set*(computePassEncoder: ComputePassEncoder; pipeline: ComputePipeline): void {.
    cdecl, importc: "wgpuComputePassEncoderSetPipeline".}
proc wgpuComputePassEncoderAddRef*(computePassEncoder: ComputePassEncoder): void {.
    cdecl, importc: "wgpuComputePassEncoderAddRef".}
proc release*(computePassEncoder: ComputePassEncoder): void {.cdecl,
    importc: "wgpuComputePassEncoderRelease".}
proc getBindGroupLayout*(computePipeline: ComputePipeline; groupIndex: uint32): BindGroupLayout {.
    cdecl, importc: "wgpuComputePipelineGetBindGroupLayout".}
proc setLabel*(computePipeline: ComputePipeline; label: StringView): void {.
    cdecl, importc: "wgpuComputePipelineSetLabel".}
proc wgpuComputePipelineAddRef*(computePipeline: ComputePipeline): void {.cdecl,
    importc: "wgpuComputePipelineAddRef".}
proc release*(computePipeline: ComputePipeline): void {.cdecl,
    importc: "wgpuComputePipelineRelease".}
proc create*(device: Device; descriptor: ptr BindGroupDescriptor): BindGroup {.
    cdecl, importc: "wgpuDeviceCreateBindGroup".}
proc createLayout*(device: Device; descriptor: ptr BindGroupLayoutDescriptor): BindGroupLayout {.
    cdecl, importc: "wgpuDeviceCreateBindGroupLayout".}
proc create*(device: Device; descriptor: ptr BufferDescriptor): Buffer {.cdecl,
    importc: "wgpuDeviceCreateBuffer".}
proc create*(device: Device; descriptor: ptr CommandEncoderDescriptor): CommandEncoder {.
    cdecl, importc: "wgpuDeviceCreateCommandEncoder".}
proc create*(device: Device; descriptor: ptr ComputePipelineDescriptor): ComputePipeline {.
    cdecl, importc: "wgpuDeviceCreateComputePipeline".}
proc createAsync*(device: Device; descriptor: ptr ComputePipelineDescriptor;
                  callbackInfo: CreateComputePipelineAsyncCallbackInfo): Future {.
    cdecl, importc: "wgpuDeviceCreateComputePipelineAsync".}
proc create*(device: Device; descriptor: ptr PipelineLayoutDescriptor): PipelineLayout {.
    cdecl, importc: "wgpuDeviceCreatePipelineLayout".}
proc create*(device: Device; descriptor: ptr QuerySetDescriptor): QuerySet {.
    cdecl, importc: "wgpuDeviceCreateQuerySet".}
proc create*(device: Device; descriptor: ptr RenderBundleEncoderDescriptor): RenderBundleEncoder {.
    cdecl, importc: "wgpuDeviceCreateRenderBundleEncoder".}
proc create*(device: Device; descriptor: ptr RenderPipelineDescriptor): RenderPipeline {.
    cdecl, importc: "wgpuDeviceCreateRenderPipeline".}
proc createAsync*(device: Device; descriptor: ptr RenderPipelineDescriptor;
                  callbackInfo: CreateRenderPipelineAsyncCallbackInfo): Future {.
    cdecl, importc: "wgpuDeviceCreateRenderPipelineAsync".}
proc create*(device: Device; descriptor: ptr SamplerDescriptor): Sampler {.
    cdecl, importc: "wgpuDeviceCreateSampler".}
proc create*(device: Device; descriptor: ptr ShaderModuleDescriptor): ShaderModule {.
    cdecl, importc: "wgpuDeviceCreateShaderModule".}
proc create*(device: Device; descriptor: ptr TextureDescriptor): Texture {.
    cdecl, importc: "wgpuDeviceCreateTexture".}
proc destroy*(device: Device): void {.cdecl, importc: "wgpuDeviceDestroy".}
proc wgpuDeviceGetAdapterInfo*(device: Device): AdapterInfo {.cdecl,
    importc: "wgpuDeviceGetAdapterInfo".}
proc wgpuDeviceGetFeatures*(device: Device; features: ptr SupportedFeatures): void {.
    cdecl, importc: "wgpuDeviceGetFeatures".}
proc get*(device: Device; limits: ptr Limits): Status {.cdecl,
    importc: "wgpuDeviceGetLimits".}
proc wgpuDeviceGetLostFuture*(device: Device): Future {.cdecl,
    importc: "wgpuDeviceGetLostFuture".}
proc getQueue*(device: Device): Queue {.cdecl, importc: "wgpuDeviceGetQueue".}
proc has*(device: Device; feature: FeatureName): Bool {.cdecl,
    importc: "wgpuDeviceHasFeature".}
proc popErrorScope*(device: Device; callbackInfo: PopErrorScopeCallbackInfo): Future {.
    cdecl, importc: "wgpuDevicePopErrorScope".}
proc pushErrorScope*(device: Device; filter: ErrorFilter): void {.cdecl,
    importc: "wgpuDevicePushErrorScope".}
proc setLabel*(device: Device; label: StringView): void {.cdecl,
    importc: "wgpuDeviceSetLabel".}
proc wgpuDeviceAddRef*(device: Device): void {.cdecl,
    importc: "wgpuDeviceAddRef".}
proc release*(device: Device): void {.cdecl, importc: "wgpuDeviceRelease".}
proc create*(instance: Instance; descriptor: ptr SurfaceDescriptor): Surface {.
    cdecl, importc: "wgpuInstanceCreateSurface".}
proc wgpuInstanceGetWGSLLanguageFeatures*(instance: Instance;
    features: ptr SupportedWGSLLanguageFeatures): Status {.cdecl,
    importc: "wgpuInstanceGetWGSLLanguageFeatures".}
proc wgpuInstanceHasWGSLLanguageFeature*(instance: Instance;
    feature: WGSLLanguageFeatureName): Bool {.cdecl,
    importc: "wgpuInstanceHasWGSLLanguageFeature".}
proc processEvents*(instance: Instance): void {.cdecl,
    importc: "wgpuInstanceProcessEvents".}
proc request*(instance: Instance; options: ptr RequestAdapterOptions;
              callbackInfo: RequestAdapterCallbackInfo): Future {.cdecl,
    importc: "wgpuInstanceRequestAdapter".}
proc wgpuInstanceWaitAny*(instance: Instance; futureCount: csize_t;
                          futures: ptr FutureWaitInfo; timeoutNS: uint64): WaitStatus {.
    cdecl, importc: "wgpuInstanceWaitAny".}
proc wgpuInstanceAddRef*(instance: Instance): void {.cdecl,
    importc: "wgpuInstanceAddRef".}
proc release*(instance: Instance): void {.cdecl, importc: "wgpuInstanceRelease".}
proc setLabel*(pipelineLayout: PipelineLayout; label: StringView): void {.cdecl,
    importc: "wgpuPipelineLayoutSetLabel".}
proc wgpuPipelineLayoutAddRef*(pipelineLayout: PipelineLayout): void {.cdecl,
    importc: "wgpuPipelineLayoutAddRef".}
proc release*(pipelineLayout: PipelineLayout): void {.cdecl,
    importc: "wgpuPipelineLayoutRelease".}
proc destroy*(querySet: QuerySet): void {.cdecl, importc: "wgpuQuerySetDestroy".}
proc getCount*(querySet: QuerySet): uint32 {.cdecl,
    importc: "wgpuQuerySetGetCount".}
proc getType*(querySet: QuerySet): QueryType {.cdecl,
    importc: "wgpuQuerySetGetType".}
proc setLabel*(querySet: QuerySet; label: StringView): void {.cdecl,
    importc: "wgpuQuerySetSetLabel".}
proc wgpuQuerySetAddRef*(querySet: QuerySet): void {.cdecl,
    importc: "wgpuQuerySetAddRef".}
proc release*(querySet: QuerySet): void {.cdecl, importc: "wgpuQuerySetRelease".}
proc onSubmittedWorkDone*(queue: Queue; callbackInfo: QueueWorkDoneCallbackInfo): Future {.
    cdecl, importc: "wgpuQueueOnSubmittedWorkDone".}
proc setLabel*(queue: Queue; label: StringView): void {.cdecl,
    importc: "wgpuQueueSetLabel".}
proc submit*(queue: Queue; commandCount: csize_t; commands: ptr CommandBuffer): void {.
    cdecl, importc: "wgpuQueueSubmit".}
proc write*(queue: Queue; buffer: Buffer; bufferOffset: uint64; data: pointer;
            size: csize_t): void {.cdecl, importc: "wgpuQueueWriteBuffer".}
proc write*(queue: Queue; destination: ptr TexelCopyTextureInfo; data: pointer;
            dataSize: csize_t; dataLayout: ptr TexelCopyBufferLayout;
            writeSize: ptr Extent3D): void {.cdecl,
    importc: "wgpuQueueWriteTexture".}
proc wgpuQueueAddRef*(queue: Queue): void {.cdecl, importc: "wgpuQueueAddRef".}
proc release*(queue: Queue): void {.cdecl, importc: "wgpuQueueRelease".}
proc setLabel*(renderBundle: RenderBundle; label: StringView): void {.cdecl,
    importc: "wgpuRenderBundleSetLabel".}
proc wgpuRenderBundleAddRef*(renderBundle: RenderBundle): void {.cdecl,
    importc: "wgpuRenderBundleAddRef".}
proc release*(renderBundle: RenderBundle): void {.cdecl,
    importc: "wgpuRenderBundleRelease".}
proc draw*(renderBundleEncoder: RenderBundleEncoder; vertexCount: uint32;
           instanceCount: uint32; firstVertex: uint32; firstInstance: uint32): void {.
    cdecl, importc: "wgpuRenderBundleEncoderDraw".}
proc drawIndexed*(renderBundleEncoder: RenderBundleEncoder; indexCount: uint32;
                  instanceCount: uint32; firstIndex: uint32; baseVertex: int32;
                  firstInstance: uint32): void {.cdecl,
    importc: "wgpuRenderBundleEncoderDrawIndexed".}
proc drawIndexedIndirect*(renderBundleEncoder: RenderBundleEncoder;
                          indirectBuffer: Buffer; indirectOffset: uint64): void {.
    cdecl, importc: "wgpuRenderBundleEncoderDrawIndexedIndirect".}
proc drawIndirect*(renderBundleEncoder: RenderBundleEncoder;
                   indirectBuffer: Buffer; indirectOffset: uint64): void {.
    cdecl, importc: "wgpuRenderBundleEncoderDrawIndirect".}
proc finish*(renderBundleEncoder: RenderBundleEncoder;
             descriptor: ptr RenderBundleDescriptor): RenderBundle {.cdecl,
    importc: "wgpuRenderBundleEncoderFinish".}
proc insertDebugMarker*(renderBundleEncoder: RenderBundleEncoder;
                        markerLabel: StringView): void {.cdecl,
    importc: "wgpuRenderBundleEncoderInsertDebugMarker".}
proc popDebugGroup*(renderBundleEncoder: RenderBundleEncoder): void {.cdecl,
    importc: "wgpuRenderBundleEncoderPopDebugGroup".}
proc pushDebugGroup*(renderBundleEncoder: RenderBundleEncoder;
                     groupLabel: StringView): void {.cdecl,
    importc: "wgpuRenderBundleEncoderPushDebugGroup".}
proc set*(renderBundleEncoder: RenderBundleEncoder; groupIndex: uint32;
          group: BindGroup; dynamicOffsetCount: csize_t;
          dynamicOffsets: ptr uint32): void {.cdecl,
    importc: "wgpuRenderBundleEncoderSetBindGroup".}
proc setIndexBuffer*(renderBundleEncoder: RenderBundleEncoder; buffer: Buffer;
                     format: IndexFormat; offset: uint64; size: uint64): void {.
    cdecl, importc: "wgpuRenderBundleEncoderSetIndexBuffer".}
proc setLabel*(renderBundleEncoder: RenderBundleEncoder; label: StringView): void {.
    cdecl, importc: "wgpuRenderBundleEncoderSetLabel".}
proc set*(renderBundleEncoder: RenderBundleEncoder; pipeline: RenderPipeline): void {.
    cdecl, importc: "wgpuRenderBundleEncoderSetPipeline".}
proc setVertexBuffer*(renderBundleEncoder: RenderBundleEncoder; slot: uint32;
                      buffer: Buffer; offset: uint64; size: uint64): void {.
    cdecl, importc: "wgpuRenderBundleEncoderSetVertexBuffer".}
proc wgpuRenderBundleEncoderAddRef*(renderBundleEncoder: RenderBundleEncoder): void {.
    cdecl, importc: "wgpuRenderBundleEncoderAddRef".}
proc release*(renderBundleEncoder: RenderBundleEncoder): void {.cdecl,
    importc: "wgpuRenderBundleEncoderRelease".}
proc beginOcclusionQuery*(renderPassEncoder: RenderPassEncoder;
                          queryIndex: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderBeginOcclusionQuery".}
proc draw*(renderPassEncoder: RenderPassEncoder; vertexCount: uint32;
           instanceCount: uint32; firstVertex: uint32; firstInstance: uint32): void {.
    cdecl, importc: "wgpuRenderPassEncoderDraw".}
proc drawIndexed*(renderPassEncoder: RenderPassEncoder; indexCount: uint32;
                  instanceCount: uint32; firstIndex: uint32; baseVertex: int32;
                  firstInstance: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderDrawIndexed".}
proc drawIndexedIndirect*(renderPassEncoder: RenderPassEncoder;
                          indirectBuffer: Buffer; indirectOffset: uint64): void {.
    cdecl, importc: "wgpuRenderPassEncoderDrawIndexedIndirect".}
proc drawIndirect*(renderPassEncoder: RenderPassEncoder; indirectBuffer: Buffer;
                   indirectOffset: uint64): void {.cdecl,
    importc: "wgpuRenderPassEncoderDrawIndirect".}
proc End*(renderPassEncoder: RenderPassEncoder): void {.cdecl,
    importc: "wgpuRenderPassEncoderEnd".}
proc EndOcclusionQuery*(renderPassEncoder: RenderPassEncoder): void {.cdecl,
    importc: "wgpuRenderPassEncoderEndOcclusionQuery".}
proc execute*(renderPassEncoder: RenderPassEncoder; bundleCount: csize_t;
              bundles: ptr RenderBundle): void {.cdecl,
    importc: "wgpuRenderPassEncoderExecuteBundles".}
proc insertDebugMarker*(renderPassEncoder: RenderPassEncoder;
                        markerLabel: StringView): void {.cdecl,
    importc: "wgpuRenderPassEncoderInsertDebugMarker".}
proc popDebugGroup*(renderPassEncoder: RenderPassEncoder): void {.cdecl,
    importc: "wgpuRenderPassEncoderPopDebugGroup".}
proc pushDebugGroup*(renderPassEncoder: RenderPassEncoder;
                     groupLabel: StringView): void {.cdecl,
    importc: "wgpuRenderPassEncoderPushDebugGroup".}
proc set*(renderPassEncoder: RenderPassEncoder; groupIndex: uint32;
          group: BindGroup; dynamicOffsetCount: csize_t;
          dynamicOffsets: ptr uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetBindGroup".}
proc setBlendConstant*(renderPassEncoder: RenderPassEncoder; color: ptr Color): void {.
    cdecl, importc: "wgpuRenderPassEncoderSetBlendConstant".}
proc setIndexBuffer*(renderPassEncoder: RenderPassEncoder; buffer: Buffer;
                     format: IndexFormat; offset: uint64; size: uint64): void {.
    cdecl, importc: "wgpuRenderPassEncoderSetIndexBuffer".}
proc setLabel*(renderPassEncoder: RenderPassEncoder; label: StringView): void {.
    cdecl, importc: "wgpuRenderPassEncoderSetLabel".}
proc set*(renderPassEncoder: RenderPassEncoder; pipeline: RenderPipeline): void {.
    cdecl, importc: "wgpuRenderPassEncoderSetPipeline".}
proc setScissorRect*(renderPassEncoder: RenderPassEncoder; x: uint32; y: uint32;
                     width: uint32; height: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetScissorRect".}
proc setStencilReference*(renderPassEncoder: RenderPassEncoder;
                          reference: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetStencilReference".}
proc setVertexBuffer*(renderPassEncoder: RenderPassEncoder; slot: uint32;
                      buffer: Buffer; offset: uint64; size: uint64): void {.
    cdecl, importc: "wgpuRenderPassEncoderSetVertexBuffer".}
proc setViewport*(renderPassEncoder: RenderPassEncoder; x: cfloat; y: cfloat;
                  width: cfloat; height: cfloat; minDepth: cfloat;
                  maxDepth: cfloat): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetViewport".}
proc wgpuRenderPassEncoderAddRef*(renderPassEncoder: RenderPassEncoder): void {.
    cdecl, importc: "wgpuRenderPassEncoderAddRef".}
proc release*(renderPassEncoder: RenderPassEncoder): void {.cdecl,
    importc: "wgpuRenderPassEncoderRelease".}
proc getBindGroupLayout*(renderPipeline: RenderPipeline; groupIndex: uint32): BindGroupLayout {.
    cdecl, importc: "wgpuRenderPipelineGetBindGroupLayout".}
proc setLabel*(renderPipeline: RenderPipeline; label: StringView): void {.cdecl,
    importc: "wgpuRenderPipelineSetLabel".}
proc wgpuRenderPipelineAddRef*(renderPipeline: RenderPipeline): void {.cdecl,
    importc: "wgpuRenderPipelineAddRef".}
proc release*(renderPipeline: RenderPipeline): void {.cdecl,
    importc: "wgpuRenderPipelineRelease".}
proc setLabel*(sampler: Sampler; label: StringView): void {.cdecl,
    importc: "wgpuSamplerSetLabel".}
proc wgpuSamplerAddRef*(sampler: Sampler): void {.cdecl,
    importc: "wgpuSamplerAddRef".}
proc release*(sampler: Sampler): void {.cdecl, importc: "wgpuSamplerRelease".}
proc getCompilationInfo*(shaderModule: ShaderModule;
                         callbackInfo: CompilationInfoCallbackInfo): Future {.
    cdecl, importc: "wgpuShaderModuleGetCompilationInfo".}
proc setLabel*(shaderModule: ShaderModule; label: StringView): void {.cdecl,
    importc: "wgpuShaderModuleSetLabel".}
proc wgpuShaderModuleAddRef*(shaderModule: ShaderModule): void {.cdecl,
    importc: "wgpuShaderModuleAddRef".}
proc release*(shaderModule: ShaderModule): void {.cdecl,
    importc: "wgpuShaderModuleRelease".}
proc freeMembers*(supportedFeatures: SupportedFeatures): void {.cdecl,
    importc: "wgpuSupportedFeaturesFreeMembers".}
proc wgpuSupportedWGSLLanguageFeaturesFreeMembers*(
    supportedWGSLLanguageFeatures: SupportedWGSLLanguageFeatures): void {.cdecl,
    importc: "wgpuSupportedWGSLLanguageFeaturesFreeMembers".}
proc configure*(surface: Surface; config: ptr SurfaceConfiguration): void {.
    cdecl, importc: "wgpuSurfaceConfigure".}
proc get*(surface: Surface; adapter: Adapter;
          capabilities: ptr SurfaceCapabilities): Status {.cdecl,
    importc: "wgpuSurfaceGetCapabilities".}
proc getCurrentTexture*(surface: Surface; surfaceTexture: ptr SurfaceTexture): void {.
    cdecl, importc: "wgpuSurfaceGetCurrentTexture".}
proc present*(surface: Surface): Status {.cdecl, importc: "wgpuSurfacePresent".}
proc wgpuSurfaceSetLabel*(surface: Surface; label: StringView): void {.cdecl,
    importc: "wgpuSurfaceSetLabel".}
proc unconfigure*(surface: Surface): void {.cdecl,
    importc: "wgpuSurfaceUnconfigure".}
proc wgpuSurfaceAddRef*(surface: Surface): void {.cdecl,
    importc: "wgpuSurfaceAddRef".}
proc release*(surface: Surface): void {.cdecl, importc: "wgpuSurfaceRelease".}
proc freeMembers*(surfaceCapabilities: SurfaceCapabilities): void {.cdecl,
    importc: "wgpuSurfaceCapabilitiesFreeMembers".}
proc create*(texture: Texture; descriptor: ptr TextureViewDescriptor): TextureView {.
    cdecl, importc: "wgpuTextureCreateView".}
proc destroy*(texture: Texture): void {.cdecl, importc: "wgpuTextureDestroy".}
proc getDepthOrArrayLayers*(texture: Texture): uint32 {.cdecl,
    importc: "wgpuTextureGetDepthOrArrayLayers".}
proc getDimension*(texture: Texture): TextureDimension {.cdecl,
    importc: "wgpuTextureGetDimension".}
proc getFormat*(texture: Texture): TextureFormat {.cdecl,
    importc: "wgpuTextureGetFormat".}
proc getHeight*(texture: Texture): uint32 {.cdecl,
    importc: "wgpuTextureGetHeight".}
proc getMipLevelCount*(texture: Texture): uint32 {.cdecl,
    importc: "wgpuTextureGetMipLevelCount".}
proc getSampleCount*(texture: Texture): uint32 {.cdecl,
    importc: "wgpuTextureGetSampleCount".}
proc getUsage*(texture: Texture): TextureUsage {.cdecl,
    importc: "wgpuTextureGetUsage".}
proc getWidth*(texture: Texture): uint32 {.cdecl, importc: "wgpuTextureGetWidth".}
proc setLabel*(texture: Texture; label: StringView): void {.cdecl,
    importc: "wgpuTextureSetLabel".}
proc wgpuTextureAddRef*(texture: Texture): void {.cdecl,
    importc: "wgpuTextureAddRef".}
proc release*(texture: Texture): void {.cdecl, importc: "wgpuTextureRelease".}
proc setLabel*(textureView: TextureView; label: StringView): void {.cdecl,
    importc: "wgpuTextureViewSetLabel".}
proc wgpuTextureViewAddRef*(textureView: TextureView): void {.cdecl,
    importc: "wgpuTextureViewAddRef".}
proc release*(textureView: TextureView): void {.cdecl,
    importc: "wgpuTextureViewRelease".}
var InstanceBackend_All*: InstanceBackend
var InstanceBackend_Vulkan*: InstanceBackend
var InstanceBackend_GL*: InstanceBackend
var InstanceBackend_Metal*: InstanceBackend
var InstanceBackend_DX12*: InstanceBackend
var InstanceBackend_DX11*: InstanceBackend
var InstanceBackend_BrowserWebGPU*: InstanceBackend
var InstanceBackend_Primary*: InstanceBackend
var InstanceBackend_Secondary*: InstanceBackend
var InstanceBackend_Force32*: InstanceBackend
var InstanceFlag_Default*: InstanceFlag
var InstanceFlag_Debug*: InstanceFlag
var InstanceFlag_Validation*: InstanceFlag
var InstanceFlag_DiscardHalLabels*: InstanceFlag
var InstanceFlag_Force32*: InstanceFlag
proc generate*(instance: Instance; report: ptr GlobalReport): void {.cdecl,
    importc: "wgpuGenerateReport".}
proc enumerate*(instance: Instance;
                options: ptr InstanceEnumerateAdapterOptions;
                adapters: ptr Adapter): csize_t {.cdecl,
    importc: "wgpuInstanceEnumerateAdapters".}
proc submitForIndex*(queue: Queue; commandCount: csize_t;
                     commands: ptr CommandBuffer): SubmissionIndex {.cdecl,
    importc: "wgpuQueueSubmitForIndex".}
proc poll*(device: Device; wait: Bool;
           wrappedSubmissionIndex: ptr SubmissionIndex): Bool {.cdecl,
    importc: "wgpuDevicePoll".}
proc createSpirV*(device: Device; descriptor: ptr ShaderModuleDescriptorSpirV): ShaderModule {.
    cdecl, importc: "wgpuDeviceCreateShaderModuleSpirV".}
proc set*(callback: LogCallback; userdata: pointer): void {.cdecl,
    importc: "wgpuSetLogCallback".}
proc set*(level: LogLevel): void {.cdecl, importc: "wgpuSetLogLevel".}
proc getVersion*(): uint32 {.cdecl, importc: "wgpuGetVersion".}
proc setPushConstants*(encoder: RenderPassEncoder; stages: ShaderStage;
                       offset: uint32; sizeBytes: uint32; data: pointer): void {.
    cdecl, importc: "wgpuRenderPassEncoderSetPushConstants".}
proc wgpuComputePassEncoderSetPushConstants*(encoder: ComputePassEncoder;
    offset: uint32; sizeBytes: uint32; data: pointer): void {.cdecl,
    importc: "wgpuComputePassEncoderSetPushConstants".}
proc wgpuRenderBundleEncoderSetPushConstants*(encoder: RenderBundleEncoder;
    stages: ShaderStage; offset: uint32; sizeBytes: uint32; data: pointer): void {.
    cdecl, importc: "wgpuRenderBundleEncoderSetPushConstants".}
proc multiDrawIndirect*(encoder: RenderPassEncoder; buffer: Buffer;
                        offset: uint64; count: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderMultiDrawIndirect".}
proc multiDrawIndexedIndirect*(encoder: RenderPassEncoder; buffer: Buffer;
                               offset: uint64; count: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderMultiDrawIndexedIndirect".}
proc multiDrawIndirectCount*(encoder: RenderPassEncoder; buffer: Buffer;
                             offset: uint64; count_buffer: Buffer;
                             count_buffer_offset: uint64; max_count: uint32): void {.
    cdecl, importc: "wgpuRenderPassEncoderMultiDrawIndirectCount".}
proc multiDrawIndexedIndirectCount*(encoder: RenderPassEncoder; buffer: Buffer;
                                    offset: uint64; count_buffer: Buffer;
                                    count_buffer_offset: uint64;
                                    max_count: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderMultiDrawIndexedIndirectCount".}
proc beginPipelineStatisticsQuery*(computePassEncoder: ComputePassEncoder;
                                   querySet: QuerySet; queryIndex: uint32): void {.
    cdecl, importc: "wgpuComputePassEncoderBeginPipelineStatisticsQuery".}
proc EndPipelineStatisticsQuery*(computePassEncoder: ComputePassEncoder): void {.
    cdecl, importc: "wgpuComputePassEncoderEndPipelineStatisticsQuery".}
proc beginPipelineStatisticsQuery*(renderPassEncoder: RenderPassEncoder;
                                   querySet: QuerySet; queryIndex: uint32): void {.
    cdecl, importc: "wgpuRenderPassEncoderBeginPipelineStatisticsQuery".}
proc EndPipelineStatisticsQuery*(renderPassEncoder: RenderPassEncoder): void {.
    cdecl, importc: "wgpuRenderPassEncoderEndPipelineStatisticsQuery".}
proc wgpuComputePassEncoderWriteTimestamp*(
    computePassEncoder: ComputePassEncoder; querySet: QuerySet;
    queryIndex: uint32): void {.cdecl,
                                importc: "wgpuComputePassEncoderWriteTimestamp".}
proc wgpuRenderPassEncoderWriteTimestamp*(renderPassEncoder: RenderPassEncoder;
    querySet: QuerySet; queryIndex: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderWriteTimestamp".}