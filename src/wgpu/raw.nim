
type
  enum_WGPUAdapterType* {.size: sizeof(cuint).} = enum
    WGPUAdapterType_DiscreteGPU = 1, WGPUAdapterType_IntegratedGPU = 2,
    WGPUAdapterType_CPU = 3, WGPUAdapterType_Unknown = 4,
    WGPUAdapterType_Force32 = 2147483647
type
  enum_WGPUAddressMode* {.size: sizeof(cuint).} = enum
    WGPUAddressMode_Undefined = 0, WGPUAddressMode_ClampToEdge = 1,
    WGPUAddressMode_Repeat = 2, WGPUAddressMode_MirrorRepeat = 3,
    WGPUAddressMode_Force32 = 2147483647
type
  enum_WGPUBackendType* {.size: sizeof(cuint).} = enum
    WGPUBackendType_Undefined = 0, WGPUBackendType_Null = 1,
    WGPUBackendType_WebGPU = 2, WGPUBackendType_D3D11 = 3,
    WGPUBackendType_D3D12 = 4, WGPUBackendType_Metal = 5,
    WGPUBackendType_Vulkan = 6, WGPUBackendType_OpenGL = 7,
    WGPUBackendType_OpenGLES = 8, WGPUBackendType_Force32 = 2147483647
type
  enum_WGPUBlendFactor* {.size: sizeof(cuint).} = enum
    WGPUBlendFactor_Undefined = 0, WGPUBlendFactor_Zero = 1,
    WGPUBlendFactor_One = 2, WGPUBlendFactor_Src = 3,
    WGPUBlendFactor_OneMinusSrc = 4, WGPUBlendFactor_SrcAlpha = 5,
    WGPUBlendFactor_OneMinusSrcAlpha = 6, WGPUBlendFactor_Dst = 7,
    WGPUBlendFactor_OneMinusDst = 8, WGPUBlendFactor_DstAlpha = 9,
    WGPUBlendFactor_OneMinusDstAlpha = 10,
    WGPUBlendFactor_SrcAlphaSaturated = 11, WGPUBlendFactor_Constant = 12,
    WGPUBlendFactor_OneMinusConstant = 13, WGPUBlendFactor_Src1 = 14,
    WGPUBlendFactor_OneMinusSrc1 = 15, WGPUBlendFactor_Src1Alpha = 16,
    WGPUBlendFactor_OneMinusSrc1Alpha = 17, WGPUBlendFactor_Force32 = 2147483647
type
  enum_WGPUBlendOperation* {.size: sizeof(cuint).} = enum
    WGPUBlendOperation_Undefined = 0, WGPUBlendOperation_Add = 1,
    WGPUBlendOperation_Subtract = 2, WGPUBlendOperation_ReverseSubtract = 3,
    WGPUBlendOperation_Min = 4, WGPUBlendOperation_Max = 5,
    WGPUBlendOperation_Force32 = 2147483647
type
  enum_WGPUBufferBindingType* {.size: sizeof(cuint).} = enum
    WGPUBufferBindingType_BindingNotUsed = 0,
    WGPUBufferBindingType_Undefined = 1, WGPUBufferBindingType_Uniform = 2,
    WGPUBufferBindingType_Storage = 3,
    WGPUBufferBindingType_ReadOnlyStorage = 4,
    WGPUBufferBindingType_Force32 = 2147483647
type
  enum_WGPUBufferMapState* {.size: sizeof(cuint).} = enum
    WGPUBufferMapState_Unmapped = 1, WGPUBufferMapState_Pending = 2,
    WGPUBufferMapState_Mapped = 3, WGPUBufferMapState_Force32 = 2147483647
type
  enum_WGPUCallbackMode* {.size: sizeof(cuint).} = enum
    WGPUCallbackMode_WaitAnyOnly = 1, WGPUCallbackMode_AllowProcessEvents = 2,
    WGPUCallbackMode_AllowSpontaneous = 3, WGPUCallbackMode_Force32 = 2147483647
type
  enum_WGPUCompareFunction* {.size: sizeof(cuint).} = enum
    WGPUCompareFunction_Undefined = 0, WGPUCompareFunction_Never = 1,
    WGPUCompareFunction_Less = 2, WGPUCompareFunction_Equal = 3,
    WGPUCompareFunction_LessEqual = 4, WGPUCompareFunction_Greater = 5,
    WGPUCompareFunction_NotEqual = 6, WGPUCompareFunction_GreaterEqual = 7,
    WGPUCompareFunction_Always = 8, WGPUCompareFunction_Force32 = 2147483647
type
  enum_WGPUCompilationInfoRequestStatus* {.size: sizeof(cuint).} = enum
    WGPUCompilationInfoRequestStatus_Success = 1,
    WGPUCompilationInfoRequestStatus_InstanceDropped = 2,
    WGPUCompilationInfoRequestStatus_Error = 3,
    WGPUCompilationInfoRequestStatus_Unknown = 4,
    WGPUCompilationInfoRequestStatus_Force32 = 2147483647
type
  enum_WGPUCompilationMessageType* {.size: sizeof(cuint).} = enum
    WGPUCompilationMessageType_Error = 1,
    WGPUCompilationMessageType_Warning = 2, WGPUCompilationMessageType_Info = 3,
    WGPUCompilationMessageType_Force32 = 2147483647
type
  enum_WGPUCompositeAlphaMode* {.size: sizeof(cuint).} = enum
    WGPUCompositeAlphaMode_Auto = 0, WGPUCompositeAlphaMode_Opaque = 1,
    WGPUCompositeAlphaMode_Premultiplied = 2,
    WGPUCompositeAlphaMode_Unpremultiplied = 3,
    WGPUCompositeAlphaMode_Inherit = 4,
    WGPUCompositeAlphaMode_Force32 = 2147483647
type
  enum_WGPUCreatePipelineAsyncStatus* {.size: sizeof(cuint).} = enum
    WGPUCreatePipelineAsyncStatus_Success = 1,
    WGPUCreatePipelineAsyncStatus_InstanceDropped = 2,
    WGPUCreatePipelineAsyncStatus_ValidationError = 3,
    WGPUCreatePipelineAsyncStatus_InternalError = 4,
    WGPUCreatePipelineAsyncStatus_Unknown = 5,
    WGPUCreatePipelineAsyncStatus_Force32 = 2147483647
type
  enum_WGPUCullMode* {.size: sizeof(cuint).} = enum
    WGPUCullMode_Undefined = 0, WGPUCullMode_None = 1, WGPUCullMode_Front = 2,
    WGPUCullMode_Back = 3, WGPUCullMode_Force32 = 2147483647
type
  enum_WGPUDeviceLostReason* {.size: sizeof(cuint).} = enum
    WGPUDeviceLostReason_Unknown = 1, WGPUDeviceLostReason_Destroyed = 2,
    WGPUDeviceLostReason_InstanceDropped = 3,
    WGPUDeviceLostReason_FailedCreation = 4,
    WGPUDeviceLostReason_Force32 = 2147483647
type
  enum_WGPUErrorFilter* {.size: sizeof(cuint).} = enum
    WGPUErrorFilter_Validation = 1, WGPUErrorFilter_OutOfMemory = 2,
    WGPUErrorFilter_Internal = 3, WGPUErrorFilter_Force32 = 2147483647
type
  enum_WGPUErrorType* {.size: sizeof(cuint).} = enum
    WGPUErrorType_NoError = 1, WGPUErrorType_Validation = 2,
    WGPUErrorType_OutOfMemory = 3, WGPUErrorType_Internal = 4,
    WGPUErrorType_Unknown = 5, WGPUErrorType_Force32 = 2147483647
type
  enum_WGPUFeatureLevel* {.size: sizeof(cuint).} = enum
    WGPUFeatureLevel_Compatibility = 1, WGPUFeatureLevel_Core = 2,
    WGPUFeatureLevel_Force32 = 2147483647
type
  enum_WGPUFeatureName* {.size: sizeof(cuint).} = enum
    WGPUFeatureName_Undefined = 0, WGPUFeatureName_DepthClipControl = 1,
    WGPUFeatureName_Depth32FloatStencil8 = 2,
    WGPUFeatureName_TimestampQuery = 3,
    WGPUFeatureName_TextureCompressionBC = 4,
    WGPUFeatureName_TextureCompressionBCSliced3D = 5,
    WGPUFeatureName_TextureCompressionETC2 = 6,
    WGPUFeatureName_TextureCompressionASTC = 7,
    WGPUFeatureName_TextureCompressionASTCSliced3D = 8,
    WGPUFeatureName_IndirectFirstInstance = 9, WGPUFeatureName_ShaderF16 = 10,
    WGPUFeatureName_RG11B10UfloatRenderable = 11,
    WGPUFeatureName_BGRA8UnormStorage = 12,
    WGPUFeatureName_Float32Filterable = 13,
    WGPUFeatureName_Float32Blendable = 14, WGPUFeatureName_ClipDistances = 15,
    WGPUFeatureName_DualSourceBlending = 16,
    WGPUFeatureName_Force32 = 2147483647
type
  enum_WGPUFilterMode* {.size: sizeof(cuint).} = enum
    WGPUFilterMode_Undefined = 0, WGPUFilterMode_Nearest = 1,
    WGPUFilterMode_Linear = 2, WGPUFilterMode_Force32 = 2147483647
type
  enum_WGPUFrontFace* {.size: sizeof(cuint).} = enum
    WGPUFrontFace_Undefined = 0, WGPUFrontFace_CCW = 1, WGPUFrontFace_CW = 2,
    WGPUFrontFace_Force32 = 2147483647
type
  enum_WGPUIndexFormat* {.size: sizeof(cuint).} = enum
    WGPUIndexFormat_Undefined = 0, WGPUIndexFormat_Uint16 = 1,
    WGPUIndexFormat_Uint32 = 2, WGPUIndexFormat_Force32 = 2147483647
type
  enum_WGPULoadOp* {.size: sizeof(cuint).} = enum
    WGPULoadOp_Undefined = 0, WGPULoadOp_Load = 1, WGPULoadOp_Clear = 2,
    WGPULoadOp_Force32 = 2147483647
type
  enum_WGPUMapAsyncStatus* {.size: sizeof(cuint).} = enum
    WGPUMapAsyncStatus_Success = 1, WGPUMapAsyncStatus_InstanceDropped = 2,
    WGPUMapAsyncStatus_Error = 3, WGPUMapAsyncStatus_Aborted = 4,
    WGPUMapAsyncStatus_Unknown = 5, WGPUMapAsyncStatus_Force32 = 2147483647
type
  enum_WGPUMipmapFilterMode* {.size: sizeof(cuint).} = enum
    WGPUMipmapFilterMode_Undefined = 0, WGPUMipmapFilterMode_Nearest = 1,
    WGPUMipmapFilterMode_Linear = 2, WGPUMipmapFilterMode_Force32 = 2147483647
type
  enum_WGPUOptionalBool* {.size: sizeof(cuint).} = enum
    WGPUOptionalBool_False = 0, WGPUOptionalBool_True = 1,
    WGPUOptionalBool_Undefined = 2, WGPUOptionalBool_Force32 = 2147483647
type
  enum_WGPUPopErrorScopeStatus* {.size: sizeof(cuint).} = enum
    WGPUPopErrorScopeStatus_Success = 1,
    WGPUPopErrorScopeStatus_InstanceDropped = 2,
    WGPUPopErrorScopeStatus_EmptyStack = 3,
    WGPUPopErrorScopeStatus_Force32 = 2147483647
type
  enum_WGPUPowerPreference* {.size: sizeof(cuint).} = enum
    WGPUPowerPreference_Undefined = 0, WGPUPowerPreference_LowPower = 1,
    WGPUPowerPreference_HighPerformance = 2,
    WGPUPowerPreference_Force32 = 2147483647
type
  enum_WGPUPresentMode* {.size: sizeof(cuint).} = enum
    WGPUPresentMode_Undefined = 0, WGPUPresentMode_Fifo = 1,
    WGPUPresentMode_FifoRelaxed = 2, WGPUPresentMode_Immediate = 3,
    WGPUPresentMode_Mailbox = 4, WGPUPresentMode_Force32 = 2147483647
type
  enum_WGPUPrimitiveTopology* {.size: sizeof(cuint).} = enum
    WGPUPrimitiveTopology_Undefined = 0, WGPUPrimitiveTopology_PointList = 1,
    WGPUPrimitiveTopology_LineList = 2, WGPUPrimitiveTopology_LineStrip = 3,
    WGPUPrimitiveTopology_TriangleList = 4,
    WGPUPrimitiveTopology_TriangleStrip = 5,
    WGPUPrimitiveTopology_Force32 = 2147483647
type
  enum_WGPUQueryType* {.size: sizeof(cuint).} = enum
    WGPUQueryType_Occlusion = 1, WGPUQueryType_Timestamp = 2,
    WGPUQueryType_Force32 = 2147483647
type
  enum_WGPUQueueWorkDoneStatus* {.size: sizeof(cuint).} = enum
    WGPUQueueWorkDoneStatus_Success = 1,
    WGPUQueueWorkDoneStatus_InstanceDropped = 2,
    WGPUQueueWorkDoneStatus_Error = 3, WGPUQueueWorkDoneStatus_Unknown = 4,
    WGPUQueueWorkDoneStatus_Force32 = 2147483647
type
  enum_WGPURequestAdapterStatus* {.size: sizeof(cuint).} = enum
    WGPURequestAdapterStatus_Success = 1,
    WGPURequestAdapterStatus_InstanceDropped = 2,
    WGPURequestAdapterStatus_Unavailable = 3,
    WGPURequestAdapterStatus_Error = 4, WGPURequestAdapterStatus_Unknown = 5,
    WGPURequestAdapterStatus_Force32 = 2147483647
type
  enum_WGPURequestDeviceStatus* {.size: sizeof(cuint).} = enum
    WGPURequestDeviceStatus_Success = 1,
    WGPURequestDeviceStatus_InstanceDropped = 2,
    WGPURequestDeviceStatus_Error = 3, WGPURequestDeviceStatus_Unknown = 4,
    WGPURequestDeviceStatus_Force32 = 2147483647
type
  enum_WGPUSType* {.size: sizeof(cuint).} = enum
    WGPUSType_ShaderSourceSPIRV = 1, WGPUSType_ShaderSourceWGSL = 2,
    WGPUSType_RenderPassMaxDrawCount = 3, WGPUSType_SurfaceSourceMetalLayer = 4,
    WGPUSType_SurfaceSourceWindowsHWND = 5,
    WGPUSType_SurfaceSourceXlibWindow = 6,
    WGPUSType_SurfaceSourceWaylandSurface = 7,
    WGPUSType_SurfaceSourceAndroidNativeWindow = 8,
    WGPUSType_SurfaceSourceXCBWindow = 9, WGPUSType_Force32 = 2147483647
type
  enum_WGPUSamplerBindingType* {.size: sizeof(cuint).} = enum
    WGPUSamplerBindingType_BindingNotUsed = 0,
    WGPUSamplerBindingType_Undefined = 1, WGPUSamplerBindingType_Filtering = 2,
    WGPUSamplerBindingType_NonFiltering = 3,
    WGPUSamplerBindingType_Comparison = 4,
    WGPUSamplerBindingType_Force32 = 2147483647
type
  enum_WGPUStatus* {.size: sizeof(cuint).} = enum
    WGPUStatus_Success = 1, WGPUStatus_Error = 2,
    WGPUStatus_Force32 = 2147483647
type
  enum_WGPUStencilOperation* {.size: sizeof(cuint).} = enum
    WGPUStencilOperation_Undefined = 0, WGPUStencilOperation_Keep = 1,
    WGPUStencilOperation_Zero = 2, WGPUStencilOperation_Replace = 3,
    WGPUStencilOperation_Invert = 4, WGPUStencilOperation_IncrementClamp = 5,
    WGPUStencilOperation_DecrementClamp = 6,
    WGPUStencilOperation_IncrementWrap = 7,
    WGPUStencilOperation_DecrementWrap = 8,
    WGPUStencilOperation_Force32 = 2147483647
type
  enum_WGPUStorageTextureAccess* {.size: sizeof(cuint).} = enum
    WGPUStorageTextureAccess_BindingNotUsed = 0,
    WGPUStorageTextureAccess_Undefined = 1,
    WGPUStorageTextureAccess_WriteOnly = 2,
    WGPUStorageTextureAccess_ReadOnly = 3,
    WGPUStorageTextureAccess_ReadWrite = 4,
    WGPUStorageTextureAccess_Force32 = 2147483647
type
  enum_WGPUStoreOp* {.size: sizeof(cuint).} = enum
    WGPUStoreOp_Undefined = 0, WGPUStoreOp_Store = 1, WGPUStoreOp_Discard = 2,
    WGPUStoreOp_Force32 = 2147483647
type
  enum_WGPUSurfaceGetCurrentTextureStatus* {.size: sizeof(cuint).} = enum
    WGPUSurfaceGetCurrentTextureStatus_SuccessOptimal = 1,
    WGPUSurfaceGetCurrentTextureStatus_SuccessSuboptimal = 2,
    WGPUSurfaceGetCurrentTextureStatus_Timeout = 3,
    WGPUSurfaceGetCurrentTextureStatus_Outdated = 4,
    WGPUSurfaceGetCurrentTextureStatus_Lost = 5,
    WGPUSurfaceGetCurrentTextureStatus_OutOfMemory = 6,
    WGPUSurfaceGetCurrentTextureStatus_DeviceLost = 7,
    WGPUSurfaceGetCurrentTextureStatus_Error = 8,
    WGPUSurfaceGetCurrentTextureStatus_Force32 = 2147483647
type
  enum_WGPUTextureAspect* {.size: sizeof(cuint).} = enum
    WGPUTextureAspect_Undefined = 0, WGPUTextureAspect_All = 1,
    WGPUTextureAspect_StencilOnly = 2, WGPUTextureAspect_DepthOnly = 3,
    WGPUTextureAspect_Force32 = 2147483647
type
  enum_WGPUTextureDimension* {.size: sizeof(cuint).} = enum
    WGPUTextureDimension_Undefined = 0, WGPUTextureDimension_1D = 1,
    WGPUTextureDimension_2D = 2, WGPUTextureDimension_3D = 3,
    WGPUTextureDimension_Force32 = 2147483647
type
  enum_WGPUTextureFormat* {.size: sizeof(cuint).} = enum
    WGPUTextureFormat_Undefined = 0, WGPUTextureFormat_R8Unorm = 1,
    WGPUTextureFormat_R8Snorm = 2, WGPUTextureFormat_R8Uint = 3,
    WGPUTextureFormat_R8Sint = 4, WGPUTextureFormat_R16Uint = 5,
    WGPUTextureFormat_R16Sint = 6, WGPUTextureFormat_R16Float = 7,
    WGPUTextureFormat_RG8Unorm = 8, WGPUTextureFormat_RG8Snorm = 9,
    WGPUTextureFormat_RG8Uint = 10, WGPUTextureFormat_RG8Sint = 11,
    WGPUTextureFormat_R32Float = 12, WGPUTextureFormat_R32Uint = 13,
    WGPUTextureFormat_R32Sint = 14, WGPUTextureFormat_RG16Uint = 15,
    WGPUTextureFormat_RG16Sint = 16, WGPUTextureFormat_RG16Float = 17,
    WGPUTextureFormat_RGBA8Unorm = 18, WGPUTextureFormat_RGBA8UnormSrgb = 19,
    WGPUTextureFormat_RGBA8Snorm = 20, WGPUTextureFormat_RGBA8Uint = 21,
    WGPUTextureFormat_RGBA8Sint = 22, WGPUTextureFormat_BGRA8Unorm = 23,
    WGPUTextureFormat_BGRA8UnormSrgb = 24, WGPUTextureFormat_RGB10A2Uint = 25,
    WGPUTextureFormat_RGB10A2Unorm = 26, WGPUTextureFormat_RG11B10Ufloat = 27,
    WGPUTextureFormat_RGB9E5Ufloat = 28, WGPUTextureFormat_RG32Float = 29,
    WGPUTextureFormat_RG32Uint = 30, WGPUTextureFormat_RG32Sint = 31,
    WGPUTextureFormat_RGBA16Uint = 32, WGPUTextureFormat_RGBA16Sint = 33,
    WGPUTextureFormat_RGBA16Float = 34, WGPUTextureFormat_RGBA32Float = 35,
    WGPUTextureFormat_RGBA32Uint = 36, WGPUTextureFormat_RGBA32Sint = 37,
    WGPUTextureFormat_Stencil8 = 38, WGPUTextureFormat_Depth16Unorm = 39,
    WGPUTextureFormat_Depth24Plus = 40,
    WGPUTextureFormat_Depth24PlusStencil8 = 41,
    WGPUTextureFormat_Depth32Float = 42,
    WGPUTextureFormat_Depth32FloatStencil8 = 43,
    WGPUTextureFormat_BC1RGBAUnorm = 44,
    WGPUTextureFormat_BC1RGBAUnormSrgb = 45,
    WGPUTextureFormat_BC2RGBAUnorm = 46,
    WGPUTextureFormat_BC2RGBAUnormSrgb = 47,
    WGPUTextureFormat_BC3RGBAUnorm = 48,
    WGPUTextureFormat_BC3RGBAUnormSrgb = 49, WGPUTextureFormat_BC4RUnorm = 50,
    WGPUTextureFormat_BC4RSnorm = 51, WGPUTextureFormat_BC5RGUnorm = 52,
    WGPUTextureFormat_BC5RGSnorm = 53, WGPUTextureFormat_BC6HRGBUfloat = 54,
    WGPUTextureFormat_BC6HRGBFloat = 55, WGPUTextureFormat_BC7RGBAUnorm = 56,
    WGPUTextureFormat_BC7RGBAUnormSrgb = 57,
    WGPUTextureFormat_ETC2RGB8Unorm = 58,
    WGPUTextureFormat_ETC2RGB8UnormSrgb = 59,
    WGPUTextureFormat_ETC2RGB8A1Unorm = 60,
    WGPUTextureFormat_ETC2RGB8A1UnormSrgb = 61,
    WGPUTextureFormat_ETC2RGBA8Unorm = 62,
    WGPUTextureFormat_ETC2RGBA8UnormSrgb = 63,
    WGPUTextureFormat_EACR11Unorm = 64, WGPUTextureFormat_EACR11Snorm = 65,
    WGPUTextureFormat_EACRG11Unorm = 66, WGPUTextureFormat_EACRG11Snorm = 67,
    WGPUTextureFormat_ASTC4x4Unorm = 68,
    WGPUTextureFormat_ASTC4x4UnormSrgb = 69,
    WGPUTextureFormat_ASTC5x4Unorm = 70,
    WGPUTextureFormat_ASTC5x4UnormSrgb = 71,
    WGPUTextureFormat_ASTC5x5Unorm = 72,
    WGPUTextureFormat_ASTC5x5UnormSrgb = 73,
    WGPUTextureFormat_ASTC6x5Unorm = 74,
    WGPUTextureFormat_ASTC6x5UnormSrgb = 75,
    WGPUTextureFormat_ASTC6x6Unorm = 76,
    WGPUTextureFormat_ASTC6x6UnormSrgb = 77,
    WGPUTextureFormat_ASTC8x5Unorm = 78,
    WGPUTextureFormat_ASTC8x5UnormSrgb = 79,
    WGPUTextureFormat_ASTC8x6Unorm = 80,
    WGPUTextureFormat_ASTC8x6UnormSrgb = 81,
    WGPUTextureFormat_ASTC8x8Unorm = 82,
    WGPUTextureFormat_ASTC8x8UnormSrgb = 83,
    WGPUTextureFormat_ASTC10x5Unorm = 84,
    WGPUTextureFormat_ASTC10x5UnormSrgb = 85,
    WGPUTextureFormat_ASTC10x6Unorm = 86,
    WGPUTextureFormat_ASTC10x6UnormSrgb = 87,
    WGPUTextureFormat_ASTC10x8Unorm = 88,
    WGPUTextureFormat_ASTC10x8UnormSrgb = 89,
    WGPUTextureFormat_ASTC10x10Unorm = 90,
    WGPUTextureFormat_ASTC10x10UnormSrgb = 91,
    WGPUTextureFormat_ASTC12x10Unorm = 92,
    WGPUTextureFormat_ASTC12x10UnormSrgb = 93,
    WGPUTextureFormat_ASTC12x12Unorm = 94,
    WGPUTextureFormat_ASTC12x12UnormSrgb = 95,
    WGPUTextureFormat_Force32 = 2147483647
type
  enum_WGPUTextureSampleType* {.size: sizeof(cuint).} = enum
    WGPUTextureSampleType_BindingNotUsed = 0,
    WGPUTextureSampleType_Undefined = 1, WGPUTextureSampleType_Float = 2,
    WGPUTextureSampleType_UnfilterableFloat = 3,
    WGPUTextureSampleType_Depth = 4, WGPUTextureSampleType_Sint = 5,
    WGPUTextureSampleType_Uint = 6, WGPUTextureSampleType_Force32 = 2147483647
type
  enum_WGPUTextureViewDimension* {.size: sizeof(cuint).} = enum
    WGPUTextureViewDimension_Undefined = 0, WGPUTextureViewDimension_1D = 1,
    WGPUTextureViewDimension_2D = 2, WGPUTextureViewDimension_2DArray = 3,
    WGPUTextureViewDimension_Cube = 4, WGPUTextureViewDimension_CubeArray = 5,
    WGPUTextureViewDimension_3D = 6,
    WGPUTextureViewDimension_Force32 = 2147483647
type
  enum_WGPUVertexFormat* {.size: sizeof(cuint).} = enum
    WGPUVertexFormat_Uint8 = 1, WGPUVertexFormat_Uint8x2 = 2,
    WGPUVertexFormat_Uint8x4 = 3, WGPUVertexFormat_Sint8 = 4,
    WGPUVertexFormat_Sint8x2 = 5, WGPUVertexFormat_Sint8x4 = 6,
    WGPUVertexFormat_Unorm8 = 7, WGPUVertexFormat_Unorm8x2 = 8,
    WGPUVertexFormat_Unorm8x4 = 9, WGPUVertexFormat_Snorm8 = 10,
    WGPUVertexFormat_Snorm8x2 = 11, WGPUVertexFormat_Snorm8x4 = 12,
    WGPUVertexFormat_Uint16 = 13, WGPUVertexFormat_Uint16x2 = 14,
    WGPUVertexFormat_Uint16x4 = 15, WGPUVertexFormat_Sint16 = 16,
    WGPUVertexFormat_Sint16x2 = 17, WGPUVertexFormat_Sint16x4 = 18,
    WGPUVertexFormat_Unorm16 = 19, WGPUVertexFormat_Unorm16x2 = 20,
    WGPUVertexFormat_Unorm16x4 = 21, WGPUVertexFormat_Snorm16 = 22,
    WGPUVertexFormat_Snorm16x2 = 23, WGPUVertexFormat_Snorm16x4 = 24,
    WGPUVertexFormat_Float16 = 25, WGPUVertexFormat_Float16x2 = 26,
    WGPUVertexFormat_Float16x4 = 27, WGPUVertexFormat_Float32 = 28,
    WGPUVertexFormat_Float32x2 = 29, WGPUVertexFormat_Float32x3 = 30,
    WGPUVertexFormat_Float32x4 = 31, WGPUVertexFormat_Uint32 = 32,
    WGPUVertexFormat_Uint32x2 = 33, WGPUVertexFormat_Uint32x3 = 34,
    WGPUVertexFormat_Uint32x4 = 35, WGPUVertexFormat_Sint32 = 36,
    WGPUVertexFormat_Sint32x2 = 37, WGPUVertexFormat_Sint32x3 = 38,
    WGPUVertexFormat_Sint32x4 = 39, WGPUVertexFormat_Unorm10_10_10_2 = 40,
    WGPUVertexFormat_Unorm8x4BGRA = 41, WGPUVertexFormat_Force32 = 2147483647
type
  enum_WGPUVertexStepMode* {.size: sizeof(cuint).} = enum
    WGPUVertexStepMode_VertexBufferNotUsed = 0,
    WGPUVertexStepMode_Undefined = 1, WGPUVertexStepMode_Vertex = 2,
    WGPUVertexStepMode_Instance = 3, WGPUVertexStepMode_Force32 = 2147483647
type
  enum_WGPUWGSLLanguageFeatureName* {.size: sizeof(cuint).} = enum
    WGPUWGSLLanguageFeatureName_ReadonlyAndReadwriteStorageTextures = 1,
    WGPUWGSLLanguageFeatureName_Packed4x8IntegerDotProduct = 2,
    WGPUWGSLLanguageFeatureName_UnrestrictedPointerParameters = 3,
    WGPUWGSLLanguageFeatureName_PointerCompositeAccess = 4,
    WGPUWGSLLanguageFeatureName_Force32 = 2147483647
type
  enum_WGPUWaitStatus* {.size: sizeof(cuint).} = enum
    WGPUWaitStatus_Success = 1, WGPUWaitStatus_TimedOut = 2,
    WGPUWaitStatus_UnsupportedTimeout = 3, WGPUWaitStatus_UnsupportedCount = 4,
    WGPUWaitStatus_UnsupportedMixedSources = 5,
    WGPUWaitStatus_Force32 = 2147483647
type
  enum_WGPUNativeSType* {.size: sizeof(cuint).} = enum
    WGPUSType_DeviceExtras = 196609, WGPUSType_NativeLimits = 196610,
    WGPUSType_PipelineLayoutExtras = 196611,
    WGPUSType_ShaderModuleGLSLDescriptor = 196612,
    WGPUSType_InstanceExtras = 196614, WGPUSType_BindGroupEntryExtras = 196615,
    WGPUSType_BindGroupLayoutEntryExtras = 196616,
    WGPUSType_QuerySetDescriptorExtras = 196617,
    WGPUSType_SurfaceConfigurationExtras = 196618,
    WGPUNativeSType_Force32 = 2147483647
type
  enum_WGPUNativeFeature* {.size: sizeof(cuint).} = enum
    WGPUNativeFeature_PushConstants = 196609,
    WGPUNativeFeature_TextureAdapterSpecificFormatFeatures = 196610,
    WGPUNativeFeature_MultiDrawIndirect = 196611,
    WGPUNativeFeature_MultiDrawIndirectCount = 196612,
    WGPUNativeFeature_VertexWritableStorage = 196613,
    WGPUNativeFeature_TextureBindingArray = 196614, WGPUNativeFeature_SampledTextureAndStorageBufferArrayNonUniformIndexing = 196615,
    WGPUNativeFeature_PipelineStatisticsQuery = 196616,
    WGPUNativeFeature_StorageResourceBindingArray = 196617,
    WGPUNativeFeature_PartiallyBoundBindingArray = 196618,
    WGPUNativeFeature_TextureFormat16bitNorm = 196619,
    WGPUNativeFeature_TextureCompressionAstcHdr = 196620,
    WGPUNativeFeature_MappablePrimaryBuffers = 196622,
    WGPUNativeFeature_BufferBindingArray = 196623, WGPUNativeFeature_UniformBufferAndStorageTextureArrayNonUniformIndexing = 196624,
    WGPUNativeFeature_SpirvShaderPassthrough = 196631,
    WGPUNativeFeature_VertexAttribute64bit = 196633,
    WGPUNativeFeature_TextureFormatNv12 = 196634,
    WGPUNativeFeature_RayTracingAccelerationStructure = 196635,
    WGPUNativeFeature_RayQuery = 196636, WGPUNativeFeature_ShaderF64 = 196637,
    WGPUNativeFeature_ShaderI16 = 196638,
    WGPUNativeFeature_ShaderPrimitiveIndex = 196639,
    WGPUNativeFeature_ShaderEarlyDepthTest = 196640,
    WGPUNativeFeature_Subgroup = 196641,
    WGPUNativeFeature_SubgroupVertex = 196642,
    WGPUNativeFeature_SubgroupBarrier = 196643,
    WGPUNativeFeature_TimestampQueryInsideEncoders = 196644,
    WGPUNativeFeature_TimestampQueryInsidePasses = 196645,
    WGPUNativeFeature_Force32 = 2147483647
type
  enum_WGPULogLevel* {.size: sizeof(cuint).} = enum
    WGPULogLevel_Off = 0, WGPULogLevel_Error = 1, WGPULogLevel_Warn = 2,
    WGPULogLevel_Info = 3, WGPULogLevel_Debug = 4, WGPULogLevel_Trace = 5,
    WGPULogLevel_Force32 = 2147483647
type
  enum_WGPUDx12Compiler* {.size: sizeof(cuint).} = enum
    WGPUDx12Compiler_Undefined = 0, WGPUDx12Compiler_Fxc = 1,
    WGPUDx12Compiler_Dxc = 2, WGPUDx12Compiler_Force32 = 2147483647
type
  enum_WGPUGles3MinorVersion* {.size: sizeof(cuint).} = enum
    WGPUGles3MinorVersion_Automatic = 0, WGPUGles3MinorVersion_Version0 = 1,
    WGPUGles3MinorVersion_Version1 = 2, WGPUGles3MinorVersion_Version2 = 3,
    WGPUGles3MinorVersion_Force32 = 2147483647
type
  enum_WGPUPipelineStatisticName* {.size: sizeof(cuint).} = enum
    WGPUPipelineStatisticName_VertexShaderInvocations = 0,
    WGPUPipelineStatisticName_ClipperInvocations = 1,
    WGPUPipelineStatisticName_ClipperPrimitivesOut = 2,
    WGPUPipelineStatisticName_FragmentShaderInvocations = 3,
    WGPUPipelineStatisticName_ComputeShaderInvocations = 4,
    WGPUPipelineStatisticName_Force32 = 2147483647
type
  enum_WGPUNativeQueryType* {.size: sizeof(cuint).} = enum
    WGPUNativeQueryType_PipelineStatistics = 196608,
    WGPUNativeQueryType_Force32 = 2147483647
type
  enum_WGPUNativeTextureFormat* {.size: sizeof(cuint).} = enum
    WGPUNativeTextureFormat_R16Unorm = 196609,
    WGPUNativeTextureFormat_R16Snorm = 196610,
    WGPUNativeTextureFormat_Rg16Unorm = 196611,
    WGPUNativeTextureFormat_Rg16Snorm = 196612,
    WGPUNativeTextureFormat_Rgba16Unorm = 196613,
    WGPUNativeTextureFormat_Rgba16Snorm = 196614,
    WGPUNativeTextureFormat_NV12 = 196615
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
  WGPUFlags* = uint64        ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:96:18
  WGPUBool* = uint32         ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:97:18
  struct_WGPUStringView* {.pure, inheritable, bycopy.} = object
    data*: cstring           ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:120:16
    length*: csize_t
  WGPUStringView* = struct_WGPUStringView ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:123:3
  WGPUAdapter* = ptr struct_WGPUAdapterImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:145:33
  WGPUBindGroup* = ptr struct_WGPUBindGroupImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:146:35
  WGPUBindGroupLayout* = ptr struct_WGPUBindGroupLayoutImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:147:41
  WGPUBuffer* = ptr struct_WGPUBufferImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:148:32
  WGPUCommandBuffer* = ptr struct_WGPUCommandBufferImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:149:39
  WGPUCommandEncoder* = ptr struct_WGPUCommandEncoderImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:150:40
  WGPUComputePassEncoder* = ptr struct_WGPUComputePassEncoderImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:151:44
  WGPUComputePipeline* = ptr struct_WGPUComputePipelineImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:152:41
  WGPUDevice* = ptr struct_WGPUDeviceImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:153:32
  WGPUInstance* = ptr struct_WGPUInstanceImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:154:34
  WGPUPipelineLayout* = ptr struct_WGPUPipelineLayoutImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:155:40
  WGPUQuerySet* = ptr struct_WGPUQuerySetImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:156:34
  WGPUQueue* = ptr struct_WGPUQueueImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:157:31
  WGPURenderBundle* = ptr struct_WGPURenderBundleImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:158:38
  WGPURenderBundleEncoder* = ptr struct_WGPURenderBundleEncoderImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:159:45
  WGPURenderPassEncoder* = ptr struct_WGPURenderPassEncoderImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:160:43
  WGPURenderPipeline* = ptr struct_WGPURenderPipelineImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:161:40
  WGPUSampler* = ptr struct_WGPUSamplerImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:162:33
  WGPUShaderModule* = ptr struct_WGPUShaderModuleImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:163:38
  WGPUSurface* = ptr struct_WGPUSurfaceImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:167:33
  WGPUTexture* = ptr struct_WGPUTextureImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:168:33
  WGPUTextureView* = ptr struct_WGPUTextureViewImpl ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:169:37
  WGPUAdapterType* = enum_WGPUAdapterType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:272:3
  WGPUAddressMode* = enum_WGPUAddressMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:284:3
  WGPUBackendType* = enum_WGPUBackendType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:301:3
  WGPUBlendFactor* = enum_WGPUBlendFactor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:327:3
  WGPUBlendOperation* = enum_WGPUBlendOperation ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:341:3
  WGPUBufferBindingType* = enum_WGPUBufferBindingType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:360:3
  WGPUBufferMapState* = enum_WGPUBufferMapState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:367:3
  WGPUCallbackMode* = enum_WGPUCallbackMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:399:3
  WGPUCompareFunction* = enum_WGPUCompareFunction ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:416:3
  WGPUCompilationInfoRequestStatus* = enum_WGPUCompilationInfoRequestStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:424:3
  WGPUCompilationMessageType* = enum_WGPUCompilationMessageType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:431:3
  WGPUCompositeAlphaMode* = enum_WGPUCompositeAlphaMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:463:3
  WGPUCreatePipelineAsyncStatus* = enum_WGPUCreatePipelineAsyncStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:472:3
  WGPUCullMode* = enum_WGPUCullMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:484:3
  WGPUDeviceLostReason* = enum_WGPUDeviceLostReason ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:492:3
  WGPUErrorFilter* = enum_WGPUErrorFilter ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:499:3
  WGPUErrorType* = enum_WGPUErrorType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:508:3
  WGPUFeatureLevel* = enum_WGPUFeatureLevel ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:525:3
  WGPUFeatureName* = enum_WGPUFeatureName ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:546:3
  WGPUFilterMode* = enum_WGPUFilterMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:557:3
  WGPUFrontFace* = enum_WGPUFrontFace ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:568:3
  WGPUIndexFormat* = enum_WGPUIndexFormat ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:579:3
  WGPULoadOp* = enum_WGPULoadOp ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:590:3
  WGPUMapAsyncStatus* = enum_WGPUMapAsyncStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:599:3
  WGPUMipmapFilterMode* = enum_WGPUMipmapFilterMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:610:3
  WGPUOptionalBool* = enum_WGPUOptionalBool ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:617:3
  WGPUPopErrorScopeStatus* = enum_WGPUPopErrorScopeStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:632:3
  WGPUPowerPreference* = enum_WGPUPowerPreference ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:643:3
  WGPUPresentMode* = enum_WGPUPresentMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:681:3
  WGPUPrimitiveTopology* = enum_WGPUPrimitiveTopology ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:695:3
  WGPUQueryType* = enum_WGPUQueryType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:701:3
  WGPUQueueWorkDoneStatus* = enum_WGPUQueueWorkDoneStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:709:3
  WGPURequestAdapterStatus* = enum_WGPURequestAdapterStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:718:3
  WGPURequestDeviceStatus* = enum_WGPURequestDeviceStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:726:3
  WGPUSType* = enum_WGPUSType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:739:3
  WGPUSamplerBindingType* = enum_WGPUSamplerBindingType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:758:3
  WGPUStatus* = enum_WGPUStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:769:3
  WGPUStencilOperation* = enum_WGPUStencilOperation ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:786:3
  WGPUStorageTextureAccess* = enum_WGPUStorageTextureAccess ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:805:3
  WGPUStoreOp* = enum_WGPUStoreOp ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:816:3
  WGPUSurfaceGetCurrentTextureStatus* = enum_WGPUSurfaceGetCurrentTextureStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:863:3
  WGPUTextureAspect* = enum_WGPUTextureAspect ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:875:3
  WGPUTextureDimension* = enum_WGPUTextureDimension ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:887:3
  WGPUTextureFormat* = enum_WGPUTextureFormat ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:991:3
  WGPUTextureSampleType* = enum_WGPUTextureSampleType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1012:3
  WGPUTextureViewDimension* = enum_WGPUTextureViewDimension ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1027:3
  WGPUVertexFormat* = enum_WGPUVertexFormat ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1072:3
  WGPUVertexStepMode* = enum_WGPUVertexStepMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1089:3
  WGPUWGSLLanguageFeatureName* = enum_WGPUWGSLLanguageFeatureName ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1097:3
  WGPUWaitStatus* = enum_WGPUWaitStatus ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1129:3
  WGPUBufferUsage* = WGPUFlags ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1140:19
  WGPUColorWriteMask* = WGPUFlags ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1153:19
  WGPUMapMode* = WGPUFlags   ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1161:19
  WGPUShaderStage* = WGPUFlags ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1166:19
  WGPUTextureUsage* = WGPUFlags ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1172:19
  WGPUProc* = proc (): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1182:16
  WGPUBufferMapCallback* = proc (a0: WGPUMapAsyncStatus; a1: WGPUStringView;
                                 a2: pointer; a3: pointer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1195:16
  WGPUCompilationInfoCallback* = proc (a0: WGPUCompilationInfoRequestStatus;
                                       a1: ptr struct_WGPUCompilationInfo;
                                       a2: pointer; a3: pointer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1200:16
  struct_WGPUCompilationInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2005:16
    messageCount*: csize_t
    messages*: ptr WGPUCompilationMessage
  WGPUCreateComputePipelineAsyncCallback* = proc (
      a0: WGPUCreatePipelineAsyncStatus; a1: WGPUComputePipeline;
      a2: WGPUStringView; a3: pointer; a4: pointer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1205:16
  WGPUCreateRenderPipelineAsyncCallback* = proc (
      a0: WGPUCreatePipelineAsyncStatus; a1: WGPURenderPipeline;
      a2: WGPUStringView; a3: pointer; a4: pointer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1210:16
  WGPUDeviceLostCallback* = proc (a0: ptr WGPUDevice; a1: WGPUDeviceLostReason;
                                  a2: WGPUStringView; a3: pointer; a4: pointer): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1219:16
  WGPUPopErrorScopeCallback* = proc (a0: WGPUPopErrorScopeStatus;
                                     a1: WGPUErrorType; a2: WGPUStringView;
                                     a3: pointer; a4: pointer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1233:16
  WGPUQueueWorkDoneCallback* = proc (a0: WGPUQueueWorkDoneStatus; a1: pointer;
                                     a2: pointer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1234:16
  WGPURequestAdapterCallback* = proc (a0: WGPURequestAdapterStatus;
                                      a1: WGPUAdapter; a2: WGPUStringView;
                                      a3: pointer; a4: pointer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1242:16
  WGPURequestDeviceCallback* = proc (a0: WGPURequestDeviceStatus;
                                     a1: WGPUDevice; a2: WGPUStringView;
                                     a3: pointer; a4: pointer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1250:16
  WGPUUncapturedErrorCallback* = proc (a0: ptr WGPUDevice; a1: WGPUErrorType;
                                       a2: WGPUStringView; a3: pointer;
                                       a4: pointer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1258:16
  struct_WGPUChainedStruct* {.pure, inheritable, bycopy.} = object
    next*: ptr struct_WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1268:16
    sType*: WGPUSType
  WGPUChainedStruct* = struct_WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1271:3
  struct_WGPUChainedStructOut* {.pure, inheritable, bycopy.} = object
    next*: ptr struct_WGPUChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1273:16
    sType*: WGPUSType
  WGPUChainedStructOut* = struct_WGPUChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1276:3
  struct_WGPUBufferMapCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1294:16
    mode*: WGPUCallbackMode
    callback*: WGPUBufferMapCallback
    userdata1*: pointer
    userdata2*: pointer
  WGPUBufferMapCallbackInfo* = struct_WGPUBufferMapCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1300:3
  struct_WGPUCompilationInfoCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1302:16
    mode*: WGPUCallbackMode
    callback*: WGPUCompilationInfoCallback
    userdata1*: pointer
    userdata2*: pointer
  WGPUCompilationInfoCallbackInfo* = struct_WGPUCompilationInfoCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1308:3
  struct_WGPUCreateComputePipelineAsyncCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1310:16
    mode*: WGPUCallbackMode
    callback*: WGPUCreateComputePipelineAsyncCallback
    userdata1*: pointer
    userdata2*: pointer
  WGPUCreateComputePipelineAsyncCallbackInfo* = struct_WGPUCreateComputePipelineAsyncCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1316:3
  struct_WGPUCreateRenderPipelineAsyncCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1318:16
    mode*: WGPUCallbackMode
    callback*: WGPUCreateRenderPipelineAsyncCallback
    userdata1*: pointer
    userdata2*: pointer
  WGPUCreateRenderPipelineAsyncCallbackInfo* = struct_WGPUCreateRenderPipelineAsyncCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1324:3
  struct_WGPUDeviceLostCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1326:16
    mode*: WGPUCallbackMode
    callback*: WGPUDeviceLostCallback
    userdata1*: pointer
    userdata2*: pointer
  WGPUDeviceLostCallbackInfo* = struct_WGPUDeviceLostCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1332:3
  struct_WGPUPopErrorScopeCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1334:16
    mode*: WGPUCallbackMode
    callback*: WGPUPopErrorScopeCallback
    userdata1*: pointer
    userdata2*: pointer
  WGPUPopErrorScopeCallbackInfo* = struct_WGPUPopErrorScopeCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1340:3
  struct_WGPUQueueWorkDoneCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1342:16
    mode*: WGPUCallbackMode
    callback*: WGPUQueueWorkDoneCallback
    userdata1*: pointer
    userdata2*: pointer
  WGPUQueueWorkDoneCallbackInfo* = struct_WGPUQueueWorkDoneCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1348:3
  struct_WGPURequestAdapterCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1350:16
    mode*: WGPUCallbackMode
    callback*: WGPURequestAdapterCallback
    userdata1*: pointer
    userdata2*: pointer
  WGPURequestAdapterCallbackInfo* = struct_WGPURequestAdapterCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1356:3
  struct_WGPURequestDeviceCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1358:16
    mode*: WGPUCallbackMode
    callback*: WGPURequestDeviceCallback
    userdata1*: pointer
    userdata2*: pointer
  WGPURequestDeviceCallbackInfo* = struct_WGPURequestDeviceCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1364:3
  struct_WGPUUncapturedErrorCallbackInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1366:16
    callback*: WGPUUncapturedErrorCallback
    userdata1*: pointer
    userdata2*: pointer
  WGPUUncapturedErrorCallbackInfo* = struct_WGPUUncapturedErrorCallbackInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1371:3
  struct_WGPUAdapterInfo* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1375:16
    vendor*: WGPUStringView
    architecture*: WGPUStringView
    device*: WGPUStringView
    description*: WGPUStringView
    backendType*: WGPUBackendType
    adapterType*: WGPUAdapterType
    vendorID*: uint32
    deviceID*: uint32
  WGPUAdapterInfo* = struct_WGPUAdapterInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1397:3
  struct_WGPUBindGroupEntry* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1399:16
    binding*: uint32
    buffer*: WGPUBuffer
    offset*: uint64
    size*: uint64
    sampler*: WGPUSampler
    textureView*: WGPUTextureView
  WGPUBindGroupEntry* = struct_WGPUBindGroupEntry ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1407:3
  struct_WGPUBlendComponent* {.pure, inheritable, bycopy.} = object
    operation*: WGPUBlendOperation ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1409:16
    srcFactor*: WGPUBlendFactor
    dstFactor*: WGPUBlendFactor
  WGPUBlendComponent* = struct_WGPUBlendComponent ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1413:3
  struct_WGPUBufferBindingLayout* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1415:16
    type_field*: WGPUBufferBindingType
    hasDynamicOffset*: WGPUBool
    minBindingSize*: uint64
  WGPUBufferBindingLayout* = struct_WGPUBufferBindingLayout ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1420:3
  struct_WGPUBufferDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1422:16
    label*: WGPUStringView
    usage*: WGPUBufferUsage
    size*: uint64
    mappedAtCreation*: WGPUBool
  WGPUBufferDescriptor* = struct_WGPUBufferDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1431:3
  struct_WGPUColor* {.pure, inheritable, bycopy.} = object
    r*: cdouble              ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1433:16
    g*: cdouble
    b*: cdouble
    a*: cdouble
  WGPUColor* = struct_WGPUColor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1438:3
  struct_WGPUCommandBufferDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1440:16
    label*: WGPUStringView
  WGPUCommandBufferDescriptor* = struct_WGPUCommandBufferDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1446:3
  struct_WGPUCommandEncoderDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1448:16
    label*: WGPUStringView
  WGPUCommandEncoderDescriptor* = struct_WGPUCommandEncoderDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1454:3
  struct_WGPUCompilationMessage* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1456:16
    message*: WGPUStringView
    type_field*: WGPUCompilationMessageType
    lineNum*: uint64
    linePos*: uint64
    offset*: uint64
    length*: uint64
  WGPUCompilationMessage* = struct_WGPUCompilationMessage ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1484:3
  struct_WGPUComputePassTimestampWrites* {.pure, inheritable, bycopy.} = object
    querySet*: WGPUQuerySet  ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1486:16
    beginningOfPassWriteIndex*: uint32
    endOfPassWriteIndex*: uint32
  WGPUComputePassTimestampWrites* = struct_WGPUComputePassTimestampWrites ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1490:3
  struct_WGPUConstantEntry* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1492:16
    key*: WGPUStringView
    value*: cdouble
  WGPUConstantEntry* = struct_WGPUConstantEntry ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1499:3
  struct_WGPUExtent3D* {.pure, inheritable, bycopy.} = object
    width*: uint32           ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1501:16
    height*: uint32
    depthOrArrayLayers*: uint32
  WGPUExtent3D* = struct_WGPUExtent3D ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1505:3
  struct_WGPUFuture* {.pure, inheritable, bycopy.} = object
    id*: uint64              ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1510:16
  WGPUFuture* = struct_WGPUFuture ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1515:3
  struct_WGPUInstanceCapabilities* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1520:16
    timedWaitAnyEnable*: WGPUBool
    timedWaitAnyMaxCount*: csize_t
  WGPUInstanceCapabilities* = struct_WGPUInstanceCapabilities ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1531:3
  struct_WGPULimits* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1533:16
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
  WGPULimits* = struct_WGPULimits ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1567:3
  struct_WGPUMultisampleState* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1569:16
    count*: uint32
    mask*: uint32
    alphaToCoverageEnabled*: WGPUBool
  WGPUMultisampleState* = struct_WGPUMultisampleState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1574:3
  struct_WGPUOrigin3D* {.pure, inheritable, bycopy.} = object
    x*: uint32               ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1576:16
    y*: uint32
    z*: uint32
  WGPUOrigin3D* = struct_WGPUOrigin3D ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1580:3
  struct_WGPUPipelineLayoutDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1582:16
    label*: WGPUStringView
    bindGroupLayoutCount*: csize_t
    bindGroupLayouts*: ptr WGPUBindGroupLayout
  WGPUPipelineLayoutDescriptor* = struct_WGPUPipelineLayoutDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1590:3
  struct_WGPUPrimitiveState* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1592:16
    topology*: WGPUPrimitiveTopology
    stripIndexFormat*: WGPUIndexFormat
    frontFace*: WGPUFrontFace
    cullMode*: WGPUCullMode
    unclippedDepth*: WGPUBool
  WGPUPrimitiveState* = struct_WGPUPrimitiveState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1599:3
  struct_WGPUQuerySetDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1601:16
    label*: WGPUStringView
    type_field*: WGPUQueryType
    count*: uint32
  WGPUQuerySetDescriptor* = struct_WGPUQuerySetDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1609:3
  struct_WGPUQueueDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1611:16
    label*: WGPUStringView
  WGPUQueueDescriptor* = struct_WGPUQueueDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1617:3
  struct_WGPURenderBundleDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1619:16
    label*: WGPUStringView
  WGPURenderBundleDescriptor* = struct_WGPURenderBundleDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1625:3
  struct_WGPURenderBundleEncoderDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1627:16
    label*: WGPUStringView
    colorFormatCount*: csize_t
    colorFormats*: ptr WGPUTextureFormat
    depthStencilFormat*: WGPUTextureFormat
    sampleCount*: uint32
    depthReadOnly*: WGPUBool
    stencilReadOnly*: WGPUBool
  WGPURenderBundleEncoderDescriptor* = struct_WGPURenderBundleEncoderDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1639:3
  struct_WGPURenderPassDepthStencilAttachment* {.pure, inheritable, bycopy.} = object
    view*: WGPUTextureView   ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1641:16
    depthLoadOp*: WGPULoadOp
    depthStoreOp*: WGPUStoreOp
    depthClearValue*: cfloat
    depthReadOnly*: WGPUBool
    stencilLoadOp*: WGPULoadOp
    stencilStoreOp*: WGPUStoreOp
    stencilClearValue*: uint32
    stencilReadOnly*: WGPUBool
  WGPURenderPassDepthStencilAttachment* = struct_WGPURenderPassDepthStencilAttachment ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1651:3
  struct_WGPURenderPassMaxDrawCount* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1653:16
    maxDrawCount*: uint64
  WGPURenderPassMaxDrawCount* = struct_WGPURenderPassMaxDrawCount ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1656:3
  struct_WGPURenderPassTimestampWrites* {.pure, inheritable, bycopy.} = object
    querySet*: WGPUQuerySet  ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1658:16
    beginningOfPassWriteIndex*: uint32
    endOfPassWriteIndex*: uint32
  WGPURenderPassTimestampWrites* = struct_WGPURenderPassTimestampWrites ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1662:3
  struct_WGPURequestAdapterOptions* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1664:16
    featureLevel*: WGPUFeatureLevel
    powerPreference*: WGPUPowerPreference
    forceFallbackAdapter*: WGPUBool
    backendType*: WGPUBackendType
    compatibleSurface*: WGPUSurface
  WGPURequestAdapterOptions* = struct_WGPURequestAdapterOptions ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1688:3
  struct_WGPUSamplerBindingLayout* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1690:16
    type_field*: WGPUSamplerBindingType
  WGPUSamplerBindingLayout* = struct_WGPUSamplerBindingLayout ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1693:3
  struct_WGPUSamplerDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1695:16
    label*: WGPUStringView
    addressModeU*: WGPUAddressMode
    addressModeV*: WGPUAddressMode
    addressModeW*: WGPUAddressMode
    magFilter*: WGPUFilterMode
    minFilter*: WGPUFilterMode
    mipmapFilter*: WGPUMipmapFilterMode
    lodMinClamp*: cfloat
    lodMaxClamp*: cfloat
    compare*: WGPUCompareFunction
    maxAnisotropy*: uint16
  WGPUSamplerDescriptor* = struct_WGPUSamplerDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1711:3
  struct_WGPUShaderModuleDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1713:16
    label*: WGPUStringView
  WGPUShaderModuleDescriptor* = struct_WGPUShaderModuleDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1719:3
  struct_WGPUShaderSourceSPIRV* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1721:16
    codeSize*: uint32
    code*: ptr uint32
  WGPUShaderSourceSPIRV* = struct_WGPUShaderSourceSPIRV ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1725:3
  struct_WGPUShaderSourceWGSL* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1727:16
    code*: WGPUStringView
  WGPUShaderSourceWGSL* = struct_WGPUShaderSourceWGSL ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1733:3
  struct_WGPUStencilFaceState* {.pure, inheritable, bycopy.} = object
    compare*: WGPUCompareFunction ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1735:16
    failOp*: WGPUStencilOperation
    depthFailOp*: WGPUStencilOperation
    passOp*: WGPUStencilOperation
  WGPUStencilFaceState* = struct_WGPUStencilFaceState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1740:3
  struct_WGPUStorageTextureBindingLayout* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1742:16
    access*: WGPUStorageTextureAccess
    format*: WGPUTextureFormat
    viewDimension*: WGPUTextureViewDimension
  WGPUStorageTextureBindingLayout* = struct_WGPUStorageTextureBindingLayout ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1747:3
  struct_WGPUSupportedFeatures* {.pure, inheritable, bycopy.} = object
    featureCount*: csize_t   ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1749:16
    features*: ptr WGPUFeatureName
  WGPUSupportedFeatures* = struct_WGPUSupportedFeatures ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1752:3
  struct_WGPUSupportedWGSLLanguageFeatures* {.pure, inheritable, bycopy.} = object
    featureCount*: csize_t   ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1754:16
    features*: ptr WGPUWGSLLanguageFeatureName
  WGPUSupportedWGSLLanguageFeatures* = struct_WGPUSupportedWGSLLanguageFeatures ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1757:3
  struct_WGPUSurfaceCapabilities* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1762:16
    usages*: WGPUTextureUsage
    formatCount*: csize_t
    formats*: ptr WGPUTextureFormat
    presentModeCount*: csize_t
    presentModes*: ptr WGPUPresentMode
    alphaModeCount*: csize_t
    alphaModes*: ptr WGPUCompositeAlphaMode
  WGPUSurfaceCapabilities* = struct_WGPUSurfaceCapabilities ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1786:3
  struct_WGPUSurfaceConfiguration* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1792:16
    device*: WGPUDevice
    format*: WGPUTextureFormat
    usage*: WGPUTextureUsage
    width*: uint32
    height*: uint32
    viewFormatCount*: csize_t
    viewFormats*: ptr WGPUTextureFormat
    alphaMode*: WGPUCompositeAlphaMode
    presentMode*: WGPUPresentMode
  WGPUSurfaceConfiguration* = struct_WGPUSurfaceConfiguration ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1827:3
  struct_WGPUSurfaceDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1834:16
    label*: WGPUStringView
  WGPUSurfaceDescriptor* = struct_WGPUSurfaceDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1842:3
  struct_WGPUSurfaceSourceAndroidNativeWindow* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1847:16
    window*: pointer
  WGPUSurfaceSourceAndroidNativeWindow* = struct_WGPUSurfaceSourceAndroidNativeWindow ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1853:3
  struct_WGPUSurfaceSourceMetalLayer* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1858:16
    layer*: pointer
  WGPUSurfaceSourceMetalLayer* = struct_WGPUSurfaceSourceMetalLayer ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1864:3
  struct_WGPUSurfaceSourceWaylandSurface* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1869:16
    display*: pointer
    surface*: pointer
  WGPUSurfaceSourceWaylandSurface* = struct_WGPUSurfaceSourceWaylandSurface ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1879:3
  struct_WGPUSurfaceSourceWindowsHWND* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1884:16
    hinstance*: pointer
    hwnd*: pointer
  WGPUSurfaceSourceWindowsHWND* = struct_WGPUSurfaceSourceWindowsHWND ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1895:3
  struct_WGPUSurfaceSourceXCBWindow* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1900:16
    connection*: pointer
    window*: uint32
  WGPUSurfaceSourceXCBWindow* = struct_WGPUSurfaceSourceXCBWindow ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1910:3
  struct_WGPUSurfaceSourceXlibWindow* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1915:16
    display*: pointer
    window*: uint64
  WGPUSurfaceSourceXlibWindow* = struct_WGPUSurfaceSourceXlibWindow ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1925:3
  struct_WGPUSurfaceTexture* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1931:16
    texture*: WGPUTexture
    status*: WGPUSurfaceGetCurrentTextureStatus
  WGPUSurfaceTexture* = struct_WGPUSurfaceTexture ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1942:3
  struct_WGPUTexelCopyBufferLayout* {.pure, inheritable, bycopy.} = object
    offset*: uint64          ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1944:16
    bytesPerRow*: uint32
    rowsPerImage*: uint32
  WGPUTexelCopyBufferLayout* = struct_WGPUTexelCopyBufferLayout ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1948:3
  struct_WGPUTextureBindingLayout* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1950:16
    sampleType*: WGPUTextureSampleType
    viewDimension*: WGPUTextureViewDimension
    multisampled*: WGPUBool
  WGPUTextureBindingLayout* = struct_WGPUTextureBindingLayout ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1955:3
  struct_WGPUTextureViewDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1957:16
    label*: WGPUStringView
    format*: WGPUTextureFormat
    dimension*: WGPUTextureViewDimension
    baseMipLevel*: uint32
    mipLevelCount*: uint32
    baseArrayLayer*: uint32
    arrayLayerCount*: uint32
    aspect*: WGPUTextureAspect
    usage*: WGPUTextureUsage
  WGPUTextureViewDescriptor* = struct_WGPUTextureViewDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1971:3
  struct_WGPUVertexAttribute* {.pure, inheritable, bycopy.} = object
    format*: WGPUVertexFormat ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1973:16
    offset*: uint64
    shaderLocation*: uint32
  WGPUVertexAttribute* = struct_WGPUVertexAttribute ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1977:3
  struct_WGPUBindGroupDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1979:16
    label*: WGPUStringView
    layout*: WGPUBindGroupLayout
    entryCount*: csize_t
    entries*: ptr WGPUBindGroupEntry
  WGPUBindGroupDescriptor* = struct_WGPUBindGroupDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1988:3
  struct_WGPUBindGroupLayoutEntry* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1990:16
    binding*: uint32
    visibility*: WGPUShaderStage
    buffer*: WGPUBufferBindingLayout
    sampler*: WGPUSamplerBindingLayout
    texture*: WGPUTextureBindingLayout
    storageTexture*: WGPUStorageTextureBindingLayout
  WGPUBindGroupLayoutEntry* = struct_WGPUBindGroupLayoutEntry ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1998:3
  struct_WGPUBlendState* {.pure, inheritable, bycopy.} = object
    color*: WGPUBlendComponent ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2000:16
    alpha*: WGPUBlendComponent
  WGPUBlendState* = struct_WGPUBlendState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2003:3
  WGPUCompilationInfo* = struct_WGPUCompilationInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2009:3
  struct_WGPUComputePassDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2011:16
    label*: WGPUStringView
    timestampWrites*: ptr WGPUComputePassTimestampWrites
  WGPUComputePassDescriptor* = struct_WGPUComputePassDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2018:3
  struct_WGPUDepthStencilState* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2020:16
    format*: WGPUTextureFormat
    depthWriteEnabled*: WGPUOptionalBool
    depthCompare*: WGPUCompareFunction
    stencilFront*: WGPUStencilFaceState
    stencilBack*: WGPUStencilFaceState
    stencilReadMask*: uint32
    stencilWriteMask*: uint32
    depthBias*: int32
    depthBiasSlopeScale*: cfloat
    depthBiasClamp*: cfloat
  WGPUDepthStencilState* = struct_WGPUDepthStencilState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2032:3
  struct_WGPUDeviceDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2034:16
    label*: WGPUStringView
    requiredFeatureCount*: csize_t
    requiredFeatures*: ptr WGPUFeatureName
    requiredLimits*: ptr WGPULimits
    defaultQueue*: WGPUQueueDescriptor
    deviceLostCallbackInfo*: WGPUDeviceLostCallbackInfo
    uncapturedErrorCallbackInfo*: WGPUUncapturedErrorCallbackInfo
  WGPUDeviceDescriptor* = struct_WGPUDeviceDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2046:3
  struct_WGPUFutureWaitInfo* {.pure, inheritable, bycopy.} = object
    future*: WGPUFuture      ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2051:16
    completed*: WGPUBool
  WGPUFutureWaitInfo* = struct_WGPUFutureWaitInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2060:3
  struct_WGPUInstanceDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2062:16
    features*: WGPUInstanceCapabilities
  WGPUInstanceDescriptor* = struct_WGPUInstanceDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2068:3
  struct_WGPUProgrammableStageDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2070:16
    module*: WGPUShaderModule
    entryPoint*: WGPUStringView
    constantCount*: csize_t
    constants*: ptr WGPUConstantEntry
  WGPUProgrammableStageDescriptor* = struct_WGPUProgrammableStageDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2079:3
  struct_WGPURenderPassColorAttachment* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2081:16
    view*: WGPUTextureView
    depthSlice*: uint32
    resolveTarget*: WGPUTextureView
    loadOp*: WGPULoadOp
    storeOp*: WGPUStoreOp
    clearValue*: WGPUColor
  WGPURenderPassColorAttachment* = struct_WGPURenderPassColorAttachment ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2089:3
  struct_WGPUTexelCopyBufferInfo* {.pure, inheritable, bycopy.} = object
    layout*: WGPUTexelCopyBufferLayout ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2091:16
    buffer*: WGPUBuffer
  WGPUTexelCopyBufferInfo* = struct_WGPUTexelCopyBufferInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2094:3
  struct_WGPUTexelCopyTextureInfo* {.pure, inheritable, bycopy.} = object
    texture*: WGPUTexture    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2096:16
    mipLevel*: uint32
    origin*: WGPUOrigin3D
    aspect*: WGPUTextureAspect
  WGPUTexelCopyTextureInfo* = struct_WGPUTexelCopyTextureInfo ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2101:3
  struct_WGPUTextureDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2103:16
    label*: WGPUStringView
    usage*: WGPUTextureUsage
    dimension*: WGPUTextureDimension
    size*: WGPUExtent3D
    format*: WGPUTextureFormat
    mipLevelCount*: uint32
    sampleCount*: uint32
    viewFormatCount*: csize_t
    viewFormats*: ptr WGPUTextureFormat
  WGPUTextureDescriptor* = struct_WGPUTextureDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2117:3
  struct_WGPUVertexBufferLayout* {.pure, inheritable, bycopy.} = object
    stepMode*: WGPUVertexStepMode ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2119:16
    arrayStride*: uint64
    attributeCount*: csize_t
    attributes*: ptr WGPUVertexAttribute
  WGPUVertexBufferLayout* = struct_WGPUVertexBufferLayout ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2129:3
  struct_WGPUBindGroupLayoutDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2131:16
    label*: WGPUStringView
    entryCount*: csize_t
    entries*: ptr WGPUBindGroupLayoutEntry
  WGPUBindGroupLayoutDescriptor* = struct_WGPUBindGroupLayoutDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2139:3
  struct_WGPUColorTargetState* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2141:16
    format*: WGPUTextureFormat
    blend*: ptr WGPUBlendState
    writeMask*: WGPUColorWriteMask
  WGPUColorTargetState* = struct_WGPUColorTargetState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2151:3
  struct_WGPUComputePipelineDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2153:16
    label*: WGPUStringView
    layout*: WGPUPipelineLayout
    compute*: WGPUProgrammableStageDescriptor
  WGPUComputePipelineDescriptor* = struct_WGPUComputePipelineDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2161:3
  struct_WGPURenderPassDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2163:16
    label*: WGPUStringView
    colorAttachmentCount*: csize_t
    colorAttachments*: ptr WGPURenderPassColorAttachment
    depthStencilAttachment*: ptr WGPURenderPassDepthStencilAttachment
    occlusionQuerySet*: WGPUQuerySet
    timestampWrites*: ptr WGPURenderPassTimestampWrites
  WGPURenderPassDescriptor* = struct_WGPURenderPassDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2174:3
  struct_WGPUVertexState* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2176:16
    module*: WGPUShaderModule
    entryPoint*: WGPUStringView
    constantCount*: csize_t
    constants*: ptr WGPUConstantEntry
    bufferCount*: csize_t
    buffers*: ptr WGPUVertexBufferLayout
  WGPUVertexState* = struct_WGPUVertexState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2187:3
  struct_WGPUFragmentState* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2189:16
    module*: WGPUShaderModule
    entryPoint*: WGPUStringView
    constantCount*: csize_t
    constants*: ptr WGPUConstantEntry
    targetCount*: csize_t
    targets*: ptr WGPUColorTargetState
  WGPUFragmentState* = struct_WGPUFragmentState ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2200:3
  struct_WGPURenderPipelineDescriptor* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2202:16
    label*: WGPUStringView
    layout*: WGPUPipelineLayout
    vertex*: WGPUVertexState
    primitive*: WGPUPrimitiveState
    depthStencil*: ptr WGPUDepthStencilState
    multisample*: WGPUMultisampleState
    fragment*: ptr WGPUFragmentState
  WGPURenderPipelineDescriptor* = struct_WGPURenderPipelineDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2214:3
  WGPUProcCreateInstance* = proc (a0: ptr WGPUInstanceDescriptor): WGPUInstance {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2228:24
  WGPUProcGetInstanceCapabilities* = proc (a0: ptr WGPUInstanceCapabilities): WGPUStatus {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2233:22
  WGPUProcGetProcAddress* = proc (a0: WGPUStringView): WGPUProc {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2238:20
  WGPUProcAdapterGetFeatures* = proc (a0: WGPUAdapter;
                                      a1: ptr WGPUSupportedFeatures): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2245:16
  WGPUProcAdapterGetInfo* = proc (a0: WGPUAdapter; a1: ptr WGPUAdapterInfo): WGPUStatus {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2250:22
  WGPUProcAdapterGetLimits* = proc (a0: WGPUAdapter; a1: ptr WGPULimits): WGPUStatus {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2255:22
  WGPUProcAdapterHasFeature* = proc (a0: WGPUAdapter; a1: WGPUFeatureName): WGPUBool {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2260:20
  WGPUProcAdapterRequestDevice* = proc (a0: WGPUAdapter;
                                        a1: ptr WGPUDeviceDescriptor;
                                        a2: WGPURequestDeviceCallbackInfo): WGPUFuture {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2265:22
  WGPUProcAdapterAddRef* = proc (a0: WGPUAdapter): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2270:16
  WGPUProcAdapterRelease* = proc (a0: WGPUAdapter): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2275:16
  WGPUProcAdapterInfoFreeMembers* = proc (a0: WGPUAdapterInfo): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2282:16
  WGPUProcBindGroupSetLabel* = proc (a0: WGPUBindGroup; a1: WGPUStringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2289:16
  WGPUProcBindGroupAddRef* = proc (a0: WGPUBindGroup): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2294:16
  WGPUProcBindGroupRelease* = proc (a0: WGPUBindGroup): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2299:16
  WGPUProcBindGroupLayoutSetLabel* = proc (a0: WGPUBindGroupLayout;
      a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2306:16
  WGPUProcBindGroupLayoutAddRef* = proc (a0: WGPUBindGroupLayout): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2311:16
  WGPUProcBindGroupLayoutRelease* = proc (a0: WGPUBindGroupLayout): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2316:16
  WGPUProcBufferDestroy* = proc (a0: WGPUBuffer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2323:16
  WGPUProcBufferGetConstMappedRange* = proc (a0: WGPUBuffer; a1: csize_t;
      a2: csize_t): pointer {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2328:24
  WGPUProcBufferGetMapState* = proc (a0: WGPUBuffer): WGPUBufferMapState {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2333:30
  WGPUProcBufferGetMappedRange* = proc (a0: WGPUBuffer; a1: csize_t; a2: csize_t): pointer {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2338:18
  WGPUProcBufferGetSize* = proc (a0: WGPUBuffer): uint64 {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2343:20
  WGPUProcBufferGetUsage* = proc (a0: WGPUBuffer): WGPUBufferUsage {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2348:27
  WGPUProcBufferMapAsync* = proc (a0: WGPUBuffer; a1: WGPUMapMode; a2: csize_t;
                                  a3: csize_t; a4: WGPUBufferMapCallbackInfo): WGPUFuture {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2353:22
  WGPUProcBufferSetLabel* = proc (a0: WGPUBuffer; a1: WGPUStringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2358:16
  WGPUProcBufferUnmap* = proc (a0: WGPUBuffer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2363:16
  WGPUProcBufferAddRef* = proc (a0: WGPUBuffer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2368:16
  WGPUProcBufferRelease* = proc (a0: WGPUBuffer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2373:16
  WGPUProcCommandBufferSetLabel* = proc (a0: WGPUCommandBuffer;
      a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2380:16
  WGPUProcCommandBufferAddRef* = proc (a0: WGPUCommandBuffer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2385:16
  WGPUProcCommandBufferRelease* = proc (a0: WGPUCommandBuffer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2390:16
  WGPUProcCommandEncoderBeginComputePass* = proc (a0: WGPUCommandEncoder;
      a1: ptr WGPUComputePassDescriptor): WGPUComputePassEncoder {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2397:34
  WGPUProcCommandEncoderBeginRenderPass* = proc (a0: WGPUCommandEncoder;
      a1: ptr WGPURenderPassDescriptor): WGPURenderPassEncoder {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2402:33
  WGPUProcCommandEncoderClearBuffer* = proc (a0: WGPUCommandEncoder;
      a1: WGPUBuffer; a2: uint64; a3: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2407:16
  WGPUProcCommandEncoderCopyBufferToBuffer* = proc (a0: WGPUCommandEncoder;
      a1: WGPUBuffer; a2: uint64; a3: WGPUBuffer; a4: uint64; a5: uint64): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2412:16
  WGPUProcCommandEncoderCopyBufferToTexture* = proc (a0: WGPUCommandEncoder;
      a1: ptr WGPUTexelCopyBufferInfo; a2: ptr WGPUTexelCopyTextureInfo;
      a3: ptr WGPUExtent3D): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2417:16
  WGPUProcCommandEncoderCopyTextureToBuffer* = proc (a0: WGPUCommandEncoder;
      a1: ptr WGPUTexelCopyTextureInfo; a2: ptr WGPUTexelCopyBufferInfo;
      a3: ptr WGPUExtent3D): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2422:16
  WGPUProcCommandEncoderCopyTextureToTexture* = proc (a0: WGPUCommandEncoder;
      a1: ptr WGPUTexelCopyTextureInfo; a2: ptr WGPUTexelCopyTextureInfo;
      a3: ptr WGPUExtent3D): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2427:16
  WGPUProcCommandEncoderFinish* = proc (a0: WGPUCommandEncoder;
                                        a1: ptr WGPUCommandBufferDescriptor): WGPUCommandBuffer {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2432:29
  WGPUProcCommandEncoderInsertDebugMarker* = proc (a0: WGPUCommandEncoder;
      a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2437:16
  WGPUProcCommandEncoderPopDebugGroup* = proc (a0: WGPUCommandEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2442:16
  WGPUProcCommandEncoderPushDebugGroup* = proc (a0: WGPUCommandEncoder;
      a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2447:16
  WGPUProcCommandEncoderResolveQuerySet* = proc (a0: WGPUCommandEncoder;
      a1: WGPUQuerySet; a2: uint32; a3: uint32; a4: WGPUBuffer; a5: uint64): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2452:16
  WGPUProcCommandEncoderSetLabel* = proc (a0: WGPUCommandEncoder;
      a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2457:16
  WGPUProcCommandEncoderWriteTimestamp* = proc (a0: WGPUCommandEncoder;
      a1: WGPUQuerySet; a2: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2462:16
  WGPUProcCommandEncoderAddRef* = proc (a0: WGPUCommandEncoder): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2467:16
  WGPUProcCommandEncoderRelease* = proc (a0: WGPUCommandEncoder): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2472:16
  WGPUProcComputePassEncoderDispatchWorkgroups* = proc (
      a0: WGPUComputePassEncoder; a1: uint32; a2: uint32; a3: uint32): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2479:16
  WGPUProcComputePassEncoderDispatchWorkgroupsIndirect* = proc (
      a0: WGPUComputePassEncoder; a1: WGPUBuffer; a2: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2484:16
  WGPUProcComputePassEncoderEnd* = proc (a0: WGPUComputePassEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2489:16
  WGPUProcComputePassEncoderInsertDebugMarker* = proc (
      a0: WGPUComputePassEncoder; a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2494:16
  WGPUProcComputePassEncoderPopDebugGroup* = proc (a0: WGPUComputePassEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2499:16
  WGPUProcComputePassEncoderPushDebugGroup* = proc (a0: WGPUComputePassEncoder;
      a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2504:16
  WGPUProcComputePassEncoderSetBindGroup* = proc (a0: WGPUComputePassEncoder;
      a1: uint32; a2: WGPUBindGroup; a3: csize_t; a4: ptr uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2509:16
  WGPUProcComputePassEncoderSetLabel* = proc (a0: WGPUComputePassEncoder;
      a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2514:16
  WGPUProcComputePassEncoderSetPipeline* = proc (a0: WGPUComputePassEncoder;
      a1: WGPUComputePipeline): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2519:16
  WGPUProcComputePassEncoderAddRef* = proc (a0: WGPUComputePassEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2524:16
  WGPUProcComputePassEncoderRelease* = proc (a0: WGPUComputePassEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2529:16
  WGPUProcComputePipelineGetBindGroupLayout* = proc (a0: WGPUComputePipeline;
      a1: uint32): WGPUBindGroupLayout {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2536:31
  WGPUProcComputePipelineSetLabel* = proc (a0: WGPUComputePipeline;
      a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2541:16
  WGPUProcComputePipelineAddRef* = proc (a0: WGPUComputePipeline): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2546:16
  WGPUProcComputePipelineRelease* = proc (a0: WGPUComputePipeline): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2551:16
  WGPUProcDeviceCreateBindGroup* = proc (a0: WGPUDevice;
      a1: ptr WGPUBindGroupDescriptor): WGPUBindGroup {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2558:25
  WGPUProcDeviceCreateBindGroupLayout* = proc (a0: WGPUDevice;
      a1: ptr WGPUBindGroupLayoutDescriptor): WGPUBindGroupLayout {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2563:31
  WGPUProcDeviceCreateBuffer* = proc (a0: WGPUDevice;
                                      a1: ptr WGPUBufferDescriptor): WGPUBuffer {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2568:22
  WGPUProcDeviceCreateCommandEncoder* = proc (a0: WGPUDevice;
      a1: ptr WGPUCommandEncoderDescriptor): WGPUCommandEncoder {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2573:30
  WGPUProcDeviceCreateComputePipeline* = proc (a0: WGPUDevice;
      a1: ptr WGPUComputePipelineDescriptor): WGPUComputePipeline {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2578:31
  WGPUProcDeviceCreateComputePipelineAsync* = proc (a0: WGPUDevice;
      a1: ptr WGPUComputePipelineDescriptor;
      a2: WGPUCreateComputePipelineAsyncCallbackInfo): WGPUFuture {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2583:22
  WGPUProcDeviceCreatePipelineLayout* = proc (a0: WGPUDevice;
      a1: ptr WGPUPipelineLayoutDescriptor): WGPUPipelineLayout {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2588:30
  WGPUProcDeviceCreateQuerySet* = proc (a0: WGPUDevice;
                                        a1: ptr WGPUQuerySetDescriptor): WGPUQuerySet {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2593:24
  WGPUProcDeviceCreateRenderBundleEncoder* = proc (a0: WGPUDevice;
      a1: ptr WGPURenderBundleEncoderDescriptor): WGPURenderBundleEncoder {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2598:35
  WGPUProcDeviceCreateRenderPipeline* = proc (a0: WGPUDevice;
      a1: ptr WGPURenderPipelineDescriptor): WGPURenderPipeline {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2603:30
  WGPUProcDeviceCreateRenderPipelineAsync* = proc (a0: WGPUDevice;
      a1: ptr WGPURenderPipelineDescriptor;
      a2: WGPUCreateRenderPipelineAsyncCallbackInfo): WGPUFuture {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2608:22
  WGPUProcDeviceCreateSampler* = proc (a0: WGPUDevice;
                                       a1: ptr WGPUSamplerDescriptor): WGPUSampler {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2613:23
  WGPUProcDeviceCreateShaderModule* = proc (a0: WGPUDevice;
      a1: ptr WGPUShaderModuleDescriptor): WGPUShaderModule {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2618:28
  WGPUProcDeviceCreateTexture* = proc (a0: WGPUDevice;
                                       a1: ptr WGPUTextureDescriptor): WGPUTexture {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2623:23
  WGPUProcDeviceDestroy* = proc (a0: WGPUDevice): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2628:16
  WGPUProcDeviceGetAdapterInfo* = proc (a0: WGPUDevice): WGPUAdapterInfo {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2633:27
  WGPUProcDeviceGetFeatures* = proc (a0: WGPUDevice;
                                     a1: ptr WGPUSupportedFeatures): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2638:16
  WGPUProcDeviceGetLimits* = proc (a0: WGPUDevice; a1: ptr WGPULimits): WGPUStatus {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2643:22
  WGPUProcDeviceGetLostFuture* = proc (a0: WGPUDevice): WGPUFuture {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2648:22
  WGPUProcDeviceGetQueue* = proc (a0: WGPUDevice): WGPUQueue {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2653:21
  WGPUProcDeviceHasFeature* = proc (a0: WGPUDevice; a1: WGPUFeatureName): WGPUBool {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2658:20
  WGPUProcDevicePopErrorScope* = proc (a0: WGPUDevice;
                                       a1: WGPUPopErrorScopeCallbackInfo): WGPUFuture {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2663:22
  WGPUProcDevicePushErrorScope* = proc (a0: WGPUDevice; a1: WGPUErrorFilter): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2668:16
  WGPUProcDeviceSetLabel* = proc (a0: WGPUDevice; a1: WGPUStringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2673:16
  WGPUProcDeviceAddRef* = proc (a0: WGPUDevice): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2678:16
  WGPUProcDeviceRelease* = proc (a0: WGPUDevice): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2683:16
  WGPUProcInstanceCreateSurface* = proc (a0: WGPUInstance;
      a1: ptr WGPUSurfaceDescriptor): WGPUSurface {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2690:23
  WGPUProcInstanceGetWGSLLanguageFeatures* = proc (a0: WGPUInstance;
      a1: ptr WGPUSupportedWGSLLanguageFeatures): WGPUStatus {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2695:22
  WGPUProcInstanceHasWGSLLanguageFeature* = proc (a0: WGPUInstance;
      a1: WGPUWGSLLanguageFeatureName): WGPUBool {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2700:20
  WGPUProcInstanceProcessEvents* = proc (a0: WGPUInstance): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2705:16
  WGPUProcInstanceRequestAdapter* = proc (a0: WGPUInstance;
      a1: ptr WGPURequestAdapterOptions; a2: WGPURequestAdapterCallbackInfo): WGPUFuture {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2710:22
  WGPUProcInstanceWaitAny* = proc (a0: WGPUInstance; a1: csize_t;
                                   a2: ptr WGPUFutureWaitInfo; a3: uint64): WGPUWaitStatus {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2715:26
  WGPUProcInstanceAddRef* = proc (a0: WGPUInstance): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2720:16
  WGPUProcInstanceRelease* = proc (a0: WGPUInstance): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2725:16
  WGPUProcPipelineLayoutSetLabel* = proc (a0: WGPUPipelineLayout;
      a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2732:16
  WGPUProcPipelineLayoutAddRef* = proc (a0: WGPUPipelineLayout): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2737:16
  WGPUProcPipelineLayoutRelease* = proc (a0: WGPUPipelineLayout): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2742:16
  WGPUProcQuerySetDestroy* = proc (a0: WGPUQuerySet): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2749:16
  WGPUProcQuerySetGetCount* = proc (a0: WGPUQuerySet): uint32 {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2754:20
  WGPUProcQuerySetGetType* = proc (a0: WGPUQuerySet): WGPUQueryType {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2759:25
  WGPUProcQuerySetSetLabel* = proc (a0: WGPUQuerySet; a1: WGPUStringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2764:16
  WGPUProcQuerySetAddRef* = proc (a0: WGPUQuerySet): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2769:16
  WGPUProcQuerySetRelease* = proc (a0: WGPUQuerySet): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2774:16
  WGPUProcQueueOnSubmittedWorkDone* = proc (a0: WGPUQueue;
      a1: WGPUQueueWorkDoneCallbackInfo): WGPUFuture {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2781:22
  WGPUProcQueueSetLabel* = proc (a0: WGPUQueue; a1: WGPUStringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2786:16
  WGPUProcQueueSubmit* = proc (a0: WGPUQueue; a1: csize_t;
                               a2: ptr WGPUCommandBuffer): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2791:16
  WGPUProcQueueWriteBuffer* = proc (a0: WGPUQueue; a1: WGPUBuffer; a2: uint64;
                                    a3: pointer; a4: csize_t): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2796:16
  WGPUProcQueueWriteTexture* = proc (a0: WGPUQueue;
                                     a1: ptr WGPUTexelCopyTextureInfo;
                                     a2: pointer; a3: csize_t;
                                     a4: ptr WGPUTexelCopyBufferLayout;
                                     a5: ptr WGPUExtent3D): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2801:16
  WGPUProcQueueAddRef* = proc (a0: WGPUQueue): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2806:16
  WGPUProcQueueRelease* = proc (a0: WGPUQueue): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2811:16
  WGPUProcRenderBundleSetLabel* = proc (a0: WGPURenderBundle; a1: WGPUStringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2818:16
  WGPUProcRenderBundleAddRef* = proc (a0: WGPURenderBundle): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2823:16
  WGPUProcRenderBundleRelease* = proc (a0: WGPURenderBundle): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2828:16
  WGPUProcRenderBundleEncoderDraw* = proc (a0: WGPURenderBundleEncoder;
      a1: uint32; a2: uint32; a3: uint32; a4: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2835:16
  WGPUProcRenderBundleEncoderDrawIndexed* = proc (a0: WGPURenderBundleEncoder;
      a1: uint32; a2: uint32; a3: uint32; a4: int32; a5: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2840:16
  WGPUProcRenderBundleEncoderDrawIndexedIndirect* = proc (
      a0: WGPURenderBundleEncoder; a1: WGPUBuffer; a2: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2845:16
  WGPUProcRenderBundleEncoderDrawIndirect* = proc (a0: WGPURenderBundleEncoder;
      a1: WGPUBuffer; a2: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2850:16
  WGPUProcRenderBundleEncoderFinish* = proc (a0: WGPURenderBundleEncoder;
      a1: ptr WGPURenderBundleDescriptor): WGPURenderBundle {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2855:28
  WGPUProcRenderBundleEncoderInsertDebugMarker* = proc (
      a0: WGPURenderBundleEncoder; a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2860:16
  WGPUProcRenderBundleEncoderPopDebugGroup* = proc (a0: WGPURenderBundleEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2865:16
  WGPUProcRenderBundleEncoderPushDebugGroup* = proc (
      a0: WGPURenderBundleEncoder; a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2870:16
  WGPUProcRenderBundleEncoderSetBindGroup* = proc (a0: WGPURenderBundleEncoder;
      a1: uint32; a2: WGPUBindGroup; a3: csize_t; a4: ptr uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2875:16
  WGPUProcRenderBundleEncoderSetIndexBuffer* = proc (
      a0: WGPURenderBundleEncoder; a1: WGPUBuffer; a2: WGPUIndexFormat;
      a3: uint64; a4: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2880:16
  WGPUProcRenderBundleEncoderSetLabel* = proc (a0: WGPURenderBundleEncoder;
      a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2885:16
  WGPUProcRenderBundleEncoderSetPipeline* = proc (a0: WGPURenderBundleEncoder;
      a1: WGPURenderPipeline): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2890:16
  WGPUProcRenderBundleEncoderSetVertexBuffer* = proc (
      a0: WGPURenderBundleEncoder; a1: uint32; a2: WGPUBuffer; a3: uint64;
      a4: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2895:16
  WGPUProcRenderBundleEncoderAddRef* = proc (a0: WGPURenderBundleEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2900:16
  WGPUProcRenderBundleEncoderRelease* = proc (a0: WGPURenderBundleEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2905:16
  WGPUProcRenderPassEncoderBeginOcclusionQuery* = proc (
      a0: WGPURenderPassEncoder; a1: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2912:16
  WGPUProcRenderPassEncoderDraw* = proc (a0: WGPURenderPassEncoder; a1: uint32;
      a2: uint32; a3: uint32; a4: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2917:16
  WGPUProcRenderPassEncoderDrawIndexed* = proc (a0: WGPURenderPassEncoder;
      a1: uint32; a2: uint32; a3: uint32; a4: int32; a5: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2922:16
  WGPUProcRenderPassEncoderDrawIndexedIndirect* = proc (
      a0: WGPURenderPassEncoder; a1: WGPUBuffer; a2: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2927:16
  WGPUProcRenderPassEncoderDrawIndirect* = proc (a0: WGPURenderPassEncoder;
      a1: WGPUBuffer; a2: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2932:16
  WGPUProcRenderPassEncoderEnd* = proc (a0: WGPURenderPassEncoder): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2937:16
  WGPUProcRenderPassEncoderEndOcclusionQuery* = proc (a0: WGPURenderPassEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2942:16
  WGPUProcRenderPassEncoderExecuteBundles* = proc (a0: WGPURenderPassEncoder;
      a1: csize_t; a2: ptr WGPURenderBundle): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2947:16
  WGPUProcRenderPassEncoderInsertDebugMarker* = proc (a0: WGPURenderPassEncoder;
      a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2952:16
  WGPUProcRenderPassEncoderPopDebugGroup* = proc (a0: WGPURenderPassEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2957:16
  WGPUProcRenderPassEncoderPushDebugGroup* = proc (a0: WGPURenderPassEncoder;
      a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2962:16
  WGPUProcRenderPassEncoderSetBindGroup* = proc (a0: WGPURenderPassEncoder;
      a1: uint32; a2: WGPUBindGroup; a3: csize_t; a4: ptr uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2967:16
  WGPUProcRenderPassEncoderSetBlendConstant* = proc (a0: WGPURenderPassEncoder;
      a1: ptr WGPUColor): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2972:16
  WGPUProcRenderPassEncoderSetIndexBuffer* = proc (a0: WGPURenderPassEncoder;
      a1: WGPUBuffer; a2: WGPUIndexFormat; a3: uint64; a4: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2977:16
  WGPUProcRenderPassEncoderSetLabel* = proc (a0: WGPURenderPassEncoder;
      a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2982:16
  WGPUProcRenderPassEncoderSetPipeline* = proc (a0: WGPURenderPassEncoder;
      a1: WGPURenderPipeline): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2987:16
  WGPUProcRenderPassEncoderSetScissorRect* = proc (a0: WGPURenderPassEncoder;
      a1: uint32; a2: uint32; a3: uint32; a4: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2992:16
  WGPUProcRenderPassEncoderSetStencilReference* = proc (
      a0: WGPURenderPassEncoder; a1: uint32): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:2997:16
  WGPUProcRenderPassEncoderSetVertexBuffer* = proc (a0: WGPURenderPassEncoder;
      a1: uint32; a2: WGPUBuffer; a3: uint64; a4: uint64): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3002:16
  WGPUProcRenderPassEncoderSetViewport* = proc (a0: WGPURenderPassEncoder;
      a1: cfloat; a2: cfloat; a3: cfloat; a4: cfloat; a5: cfloat; a6: cfloat): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3007:16
  WGPUProcRenderPassEncoderAddRef* = proc (a0: WGPURenderPassEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3012:16
  WGPUProcRenderPassEncoderRelease* = proc (a0: WGPURenderPassEncoder): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3017:16
  WGPUProcRenderPipelineGetBindGroupLayout* = proc (a0: WGPURenderPipeline;
      a1: uint32): WGPUBindGroupLayout {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3024:31
  WGPUProcRenderPipelineSetLabel* = proc (a0: WGPURenderPipeline;
      a1: WGPUStringView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3029:16
  WGPUProcRenderPipelineAddRef* = proc (a0: WGPURenderPipeline): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3034:16
  WGPUProcRenderPipelineRelease* = proc (a0: WGPURenderPipeline): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3039:16
  WGPUProcSamplerSetLabel* = proc (a0: WGPUSampler; a1: WGPUStringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3046:16
  WGPUProcSamplerAddRef* = proc (a0: WGPUSampler): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3051:16
  WGPUProcSamplerRelease* = proc (a0: WGPUSampler): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3056:16
  WGPUProcShaderModuleGetCompilationInfo* = proc (a0: WGPUShaderModule;
      a1: WGPUCompilationInfoCallbackInfo): WGPUFuture {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3063:22
  WGPUProcShaderModuleSetLabel* = proc (a0: WGPUShaderModule; a1: WGPUStringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3068:16
  WGPUProcShaderModuleAddRef* = proc (a0: WGPUShaderModule): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3073:16
  WGPUProcShaderModuleRelease* = proc (a0: WGPUShaderModule): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3078:16
  WGPUProcSupportedFeaturesFreeMembers* = proc (a0: WGPUSupportedFeatures): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3085:16
  WGPUProcSupportedWGSLLanguageFeaturesFreeMembers* = proc (
      a0: WGPUSupportedWGSLLanguageFeatures): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3092:16
  WGPUProcSurfaceConfigure* = proc (a0: WGPUSurface;
                                    a1: ptr WGPUSurfaceConfiguration): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3099:16
  WGPUProcSurfaceGetCapabilities* = proc (a0: WGPUSurface; a1: WGPUAdapter;
      a2: ptr WGPUSurfaceCapabilities): WGPUStatus {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3104:22
  WGPUProcSurfaceGetCurrentTexture* = proc (a0: WGPUSurface;
      a1: ptr WGPUSurfaceTexture): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3109:16
  WGPUProcSurfacePresent* = proc (a0: WGPUSurface): WGPUStatus {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3114:22
  WGPUProcSurfaceSetLabel* = proc (a0: WGPUSurface; a1: WGPUStringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3119:16
  WGPUProcSurfaceUnconfigure* = proc (a0: WGPUSurface): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3124:16
  WGPUProcSurfaceAddRef* = proc (a0: WGPUSurface): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3129:16
  WGPUProcSurfaceRelease* = proc (a0: WGPUSurface): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3134:16
  WGPUProcSurfaceCapabilitiesFreeMembers* = proc (a0: WGPUSurfaceCapabilities): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3141:16
  WGPUProcTextureCreateView* = proc (a0: WGPUTexture;
                                     a1: ptr WGPUTextureViewDescriptor): WGPUTextureView {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3148:27
  WGPUProcTextureDestroy* = proc (a0: WGPUTexture): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3153:16
  WGPUProcTextureGetDepthOrArrayLayers* = proc (a0: WGPUTexture): uint32 {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3158:20
  WGPUProcTextureGetDimension* = proc (a0: WGPUTexture): WGPUTextureDimension {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3163:32
  WGPUProcTextureGetFormat* = proc (a0: WGPUTexture): WGPUTextureFormat {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3168:29
  WGPUProcTextureGetHeight* = proc (a0: WGPUTexture): uint32 {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3173:20
  WGPUProcTextureGetMipLevelCount* = proc (a0: WGPUTexture): uint32 {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3178:20
  WGPUProcTextureGetSampleCount* = proc (a0: WGPUTexture): uint32 {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3183:20
  WGPUProcTextureGetUsage* = proc (a0: WGPUTexture): WGPUTextureUsage {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3188:28
  WGPUProcTextureGetWidth* = proc (a0: WGPUTexture): uint32 {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3193:20
  WGPUProcTextureSetLabel* = proc (a0: WGPUTexture; a1: WGPUStringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3198:16
  WGPUProcTextureAddRef* = proc (a0: WGPUTexture): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3203:16
  WGPUProcTextureRelease* = proc (a0: WGPUTexture): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3208:16
  WGPUProcTextureViewSetLabel* = proc (a0: WGPUTextureView; a1: WGPUStringView): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3215:16
  WGPUProcTextureViewAddRef* = proc (a0: WGPUTextureView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3220:16
  WGPUProcTextureViewRelease* = proc (a0: WGPUTextureView): void {.cdecl.} ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:3225:16
  WGPUNativeSType* = enum_WGPUNativeSType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:18:3
  WGPUNativeFeature* = enum_WGPUNativeFeature ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:59:3
  WGPULogLevel* = enum_WGPULogLevel ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:69:3
  WGPUInstanceBackend* = WGPUFlags ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:71:19
  WGPUInstanceFlag* = WGPUFlags ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:85:19
  WGPUDx12Compiler* = enum_WGPUDx12Compiler ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:97:3
  WGPUGles3MinorVersion* = enum_WGPUGles3MinorVersion ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:105:3
  WGPUPipelineStatisticName* = enum_WGPUPipelineStatisticName ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:114:3
  WGPUNativeQueryType* = enum_WGPUNativeQueryType ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:119:3
  struct_WGPUInstanceExtras* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:121:16
    backends*: WGPUInstanceBackend
    flags*: WGPUInstanceFlag
    dx12ShaderCompiler*: WGPUDx12Compiler
    gles3MinorVersion*: WGPUGles3MinorVersion
    dxilPath*: WGPUStringView
    dxcPath*: WGPUStringView
  WGPUInstanceExtras* = struct_WGPUInstanceExtras ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:129:3
  struct_WGPUDeviceExtras* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:131:16
    tracePath*: WGPUStringView
  WGPUDeviceExtras* = struct_WGPUDeviceExtras ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:134:3
  struct_WGPUNativeLimits* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStructOut ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:136:16
    maxPushConstantSize*: uint32
    maxNonSamplerBindings*: uint32
  WGPUNativeLimits* = struct_WGPUNativeLimits ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:141:3
  struct_WGPUPushConstantRange* {.pure, inheritable, bycopy.} = object
    stages*: WGPUShaderStage ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:143:16
    start*: uint32
    end_field*: uint32
  WGPUPushConstantRange* = struct_WGPUPushConstantRange ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:147:3
  struct_WGPUPipelineLayoutExtras* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:149:16
    pushConstantRangeCount*: csize_t
    pushConstantRanges*: ptr WGPUPushConstantRange
  WGPUPipelineLayoutExtras* = struct_WGPUPipelineLayoutExtras ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:153:3
  WGPUSubmissionIndex* = uint64 ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:155:18
  struct_WGPUShaderDefine* {.pure, inheritable, bycopy.} = object
    name*: WGPUStringView    ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:157:16
    value*: WGPUStringView
  WGPUShaderDefine* = struct_WGPUShaderDefine ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:160:3
  struct_WGPUShaderModuleGLSLDescriptor* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:162:16
    stage*: WGPUShaderStage
    code*: WGPUStringView
    defineCount*: uint32
    defines*: ptr WGPUShaderDefine
  WGPUShaderModuleGLSLDescriptor* = struct_WGPUShaderModuleGLSLDescriptor ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:168:3
  struct_WGPUShaderModuleDescriptorSpirV* {.pure, inheritable, bycopy.} = object
    label*: WGPUStringView   ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:170:16
    sourceSize*: uint32
    source*: ptr uint32
  WGPUShaderModuleDescriptorSpirV* = struct_WGPUShaderModuleDescriptorSpirV ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:174:3
  struct_WGPURegistryReport* {.pure, inheritable, bycopy.} = object
    numAllocated*: csize_t   ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:176:16
    numKeptFromUser*: csize_t
    numReleasedFromUser*: csize_t
    elementSize*: csize_t
  WGPURegistryReport* = struct_WGPURegistryReport ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:181:3
  struct_WGPUHubReport* {.pure, inheritable, bycopy.} = object
    adapters*: WGPURegistryReport ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:183:16
    devices*: WGPURegistryReport
    queues*: WGPURegistryReport
    pipelineLayouts*: WGPURegistryReport
    shaderModules*: WGPURegistryReport
    bindGroupLayouts*: WGPURegistryReport
    bindGroups*: WGPURegistryReport
    commandBuffers*: WGPURegistryReport
    renderBundles*: WGPURegistryReport
    renderPipelines*: WGPURegistryReport
    computePipelines*: WGPURegistryReport
    pipelineCaches*: WGPURegistryReport
    querySets*: WGPURegistryReport
    buffers*: WGPURegistryReport
    textures*: WGPURegistryReport
    textureViews*: WGPURegistryReport
    samplers*: WGPURegistryReport
  WGPUHubReport* = struct_WGPUHubReport ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:201:3
  struct_WGPUGlobalReport* {.pure, inheritable, bycopy.} = object
    surfaces*: WGPURegistryReport ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:203:16
    hub*: WGPUHubReport
  WGPUGlobalReport* = struct_WGPUGlobalReport ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:206:3
  struct_WGPUInstanceEnumerateAdapterOptions* {.pure, inheritable, bycopy.} = object
    nextInChain*: ptr WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:208:16
    backends*: WGPUInstanceBackend
  WGPUInstanceEnumerateAdapterOptions* = struct_WGPUInstanceEnumerateAdapterOptions ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:211:3
  struct_WGPUBindGroupEntryExtras* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:213:16
    buffers*: ptr WGPUBuffer
    bufferCount*: csize_t
    samplers*: ptr WGPUSampler
    samplerCount*: csize_t
    textureViews*: ptr WGPUTextureView
    textureViewCount*: csize_t
  WGPUBindGroupEntryExtras* = struct_WGPUBindGroupEntryExtras ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:221:3
  struct_WGPUBindGroupLayoutEntryExtras* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:223:16
    count*: uint32
  WGPUBindGroupLayoutEntryExtras* = struct_WGPUBindGroupLayoutEntryExtras ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:226:3
  struct_WGPUQuerySetDescriptorExtras* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:228:16
    pipelineStatistics*: ptr WGPUPipelineStatisticName
    pipelineStatisticCount*: csize_t
  WGPUQuerySetDescriptorExtras* = struct_WGPUQuerySetDescriptorExtras ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:232:3
  struct_WGPUSurfaceConfigurationExtras* {.pure, inheritable, bycopy.} = object
    chain*: WGPUChainedStruct ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:234:16
    desiredMaximumFrameLatency*: uint32
  WGPUSurfaceConfigurationExtras* = struct_WGPUSurfaceConfigurationExtras ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:237:3
  WGPULogCallback* = proc (a0: WGPULogLevel; a1: WGPUStringView; a2: pointer): void {.
      cdecl.}                ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:239:16
  WGPUNativeTextureFormat* = enum_WGPUNativeTextureFormat ## Generated based on ./src/wgpu/C/wgpu-native/ffi/wgpu.h:251:3
when cast[cuint](4294967295'i64) is static:
  const
    UINT32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:118:10
else:
  let UINT32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:118:10
when UINT32_MAX is typedesc:
  type
    WGPU_COPY_STRIDE_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:79:9
else:
  when UINT32_MAX is static:
    const
      WGPU_COPY_STRIDE_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:79:9
  else:
    let WGPU_COPY_STRIDE_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:79:9
when UINT32_MAX is typedesc:
  type
    WGPU_DEPTH_SLICE_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:80:9
else:
  when UINT32_MAX is static:
    const
      WGPU_DEPTH_SLICE_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:80:9
  else:
    let WGPU_DEPTH_SLICE_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:80:9
when UINT32_MAX is typedesc:
  type
    WGPU_LIMIT_U32_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:81:9
else:
  when UINT32_MAX is static:
    const
      WGPU_LIMIT_U32_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:81:9
  else:
    let WGPU_LIMIT_U32_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:81:9
when UINT64_MAX is typedesc:
  type
    WGPU_LIMIT_U64_UNDEFINED* = UINT64_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:82:9
else:
  when UINT64_MAX is static:
    const
      WGPU_LIMIT_U64_UNDEFINED* = UINT64_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:82:9
  else:
    let WGPU_LIMIT_U64_UNDEFINED* = UINT64_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:82:9
when UINT32_MAX is typedesc:
  type
    WGPU_MIP_LEVEL_COUNT_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:83:9
else:
  when UINT32_MAX is static:
    const
      WGPU_MIP_LEVEL_COUNT_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:83:9
  else:
    let WGPU_MIP_LEVEL_COUNT_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:83:9
when UINT32_MAX is typedesc:
  type
    WGPU_QUERY_SET_INDEX_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:84:9
else:
  when UINT32_MAX is static:
    const
      WGPU_QUERY_SET_INDEX_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:84:9
  else:
    let WGPU_QUERY_SET_INDEX_UNDEFINED* = UINT32_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:84:9
when cast[culong](18446744073709551615'u) is static:
  const
    SIZE_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:216:11
else:
  let SIZE_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:216:11
when UINT64_MAX is typedesc:
  type
    WGPU_WHOLE_SIZE* = UINT64_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:86:9
else:
  when UINT64_MAX is static:
    const
      WGPU_WHOLE_SIZE* = UINT64_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:86:9
  else:
    let WGPU_WHOLE_SIZE* = UINT64_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:86:9
when SIZE_MAX is typedesc:
  type
    WGPU_STRLEN* = SIZE_MAX  ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:129:9
else:
  when SIZE_MAX is static:
    const
      WGPU_STRLEN* = SIZE_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:129:9
  else:
    let WGPU_STRLEN* = SIZE_MAX ## Generated based on ./src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:129:9
var WGPUBufferUsage_None*: WGPUBufferUsage
var WGPUBufferUsage_MapRead*: WGPUBufferUsage
var WGPUBufferUsage_MapWrite*: WGPUBufferUsage
var WGPUBufferUsage_CopySrc*: WGPUBufferUsage
var WGPUBufferUsage_CopyDst*: WGPUBufferUsage
var WGPUBufferUsage_Index*: WGPUBufferUsage
var WGPUBufferUsage_Vertex*: WGPUBufferUsage
var WGPUBufferUsage_Uniform*: WGPUBufferUsage
var WGPUBufferUsage_Storage*: WGPUBufferUsage
var WGPUBufferUsage_Indirect*: WGPUBufferUsage
var WGPUBufferUsage_QueryResolve*: WGPUBufferUsage
var WGPUColorWriteMask_None*: WGPUColorWriteMask
var WGPUColorWriteMask_Red*: WGPUColorWriteMask
var WGPUColorWriteMask_Green*: WGPUColorWriteMask
var WGPUColorWriteMask_Blue*: WGPUColorWriteMask
var WGPUColorWriteMask_Alpha*: WGPUColorWriteMask
var WGPUColorWriteMask_All*: WGPUColorWriteMask
var WGPUMapMode_None*: WGPUMapMode
var WGPUMapMode_Read*: WGPUMapMode
var WGPUMapMode_Write*: WGPUMapMode
var WGPUShaderStage_None*: WGPUShaderStage
var WGPUShaderStage_Vertex*: WGPUShaderStage
var WGPUShaderStage_Fragment*: WGPUShaderStage
var WGPUShaderStage_Compute*: WGPUShaderStage
var WGPUTextureUsage_None*: WGPUTextureUsage
var WGPUTextureUsage_CopySrc*: WGPUTextureUsage
var WGPUTextureUsage_CopyDst*: WGPUTextureUsage
var WGPUTextureUsage_TextureBinding*: WGPUTextureUsage
var WGPUTextureUsage_StorageBinding*: WGPUTextureUsage
var WGPUTextureUsage_RenderAttachment*: WGPUTextureUsage
proc wgpuCreateInstance*(descriptor: ptr WGPUInstanceDescriptor): WGPUInstance {.
    cdecl, importc: "wgpuCreateInstance".}
proc wgpuGetInstanceCapabilities*(capabilities: ptr WGPUInstanceCapabilities): WGPUStatus {.
    cdecl, importc: "wgpuGetInstanceCapabilities".}
proc wgpuGetProcAddress*(procName: WGPUStringView): WGPUProc {.cdecl,
    importc: "wgpuGetProcAddress".}
proc wgpuAdapterGetFeatures*(adapter: WGPUAdapter;
                             features: ptr WGPUSupportedFeatures): void {.cdecl,
    importc: "wgpuAdapterGetFeatures".}
proc wgpuAdapterGetInfo*(adapter: WGPUAdapter; info: ptr WGPUAdapterInfo): WGPUStatus {.
    cdecl, importc: "wgpuAdapterGetInfo".}
proc wgpuAdapterGetLimits*(adapter: WGPUAdapter; limits: ptr WGPULimits): WGPUStatus {.
    cdecl, importc: "wgpuAdapterGetLimits".}
proc wgpuAdapterHasFeature*(adapter: WGPUAdapter; feature: WGPUFeatureName): WGPUBool {.
    cdecl, importc: "wgpuAdapterHasFeature".}
proc wgpuAdapterRequestDevice*(adapter: WGPUAdapter;
                               descriptor: ptr WGPUDeviceDescriptor;
                               callbackInfo: WGPURequestDeviceCallbackInfo): WGPUFuture {.
    cdecl, importc: "wgpuAdapterRequestDevice".}
proc wgpuAdapterAddRef*(adapter: WGPUAdapter): void {.cdecl,
    importc: "wgpuAdapterAddRef".}
proc wgpuAdapterRelease*(adapter: WGPUAdapter): void {.cdecl,
    importc: "wgpuAdapterRelease".}
proc wgpuAdapterInfoFreeMembers*(adapterInfo: WGPUAdapterInfo): void {.cdecl,
    importc: "wgpuAdapterInfoFreeMembers".}
proc wgpuBindGroupSetLabel*(bindGroup: WGPUBindGroup; label: WGPUStringView): void {.
    cdecl, importc: "wgpuBindGroupSetLabel".}
proc wgpuBindGroupAddRef*(bindGroup: WGPUBindGroup): void {.cdecl,
    importc: "wgpuBindGroupAddRef".}
proc wgpuBindGroupRelease*(bindGroup: WGPUBindGroup): void {.cdecl,
    importc: "wgpuBindGroupRelease".}
proc wgpuBindGroupLayoutSetLabel*(bindGroupLayout: WGPUBindGroupLayout;
                                  label: WGPUStringView): void {.cdecl,
    importc: "wgpuBindGroupLayoutSetLabel".}
proc wgpuBindGroupLayoutAddRef*(bindGroupLayout: WGPUBindGroupLayout): void {.
    cdecl, importc: "wgpuBindGroupLayoutAddRef".}
proc wgpuBindGroupLayoutRelease*(bindGroupLayout: WGPUBindGroupLayout): void {.
    cdecl, importc: "wgpuBindGroupLayoutRelease".}
proc wgpuBufferDestroy*(buffer: WGPUBuffer): void {.cdecl,
    importc: "wgpuBufferDestroy".}
proc wgpuBufferGetConstMappedRange*(buffer: WGPUBuffer; offset: csize_t;
                                    size: csize_t): pointer {.cdecl,
    importc: "wgpuBufferGetConstMappedRange".}
proc wgpuBufferGetMapState*(buffer: WGPUBuffer): WGPUBufferMapState {.cdecl,
    importc: "wgpuBufferGetMapState".}
proc wgpuBufferGetMappedRange*(buffer: WGPUBuffer; offset: csize_t;
                               size: csize_t): pointer {.cdecl,
    importc: "wgpuBufferGetMappedRange".}
proc wgpuBufferGetSize*(buffer: WGPUBuffer): uint64 {.cdecl,
    importc: "wgpuBufferGetSize".}
proc wgpuBufferGetUsage*(buffer: WGPUBuffer): WGPUBufferUsage {.cdecl,
    importc: "wgpuBufferGetUsage".}
proc wgpuBufferMapAsync*(buffer: WGPUBuffer; mode: WGPUMapMode; offset: csize_t;
                         size: csize_t; callbackInfo: WGPUBufferMapCallbackInfo): WGPUFuture {.
    cdecl, importc: "wgpuBufferMapAsync".}
proc wgpuBufferSetLabel*(buffer: WGPUBuffer; label: WGPUStringView): void {.
    cdecl, importc: "wgpuBufferSetLabel".}
proc wgpuBufferUnmap*(buffer: WGPUBuffer): void {.cdecl,
    importc: "wgpuBufferUnmap".}
proc wgpuBufferAddRef*(buffer: WGPUBuffer): void {.cdecl,
    importc: "wgpuBufferAddRef".}
proc wgpuBufferRelease*(buffer: WGPUBuffer): void {.cdecl,
    importc: "wgpuBufferRelease".}
proc wgpuCommandBufferSetLabel*(commandBuffer: WGPUCommandBuffer;
                                label: WGPUStringView): void {.cdecl,
    importc: "wgpuCommandBufferSetLabel".}
proc wgpuCommandBufferAddRef*(commandBuffer: WGPUCommandBuffer): void {.cdecl,
    importc: "wgpuCommandBufferAddRef".}
proc wgpuCommandBufferRelease*(commandBuffer: WGPUCommandBuffer): void {.cdecl,
    importc: "wgpuCommandBufferRelease".}
proc wgpuCommandEncoderBeginComputePass*(commandEncoder: WGPUCommandEncoder;
    descriptor: ptr WGPUComputePassDescriptor): WGPUComputePassEncoder {.cdecl,
    importc: "wgpuCommandEncoderBeginComputePass".}
proc wgpuCommandEncoderBeginRenderPass*(commandEncoder: WGPUCommandEncoder;
    descriptor: ptr WGPURenderPassDescriptor): WGPURenderPassEncoder {.cdecl,
    importc: "wgpuCommandEncoderBeginRenderPass".}
proc wgpuCommandEncoderClearBuffer*(commandEncoder: WGPUCommandEncoder;
                                    buffer: WGPUBuffer; offset: uint64;
                                    size: uint64): void {.cdecl,
    importc: "wgpuCommandEncoderClearBuffer".}
proc wgpuCommandEncoderCopyBufferToBuffer*(commandEncoder: WGPUCommandEncoder;
    source: WGPUBuffer; sourceOffset: uint64; destination: WGPUBuffer;
    destinationOffset: uint64; size: uint64): void {.cdecl,
    importc: "wgpuCommandEncoderCopyBufferToBuffer".}
proc wgpuCommandEncoderCopyBufferToTexture*(commandEncoder: WGPUCommandEncoder;
    source: ptr WGPUTexelCopyBufferInfo;
    destination: ptr WGPUTexelCopyTextureInfo; copySize: ptr WGPUExtent3D): void {.
    cdecl, importc: "wgpuCommandEncoderCopyBufferToTexture".}
proc wgpuCommandEncoderCopyTextureToBuffer*(commandEncoder: WGPUCommandEncoder;
    source: ptr WGPUTexelCopyTextureInfo;
    destination: ptr WGPUTexelCopyBufferInfo; copySize: ptr WGPUExtent3D): void {.
    cdecl, importc: "wgpuCommandEncoderCopyTextureToBuffer".}
proc wgpuCommandEncoderCopyTextureToTexture*(commandEncoder: WGPUCommandEncoder;
    source: ptr WGPUTexelCopyTextureInfo;
    destination: ptr WGPUTexelCopyTextureInfo; copySize: ptr WGPUExtent3D): void {.
    cdecl, importc: "wgpuCommandEncoderCopyTextureToTexture".}
proc wgpuCommandEncoderFinish*(commandEncoder: WGPUCommandEncoder;
                               descriptor: ptr WGPUCommandBufferDescriptor): WGPUCommandBuffer {.
    cdecl, importc: "wgpuCommandEncoderFinish".}
proc wgpuCommandEncoderInsertDebugMarker*(commandEncoder: WGPUCommandEncoder;
    markerLabel: WGPUStringView): void {.cdecl,
    importc: "wgpuCommandEncoderInsertDebugMarker".}
proc wgpuCommandEncoderPopDebugGroup*(commandEncoder: WGPUCommandEncoder): void {.
    cdecl, importc: "wgpuCommandEncoderPopDebugGroup".}
proc wgpuCommandEncoderPushDebugGroup*(commandEncoder: WGPUCommandEncoder;
                                       groupLabel: WGPUStringView): void {.
    cdecl, importc: "wgpuCommandEncoderPushDebugGroup".}
proc wgpuCommandEncoderResolveQuerySet*(commandEncoder: WGPUCommandEncoder;
                                        querySet: WGPUQuerySet;
                                        firstQuery: uint32; queryCount: uint32;
                                        destination: WGPUBuffer;
                                        destinationOffset: uint64): void {.
    cdecl, importc: "wgpuCommandEncoderResolveQuerySet".}
proc wgpuCommandEncoderSetLabel*(commandEncoder: WGPUCommandEncoder;
                                 label: WGPUStringView): void {.cdecl,
    importc: "wgpuCommandEncoderSetLabel".}
proc wgpuCommandEncoderWriteTimestamp*(commandEncoder: WGPUCommandEncoder;
                                       querySet: WGPUQuerySet;
                                       queryIndex: uint32): void {.cdecl,
    importc: "wgpuCommandEncoderWriteTimestamp".}
proc wgpuCommandEncoderAddRef*(commandEncoder: WGPUCommandEncoder): void {.
    cdecl, importc: "wgpuCommandEncoderAddRef".}
proc wgpuCommandEncoderRelease*(commandEncoder: WGPUCommandEncoder): void {.
    cdecl, importc: "wgpuCommandEncoderRelease".}
proc wgpuComputePassEncoderDispatchWorkgroups*(
    computePassEncoder: WGPUComputePassEncoder; workgroupCountX: uint32;
    workgroupCountY: uint32; workgroupCountZ: uint32): void {.cdecl,
    importc: "wgpuComputePassEncoderDispatchWorkgroups".}
proc wgpuComputePassEncoderDispatchWorkgroupsIndirect*(
    computePassEncoder: WGPUComputePassEncoder; indirectBuffer: WGPUBuffer;
    indirectOffset: uint64): void {.cdecl, importc: "wgpuComputePassEncoderDispatchWorkgroupsIndirect".}
proc wgpuComputePassEncoderEnd*(computePassEncoder: WGPUComputePassEncoder): void {.
    cdecl, importc: "wgpuComputePassEncoderEnd".}
proc wgpuComputePassEncoderInsertDebugMarker*(
    computePassEncoder: WGPUComputePassEncoder; markerLabel: WGPUStringView): void {.
    cdecl, importc: "wgpuComputePassEncoderInsertDebugMarker".}
proc wgpuComputePassEncoderPopDebugGroup*(
    computePassEncoder: WGPUComputePassEncoder): void {.cdecl,
    importc: "wgpuComputePassEncoderPopDebugGroup".}
proc wgpuComputePassEncoderPushDebugGroup*(
    computePassEncoder: WGPUComputePassEncoder; groupLabel: WGPUStringView): void {.
    cdecl, importc: "wgpuComputePassEncoderPushDebugGroup".}
proc wgpuComputePassEncoderSetBindGroup*(
    computePassEncoder: WGPUComputePassEncoder; groupIndex: uint32;
    group: WGPUBindGroup; dynamicOffsetCount: csize_t;
    dynamicOffsets: ptr uint32): void {.cdecl, importc: "wgpuComputePassEncoderSetBindGroup".}
proc wgpuComputePassEncoderSetLabel*(computePassEncoder: WGPUComputePassEncoder;
                                     label: WGPUStringView): void {.cdecl,
    importc: "wgpuComputePassEncoderSetLabel".}
proc wgpuComputePassEncoderSetPipeline*(computePassEncoder: WGPUComputePassEncoder;
                                        pipeline: WGPUComputePipeline): void {.
    cdecl, importc: "wgpuComputePassEncoderSetPipeline".}
proc wgpuComputePassEncoderAddRef*(computePassEncoder: WGPUComputePassEncoder): void {.
    cdecl, importc: "wgpuComputePassEncoderAddRef".}
proc wgpuComputePassEncoderRelease*(computePassEncoder: WGPUComputePassEncoder): void {.
    cdecl, importc: "wgpuComputePassEncoderRelease".}
proc wgpuComputePipelineGetBindGroupLayout*(
    computePipeline: WGPUComputePipeline; groupIndex: uint32): WGPUBindGroupLayout {.
    cdecl, importc: "wgpuComputePipelineGetBindGroupLayout".}
proc wgpuComputePipelineSetLabel*(computePipeline: WGPUComputePipeline;
                                  label: WGPUStringView): void {.cdecl,
    importc: "wgpuComputePipelineSetLabel".}
proc wgpuComputePipelineAddRef*(computePipeline: WGPUComputePipeline): void {.
    cdecl, importc: "wgpuComputePipelineAddRef".}
proc wgpuComputePipelineRelease*(computePipeline: WGPUComputePipeline): void {.
    cdecl, importc: "wgpuComputePipelineRelease".}
proc wgpuDeviceCreateBindGroup*(device: WGPUDevice;
                                descriptor: ptr WGPUBindGroupDescriptor): WGPUBindGroup {.
    cdecl, importc: "wgpuDeviceCreateBindGroup".}
proc wgpuDeviceCreateBindGroupLayout*(device: WGPUDevice; descriptor: ptr WGPUBindGroupLayoutDescriptor): WGPUBindGroupLayout {.
    cdecl, importc: "wgpuDeviceCreateBindGroupLayout".}
proc wgpuDeviceCreateBuffer*(device: WGPUDevice;
                             descriptor: ptr WGPUBufferDescriptor): WGPUBuffer {.
    cdecl, importc: "wgpuDeviceCreateBuffer".}
proc wgpuDeviceCreateCommandEncoder*(device: WGPUDevice; descriptor: ptr WGPUCommandEncoderDescriptor): WGPUCommandEncoder {.
    cdecl, importc: "wgpuDeviceCreateCommandEncoder".}
proc wgpuDeviceCreateComputePipeline*(device: WGPUDevice; descriptor: ptr WGPUComputePipelineDescriptor): WGPUComputePipeline {.
    cdecl, importc: "wgpuDeviceCreateComputePipeline".}
proc wgpuDeviceCreateComputePipelineAsync*(device: WGPUDevice;
    descriptor: ptr WGPUComputePipelineDescriptor;
    callbackInfo: WGPUCreateComputePipelineAsyncCallbackInfo): WGPUFuture {.
    cdecl, importc: "wgpuDeviceCreateComputePipelineAsync".}
proc wgpuDeviceCreatePipelineLayout*(device: WGPUDevice; descriptor: ptr WGPUPipelineLayoutDescriptor): WGPUPipelineLayout {.
    cdecl, importc: "wgpuDeviceCreatePipelineLayout".}
proc wgpuDeviceCreateQuerySet*(device: WGPUDevice;
                               descriptor: ptr WGPUQuerySetDescriptor): WGPUQuerySet {.
    cdecl, importc: "wgpuDeviceCreateQuerySet".}
proc wgpuDeviceCreateRenderBundleEncoder*(device: WGPUDevice;
    descriptor: ptr WGPURenderBundleEncoderDescriptor): WGPURenderBundleEncoder {.
    cdecl, importc: "wgpuDeviceCreateRenderBundleEncoder".}
proc wgpuDeviceCreateRenderPipeline*(device: WGPUDevice; descriptor: ptr WGPURenderPipelineDescriptor): WGPURenderPipeline {.
    cdecl, importc: "wgpuDeviceCreateRenderPipeline".}
proc wgpuDeviceCreateRenderPipelineAsync*(device: WGPUDevice;
    descriptor: ptr WGPURenderPipelineDescriptor;
    callbackInfo: WGPUCreateRenderPipelineAsyncCallbackInfo): WGPUFuture {.
    cdecl, importc: "wgpuDeviceCreateRenderPipelineAsync".}
proc wgpuDeviceCreateSampler*(device: WGPUDevice;
                              descriptor: ptr WGPUSamplerDescriptor): WGPUSampler {.
    cdecl, importc: "wgpuDeviceCreateSampler".}
proc wgpuDeviceCreateShaderModule*(device: WGPUDevice;
                                   descriptor: ptr WGPUShaderModuleDescriptor): WGPUShaderModule {.
    cdecl, importc: "wgpuDeviceCreateShaderModule".}
proc wgpuDeviceCreateTexture*(device: WGPUDevice;
                              descriptor: ptr WGPUTextureDescriptor): WGPUTexture {.
    cdecl, importc: "wgpuDeviceCreateTexture".}
proc wgpuDeviceDestroy*(device: WGPUDevice): void {.cdecl,
    importc: "wgpuDeviceDestroy".}
proc wgpuDeviceGetAdapterInfo*(device: WGPUDevice): WGPUAdapterInfo {.cdecl,
    importc: "wgpuDeviceGetAdapterInfo".}
proc wgpuDeviceGetFeatures*(device: WGPUDevice;
                            features: ptr WGPUSupportedFeatures): void {.cdecl,
    importc: "wgpuDeviceGetFeatures".}
proc wgpuDeviceGetLimits*(device: WGPUDevice; limits: ptr WGPULimits): WGPUStatus {.
    cdecl, importc: "wgpuDeviceGetLimits".}
proc wgpuDeviceGetLostFuture*(device: WGPUDevice): WGPUFuture {.cdecl,
    importc: "wgpuDeviceGetLostFuture".}
proc wgpuDeviceGetQueue*(device: WGPUDevice): WGPUQueue {.cdecl,
    importc: "wgpuDeviceGetQueue".}
proc wgpuDeviceHasFeature*(device: WGPUDevice; feature: WGPUFeatureName): WGPUBool {.
    cdecl, importc: "wgpuDeviceHasFeature".}
proc wgpuDevicePopErrorScope*(device: WGPUDevice;
                              callbackInfo: WGPUPopErrorScopeCallbackInfo): WGPUFuture {.
    cdecl, importc: "wgpuDevicePopErrorScope".}
proc wgpuDevicePushErrorScope*(device: WGPUDevice; filter: WGPUErrorFilter): void {.
    cdecl, importc: "wgpuDevicePushErrorScope".}
proc wgpuDeviceSetLabel*(device: WGPUDevice; label: WGPUStringView): void {.
    cdecl, importc: "wgpuDeviceSetLabel".}
proc wgpuDeviceAddRef*(device: WGPUDevice): void {.cdecl,
    importc: "wgpuDeviceAddRef".}
proc wgpuDeviceRelease*(device: WGPUDevice): void {.cdecl,
    importc: "wgpuDeviceRelease".}
proc wgpuInstanceCreateSurface*(instance: WGPUInstance;
                                descriptor: ptr WGPUSurfaceDescriptor): WGPUSurface {.
    cdecl, importc: "wgpuInstanceCreateSurface".}
proc wgpuInstanceGetWGSLLanguageFeatures*(instance: WGPUInstance;
    features: ptr WGPUSupportedWGSLLanguageFeatures): WGPUStatus {.cdecl,
    importc: "wgpuInstanceGetWGSLLanguageFeatures".}
proc wgpuInstanceHasWGSLLanguageFeature*(instance: WGPUInstance;
    feature: WGPUWGSLLanguageFeatureName): WGPUBool {.cdecl,
    importc: "wgpuInstanceHasWGSLLanguageFeature".}
proc wgpuInstanceProcessEvents*(instance: WGPUInstance): void {.cdecl,
    importc: "wgpuInstanceProcessEvents".}
proc wgpuInstanceRequestAdapter*(instance: WGPUInstance;
                                 options: ptr WGPURequestAdapterOptions;
                                 callbackInfo: WGPURequestAdapterCallbackInfo): WGPUFuture {.
    cdecl, importc: "wgpuInstanceRequestAdapter".}
proc wgpuInstanceWaitAny*(instance: WGPUInstance; futureCount: csize_t;
                          futures: ptr WGPUFutureWaitInfo; timeoutNS: uint64): WGPUWaitStatus {.
    cdecl, importc: "wgpuInstanceWaitAny".}
proc wgpuInstanceAddRef*(instance: WGPUInstance): void {.cdecl,
    importc: "wgpuInstanceAddRef".}
proc wgpuInstanceRelease*(instance: WGPUInstance): void {.cdecl,
    importc: "wgpuInstanceRelease".}
proc wgpuPipelineLayoutSetLabel*(pipelineLayout: WGPUPipelineLayout;
                                 label: WGPUStringView): void {.cdecl,
    importc: "wgpuPipelineLayoutSetLabel".}
proc wgpuPipelineLayoutAddRef*(pipelineLayout: WGPUPipelineLayout): void {.
    cdecl, importc: "wgpuPipelineLayoutAddRef".}
proc wgpuPipelineLayoutRelease*(pipelineLayout: WGPUPipelineLayout): void {.
    cdecl, importc: "wgpuPipelineLayoutRelease".}
proc wgpuQuerySetDestroy*(querySet: WGPUQuerySet): void {.cdecl,
    importc: "wgpuQuerySetDestroy".}
proc wgpuQuerySetGetCount*(querySet: WGPUQuerySet): uint32 {.cdecl,
    importc: "wgpuQuerySetGetCount".}
proc wgpuQuerySetGetType*(querySet: WGPUQuerySet): WGPUQueryType {.cdecl,
    importc: "wgpuQuerySetGetType".}
proc wgpuQuerySetSetLabel*(querySet: WGPUQuerySet; label: WGPUStringView): void {.
    cdecl, importc: "wgpuQuerySetSetLabel".}
proc wgpuQuerySetAddRef*(querySet: WGPUQuerySet): void {.cdecl,
    importc: "wgpuQuerySetAddRef".}
proc wgpuQuerySetRelease*(querySet: WGPUQuerySet): void {.cdecl,
    importc: "wgpuQuerySetRelease".}
proc wgpuQueueOnSubmittedWorkDone*(queue: WGPUQueue;
                                   callbackInfo: WGPUQueueWorkDoneCallbackInfo): WGPUFuture {.
    cdecl, importc: "wgpuQueueOnSubmittedWorkDone".}
proc wgpuQueueSetLabel*(queue: WGPUQueue; label: WGPUStringView): void {.cdecl,
    importc: "wgpuQueueSetLabel".}
proc wgpuQueueSubmit*(queue: WGPUQueue; commandCount: csize_t;
                      commands: ptr WGPUCommandBuffer): void {.cdecl,
    importc: "wgpuQueueSubmit".}
proc wgpuQueueWriteBuffer*(queue: WGPUQueue; buffer: WGPUBuffer;
                           bufferOffset: uint64; data: pointer; size: csize_t): void {.
    cdecl, importc: "wgpuQueueWriteBuffer".}
proc wgpuQueueWriteTexture*(queue: WGPUQueue;
                            destination: ptr WGPUTexelCopyTextureInfo;
                            data: pointer; dataSize: csize_t;
                            dataLayout: ptr WGPUTexelCopyBufferLayout;
                            writeSize: ptr WGPUExtent3D): void {.cdecl,
    importc: "wgpuQueueWriteTexture".}
proc wgpuQueueAddRef*(queue: WGPUQueue): void {.cdecl,
    importc: "wgpuQueueAddRef".}
proc wgpuQueueRelease*(queue: WGPUQueue): void {.cdecl,
    importc: "wgpuQueueRelease".}
proc wgpuRenderBundleSetLabel*(renderBundle: WGPURenderBundle;
                               label: WGPUStringView): void {.cdecl,
    importc: "wgpuRenderBundleSetLabel".}
proc wgpuRenderBundleAddRef*(renderBundle: WGPURenderBundle): void {.cdecl,
    importc: "wgpuRenderBundleAddRef".}
proc wgpuRenderBundleRelease*(renderBundle: WGPURenderBundle): void {.cdecl,
    importc: "wgpuRenderBundleRelease".}
proc wgpuRenderBundleEncoderDraw*(renderBundleEncoder: WGPURenderBundleEncoder;
                                  vertexCount: uint32; instanceCount: uint32;
                                  firstVertex: uint32; firstInstance: uint32): void {.
    cdecl, importc: "wgpuRenderBundleEncoderDraw".}
proc wgpuRenderBundleEncoderDrawIndexed*(
    renderBundleEncoder: WGPURenderBundleEncoder; indexCount: uint32;
    instanceCount: uint32; firstIndex: uint32; baseVertex: int32;
    firstInstance: uint32): void {.cdecl, importc: "wgpuRenderBundleEncoderDrawIndexed".}
proc wgpuRenderBundleEncoderDrawIndexedIndirect*(
    renderBundleEncoder: WGPURenderBundleEncoder; indirectBuffer: WGPUBuffer;
    indirectOffset: uint64): void {.cdecl, importc: "wgpuRenderBundleEncoderDrawIndexedIndirect".}
proc wgpuRenderBundleEncoderDrawIndirect*(
    renderBundleEncoder: WGPURenderBundleEncoder; indirectBuffer: WGPUBuffer;
    indirectOffset: uint64): void {.cdecl, importc: "wgpuRenderBundleEncoderDrawIndirect".}
proc wgpuRenderBundleEncoderFinish*(renderBundleEncoder: WGPURenderBundleEncoder;
                                    descriptor: ptr WGPURenderBundleDescriptor): WGPURenderBundle {.
    cdecl, importc: "wgpuRenderBundleEncoderFinish".}
proc wgpuRenderBundleEncoderInsertDebugMarker*(
    renderBundleEncoder: WGPURenderBundleEncoder; markerLabel: WGPUStringView): void {.
    cdecl, importc: "wgpuRenderBundleEncoderInsertDebugMarker".}
proc wgpuRenderBundleEncoderPopDebugGroup*(
    renderBundleEncoder: WGPURenderBundleEncoder): void {.cdecl,
    importc: "wgpuRenderBundleEncoderPopDebugGroup".}
proc wgpuRenderBundleEncoderPushDebugGroup*(
    renderBundleEncoder: WGPURenderBundleEncoder; groupLabel: WGPUStringView): void {.
    cdecl, importc: "wgpuRenderBundleEncoderPushDebugGroup".}
proc wgpuRenderBundleEncoderSetBindGroup*(
    renderBundleEncoder: WGPURenderBundleEncoder; groupIndex: uint32;
    group: WGPUBindGroup; dynamicOffsetCount: csize_t;
    dynamicOffsets: ptr uint32): void {.cdecl, importc: "wgpuRenderBundleEncoderSetBindGroup".}
proc wgpuRenderBundleEncoderSetIndexBuffer*(
    renderBundleEncoder: WGPURenderBundleEncoder; buffer: WGPUBuffer;
    format: WGPUIndexFormat; offset: uint64; size: uint64): void {.cdecl,
    importc: "wgpuRenderBundleEncoderSetIndexBuffer".}
proc wgpuRenderBundleEncoderSetLabel*(renderBundleEncoder: WGPURenderBundleEncoder;
                                      label: WGPUStringView): void {.cdecl,
    importc: "wgpuRenderBundleEncoderSetLabel".}
proc wgpuRenderBundleEncoderSetPipeline*(
    renderBundleEncoder: WGPURenderBundleEncoder; pipeline: WGPURenderPipeline): void {.
    cdecl, importc: "wgpuRenderBundleEncoderSetPipeline".}
proc wgpuRenderBundleEncoderSetVertexBuffer*(
    renderBundleEncoder: WGPURenderBundleEncoder; slot: uint32;
    buffer: WGPUBuffer; offset: uint64; size: uint64): void {.cdecl,
    importc: "wgpuRenderBundleEncoderSetVertexBuffer".}
proc wgpuRenderBundleEncoderAddRef*(renderBundleEncoder: WGPURenderBundleEncoder): void {.
    cdecl, importc: "wgpuRenderBundleEncoderAddRef".}
proc wgpuRenderBundleEncoderRelease*(renderBundleEncoder: WGPURenderBundleEncoder): void {.
    cdecl, importc: "wgpuRenderBundleEncoderRelease".}
proc wgpuRenderPassEncoderBeginOcclusionQuery*(
    renderPassEncoder: WGPURenderPassEncoder; queryIndex: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderBeginOcclusionQuery".}
proc wgpuRenderPassEncoderDraw*(renderPassEncoder: WGPURenderPassEncoder;
                                vertexCount: uint32; instanceCount: uint32;
                                firstVertex: uint32; firstInstance: uint32): void {.
    cdecl, importc: "wgpuRenderPassEncoderDraw".}
proc wgpuRenderPassEncoderDrawIndexed*(renderPassEncoder: WGPURenderPassEncoder;
                                       indexCount: uint32;
                                       instanceCount: uint32;
                                       firstIndex: uint32; baseVertex: int32;
                                       firstInstance: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderDrawIndexed".}
proc wgpuRenderPassEncoderDrawIndexedIndirect*(
    renderPassEncoder: WGPURenderPassEncoder; indirectBuffer: WGPUBuffer;
    indirectOffset: uint64): void {.cdecl, importc: "wgpuRenderPassEncoderDrawIndexedIndirect".}
proc wgpuRenderPassEncoderDrawIndirect*(renderPassEncoder: WGPURenderPassEncoder;
                                        indirectBuffer: WGPUBuffer;
                                        indirectOffset: uint64): void {.cdecl,
    importc: "wgpuRenderPassEncoderDrawIndirect".}
proc wgpuRenderPassEncoderEnd*(renderPassEncoder: WGPURenderPassEncoder): void {.
    cdecl, importc: "wgpuRenderPassEncoderEnd".}
proc wgpuRenderPassEncoderEndOcclusionQuery*(
    renderPassEncoder: WGPURenderPassEncoder): void {.cdecl,
    importc: "wgpuRenderPassEncoderEndOcclusionQuery".}
proc wgpuRenderPassEncoderExecuteBundles*(
    renderPassEncoder: WGPURenderPassEncoder; bundleCount: csize_t;
    bundles: ptr WGPURenderBundle): void {.cdecl,
    importc: "wgpuRenderPassEncoderExecuteBundles".}
proc wgpuRenderPassEncoderInsertDebugMarker*(
    renderPassEncoder: WGPURenderPassEncoder; markerLabel: WGPUStringView): void {.
    cdecl, importc: "wgpuRenderPassEncoderInsertDebugMarker".}
proc wgpuRenderPassEncoderPopDebugGroup*(
    renderPassEncoder: WGPURenderPassEncoder): void {.cdecl,
    importc: "wgpuRenderPassEncoderPopDebugGroup".}
proc wgpuRenderPassEncoderPushDebugGroup*(
    renderPassEncoder: WGPURenderPassEncoder; groupLabel: WGPUStringView): void {.
    cdecl, importc: "wgpuRenderPassEncoderPushDebugGroup".}
proc wgpuRenderPassEncoderSetBindGroup*(renderPassEncoder: WGPURenderPassEncoder;
                                        groupIndex: uint32;
                                        group: WGPUBindGroup;
                                        dynamicOffsetCount: csize_t;
                                        dynamicOffsets: ptr uint32): void {.
    cdecl, importc: "wgpuRenderPassEncoderSetBindGroup".}
proc wgpuRenderPassEncoderSetBlendConstant*(
    renderPassEncoder: WGPURenderPassEncoder; color: ptr WGPUColor): void {.
    cdecl, importc: "wgpuRenderPassEncoderSetBlendConstant".}
proc wgpuRenderPassEncoderSetIndexBuffer*(
    renderPassEncoder: WGPURenderPassEncoder; buffer: WGPUBuffer;
    format: WGPUIndexFormat; offset: uint64; size: uint64): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetIndexBuffer".}
proc wgpuRenderPassEncoderSetLabel*(renderPassEncoder: WGPURenderPassEncoder;
                                    label: WGPUStringView): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetLabel".}
proc wgpuRenderPassEncoderSetPipeline*(renderPassEncoder: WGPURenderPassEncoder;
                                       pipeline: WGPURenderPipeline): void {.
    cdecl, importc: "wgpuRenderPassEncoderSetPipeline".}
proc wgpuRenderPassEncoderSetScissorRect*(
    renderPassEncoder: WGPURenderPassEncoder; x: uint32; y: uint32;
    width: uint32; height: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetScissorRect".}
proc wgpuRenderPassEncoderSetStencilReference*(
    renderPassEncoder: WGPURenderPassEncoder; reference: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetStencilReference".}
proc wgpuRenderPassEncoderSetVertexBuffer*(
    renderPassEncoder: WGPURenderPassEncoder; slot: uint32; buffer: WGPUBuffer;
    offset: uint64; size: uint64): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetVertexBuffer".}
proc wgpuRenderPassEncoderSetViewport*(renderPassEncoder: WGPURenderPassEncoder;
                                       x: cfloat; y: cfloat; width: cfloat;
                                       height: cfloat; minDepth: cfloat;
                                       maxDepth: cfloat): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetViewport".}
proc wgpuRenderPassEncoderAddRef*(renderPassEncoder: WGPURenderPassEncoder): void {.
    cdecl, importc: "wgpuRenderPassEncoderAddRef".}
proc wgpuRenderPassEncoderRelease*(renderPassEncoder: WGPURenderPassEncoder): void {.
    cdecl, importc: "wgpuRenderPassEncoderRelease".}
proc wgpuRenderPipelineGetBindGroupLayout*(renderPipeline: WGPURenderPipeline;
    groupIndex: uint32): WGPUBindGroupLayout {.cdecl,
    importc: "wgpuRenderPipelineGetBindGroupLayout".}
proc wgpuRenderPipelineSetLabel*(renderPipeline: WGPURenderPipeline;
                                 label: WGPUStringView): void {.cdecl,
    importc: "wgpuRenderPipelineSetLabel".}
proc wgpuRenderPipelineAddRef*(renderPipeline: WGPURenderPipeline): void {.
    cdecl, importc: "wgpuRenderPipelineAddRef".}
proc wgpuRenderPipelineRelease*(renderPipeline: WGPURenderPipeline): void {.
    cdecl, importc: "wgpuRenderPipelineRelease".}
proc wgpuSamplerSetLabel*(sampler: WGPUSampler; label: WGPUStringView): void {.
    cdecl, importc: "wgpuSamplerSetLabel".}
proc wgpuSamplerAddRef*(sampler: WGPUSampler): void {.cdecl,
    importc: "wgpuSamplerAddRef".}
proc wgpuSamplerRelease*(sampler: WGPUSampler): void {.cdecl,
    importc: "wgpuSamplerRelease".}
proc wgpuShaderModuleGetCompilationInfo*(shaderModule: WGPUShaderModule;
    callbackInfo: WGPUCompilationInfoCallbackInfo): WGPUFuture {.cdecl,
    importc: "wgpuShaderModuleGetCompilationInfo".}
proc wgpuShaderModuleSetLabel*(shaderModule: WGPUShaderModule;
                               label: WGPUStringView): void {.cdecl,
    importc: "wgpuShaderModuleSetLabel".}
proc wgpuShaderModuleAddRef*(shaderModule: WGPUShaderModule): void {.cdecl,
    importc: "wgpuShaderModuleAddRef".}
proc wgpuShaderModuleRelease*(shaderModule: WGPUShaderModule): void {.cdecl,
    importc: "wgpuShaderModuleRelease".}
proc wgpuSupportedFeaturesFreeMembers*(supportedFeatures: WGPUSupportedFeatures): void {.
    cdecl, importc: "wgpuSupportedFeaturesFreeMembers".}
proc wgpuSupportedWGSLLanguageFeaturesFreeMembers*(
    supportedWGSLLanguageFeatures: WGPUSupportedWGSLLanguageFeatures): void {.
    cdecl, importc: "wgpuSupportedWGSLLanguageFeaturesFreeMembers".}
proc wgpuSurfaceConfigure*(surface: WGPUSurface;
                           config: ptr WGPUSurfaceConfiguration): void {.cdecl,
    importc: "wgpuSurfaceConfigure".}
proc wgpuSurfaceGetCapabilities*(surface: WGPUSurface; adapter: WGPUAdapter;
                                 capabilities: ptr WGPUSurfaceCapabilities): WGPUStatus {.
    cdecl, importc: "wgpuSurfaceGetCapabilities".}
proc wgpuSurfaceGetCurrentTexture*(surface: WGPUSurface;
                                   surfaceTexture: ptr WGPUSurfaceTexture): void {.
    cdecl, importc: "wgpuSurfaceGetCurrentTexture".}
proc wgpuSurfacePresent*(surface: WGPUSurface): WGPUStatus {.cdecl,
    importc: "wgpuSurfacePresent".}
proc wgpuSurfaceSetLabel*(surface: WGPUSurface; label: WGPUStringView): void {.
    cdecl, importc: "wgpuSurfaceSetLabel".}
proc wgpuSurfaceUnconfigure*(surface: WGPUSurface): void {.cdecl,
    importc: "wgpuSurfaceUnconfigure".}
proc wgpuSurfaceAddRef*(surface: WGPUSurface): void {.cdecl,
    importc: "wgpuSurfaceAddRef".}
proc wgpuSurfaceRelease*(surface: WGPUSurface): void {.cdecl,
    importc: "wgpuSurfaceRelease".}
proc wgpuSurfaceCapabilitiesFreeMembers*(
    surfaceCapabilities: WGPUSurfaceCapabilities): void {.cdecl,
    importc: "wgpuSurfaceCapabilitiesFreeMembers".}
proc wgpuTextureCreateView*(texture: WGPUTexture;
                            descriptor: ptr WGPUTextureViewDescriptor): WGPUTextureView {.
    cdecl, importc: "wgpuTextureCreateView".}
proc wgpuTextureDestroy*(texture: WGPUTexture): void {.cdecl,
    importc: "wgpuTextureDestroy".}
proc wgpuTextureGetDepthOrArrayLayers*(texture: WGPUTexture): uint32 {.cdecl,
    importc: "wgpuTextureGetDepthOrArrayLayers".}
proc wgpuTextureGetDimension*(texture: WGPUTexture): WGPUTextureDimension {.
    cdecl, importc: "wgpuTextureGetDimension".}
proc wgpuTextureGetFormat*(texture: WGPUTexture): WGPUTextureFormat {.cdecl,
    importc: "wgpuTextureGetFormat".}
proc wgpuTextureGetHeight*(texture: WGPUTexture): uint32 {.cdecl,
    importc: "wgpuTextureGetHeight".}
proc wgpuTextureGetMipLevelCount*(texture: WGPUTexture): uint32 {.cdecl,
    importc: "wgpuTextureGetMipLevelCount".}
proc wgpuTextureGetSampleCount*(texture: WGPUTexture): uint32 {.cdecl,
    importc: "wgpuTextureGetSampleCount".}
proc wgpuTextureGetUsage*(texture: WGPUTexture): WGPUTextureUsage {.cdecl,
    importc: "wgpuTextureGetUsage".}
proc wgpuTextureGetWidth*(texture: WGPUTexture): uint32 {.cdecl,
    importc: "wgpuTextureGetWidth".}
proc wgpuTextureSetLabel*(texture: WGPUTexture; label: WGPUStringView): void {.
    cdecl, importc: "wgpuTextureSetLabel".}
proc wgpuTextureAddRef*(texture: WGPUTexture): void {.cdecl,
    importc: "wgpuTextureAddRef".}
proc wgpuTextureRelease*(texture: WGPUTexture): void {.cdecl,
    importc: "wgpuTextureRelease".}
proc wgpuTextureViewSetLabel*(textureView: WGPUTextureView;
                              label: WGPUStringView): void {.cdecl,
    importc: "wgpuTextureViewSetLabel".}
proc wgpuTextureViewAddRef*(textureView: WGPUTextureView): void {.cdecl,
    importc: "wgpuTextureViewAddRef".}
proc wgpuTextureViewRelease*(textureView: WGPUTextureView): void {.cdecl,
    importc: "wgpuTextureViewRelease".}
var WGPUInstanceBackend_All*: WGPUInstanceBackend
var WGPUInstanceBackend_Vulkan*: WGPUInstanceBackend
var WGPUInstanceBackend_GL*: WGPUInstanceBackend
var WGPUInstanceBackend_Metal*: WGPUInstanceBackend
var WGPUInstanceBackend_DX12*: WGPUInstanceBackend
var WGPUInstanceBackend_DX11*: WGPUInstanceBackend
var WGPUInstanceBackend_BrowserWebGPU*: WGPUInstanceBackend
var WGPUInstanceBackend_Primary*: WGPUInstanceBackend
var WGPUInstanceBackend_Secondary*: WGPUInstanceBackend
var WGPUInstanceBackend_Force32*: WGPUInstanceBackend
var WGPUInstanceFlag_Default*: WGPUInstanceFlag
var WGPUInstanceFlag_Debug*: WGPUInstanceFlag
var WGPUInstanceFlag_Validation*: WGPUInstanceFlag
var WGPUInstanceFlag_DiscardHalLabels*: WGPUInstanceFlag
var WGPUInstanceFlag_Force32*: WGPUInstanceFlag
proc wgpuGenerateReport*(instance: WGPUInstance; report: ptr WGPUGlobalReport): void {.
    cdecl, importc: "wgpuGenerateReport".}
proc wgpuInstanceEnumerateAdapters*(instance: WGPUInstance; options: ptr WGPUInstanceEnumerateAdapterOptions;
                                    adapters: ptr WGPUAdapter): csize_t {.cdecl,
    importc: "wgpuInstanceEnumerateAdapters".}
proc wgpuQueueSubmitForIndex*(queue: WGPUQueue; commandCount: csize_t;
                              commands: ptr WGPUCommandBuffer): WGPUSubmissionIndex {.
    cdecl, importc: "wgpuQueueSubmitForIndex".}
proc wgpuDevicePoll*(device: WGPUDevice; wait: WGPUBool;
                     wrappedSubmissionIndex: ptr WGPUSubmissionIndex): WGPUBool {.
    cdecl, importc: "wgpuDevicePoll".}
proc wgpuDeviceCreateShaderModuleSpirV*(device: WGPUDevice; descriptor: ptr WGPUShaderModuleDescriptorSpirV): WGPUShaderModule {.
    cdecl, importc: "wgpuDeviceCreateShaderModuleSpirV".}
proc wgpuSetLogCallback*(callback: WGPULogCallback; userdata: pointer): void {.
    cdecl, importc: "wgpuSetLogCallback".}
proc wgpuSetLogLevel*(level: WGPULogLevel): void {.cdecl,
    importc: "wgpuSetLogLevel".}
proc wgpuGetVersion*(): uint32 {.cdecl, importc: "wgpuGetVersion".}
proc wgpuRenderPassEncoderSetPushConstants*(encoder: WGPURenderPassEncoder;
    stages: WGPUShaderStage; offset: uint32; sizeBytes: uint32; data: pointer): void {.
    cdecl, importc: "wgpuRenderPassEncoderSetPushConstants".}
proc wgpuComputePassEncoderSetPushConstants*(encoder: WGPUComputePassEncoder;
    offset: uint32; sizeBytes: uint32; data: pointer): void {.cdecl,
    importc: "wgpuComputePassEncoderSetPushConstants".}
proc wgpuRenderBundleEncoderSetPushConstants*(encoder: WGPURenderBundleEncoder;
    stages: WGPUShaderStage; offset: uint32; sizeBytes: uint32; data: pointer): void {.
    cdecl, importc: "wgpuRenderBundleEncoderSetPushConstants".}
proc wgpuRenderPassEncoderMultiDrawIndirect*(encoder: WGPURenderPassEncoder;
    buffer: WGPUBuffer; offset: uint64; count: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderMultiDrawIndirect".}
proc wgpuRenderPassEncoderMultiDrawIndexedIndirect*(
    encoder: WGPURenderPassEncoder; buffer: WGPUBuffer; offset: uint64;
    count: uint32): void {.cdecl, importc: "wgpuRenderPassEncoderMultiDrawIndexedIndirect".}
proc wgpuRenderPassEncoderMultiDrawIndirectCount*(
    encoder: WGPURenderPassEncoder; buffer: WGPUBuffer; offset: uint64;
    count_buffer: WGPUBuffer; count_buffer_offset: uint64; max_count: uint32): void {.
    cdecl, importc: "wgpuRenderPassEncoderMultiDrawIndirectCount".}
proc wgpuRenderPassEncoderMultiDrawIndexedIndirectCount*(
    encoder: WGPURenderPassEncoder; buffer: WGPUBuffer; offset: uint64;
    count_buffer: WGPUBuffer; count_buffer_offset: uint64; max_count: uint32): void {.
    cdecl, importc: "wgpuRenderPassEncoderMultiDrawIndexedIndirectCount".}
proc wgpuComputePassEncoderBeginPipelineStatisticsQuery*(
    computePassEncoder: WGPUComputePassEncoder; querySet: WGPUQuerySet;
    queryIndex: uint32): void {.cdecl, importc: "wgpuComputePassEncoderBeginPipelineStatisticsQuery".}
proc wgpuComputePassEncoderEndPipelineStatisticsQuery*(
    computePassEncoder: WGPUComputePassEncoder): void {.cdecl,
    importc: "wgpuComputePassEncoderEndPipelineStatisticsQuery".}
proc wgpuRenderPassEncoderBeginPipelineStatisticsQuery*(
    renderPassEncoder: WGPURenderPassEncoder; querySet: WGPUQuerySet;
    queryIndex: uint32): void {.cdecl, importc: "wgpuRenderPassEncoderBeginPipelineStatisticsQuery".}
proc wgpuRenderPassEncoderEndPipelineStatisticsQuery*(
    renderPassEncoder: WGPURenderPassEncoder): void {.cdecl,
    importc: "wgpuRenderPassEncoderEndPipelineStatisticsQuery".}
proc wgpuComputePassEncoderWriteTimestamp*(
    computePassEncoder: WGPUComputePassEncoder; querySet: WGPUQuerySet;
    queryIndex: uint32): void {.cdecl,
                                importc: "wgpuComputePassEncoderWriteTimestamp".}
proc wgpuRenderPassEncoderWriteTimestamp*(
    renderPassEncoder: WGPURenderPassEncoder; querySet: WGPUQuerySet;
    queryIndex: uint32): void {.cdecl,
                                importc: "wgpuRenderPassEncoderWriteTimestamp".}