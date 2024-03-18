
type
  enumwgpuadaptertype* {.size: sizeof(cuint).} = enum
    Adaptertypediscretegpu = 0, Adaptertypeintegratedgpu = 1,
    Adaptertypecpu = 2, Adaptertypeunknown = 3, Adaptertypeforce32 = 2147483647
type
  enumwgpuaddressmode* {.size: sizeof(cuint).} = enum
    Addressmoderepeat = 0, Addressmodemirrorrepeat = 1,
    Addressmodeclamptoedge = 2, Addressmodeforce32 = 2147483647
type
  enumwgpubackendtype* {.size: sizeof(cuint).} = enum
    Backendtypeundefined = 0, Backendtypenull = 1, Backendtypewebgpu = 2,
    Backendtyped3d11 = 3, Backendtyped3d12 = 4, Backendtypemetal = 5,
    Backendtypevulkan = 6, Backendtypeopengl = 7, Backendtypeopengles = 8,
    Backendtypeforce32 = 2147483647
type
  enumwgpublendfactor* {.size: sizeof(cuint).} = enum
    Blendfactorzero = 0, Blendfactorone = 1, Blendfactorsrc = 2,
    Blendfactoroneminussrc = 3, Blendfactorsrcalpha = 4,
    Blendfactoroneminussrcalpha = 5, Blendfactordst = 6,
    Blendfactoroneminusdst = 7, Blendfactordstalpha = 8,
    Blendfactoroneminusdstalpha = 9, Blendfactorsrcalphasaturated = 10,
    Blendfactorconstant = 11, Blendfactoroneminusconstant = 12,
    Blendfactorforce32 = 2147483647
type
  enumwgpublendoperation* {.size: sizeof(cuint).} = enum
    Blendoperationadd = 0, Blendoperationsubtract = 1,
    Blendoperationreversesubtract = 2, Blendoperationmin = 3,
    Blendoperationmax = 4, Blendoperationforce32 = 2147483647
type
  enumwgpubufferbindingtype* {.size: sizeof(cuint).} = enum
    Bufferbindingtypeundefined = 0, Bufferbindingtypeuniform = 1,
    Bufferbindingtypestorage = 2, Bufferbindingtypereadonlystorage = 3,
    Bufferbindingtypeforce32 = 2147483647
type
  enumwgpubuffermapasyncstatus* {.size: sizeof(cuint).} = enum
    Buffermapasyncstatussuccess = 0, Buffermapasyncstatusvalidationerror = 1,
    Buffermapasyncstatusunknown = 2, Buffermapasyncstatusdevicelost = 3,
    Buffermapasyncstatusdestroyedbeforecallback = 4,
    Buffermapasyncstatusunmappedbeforecallback = 5,
    Buffermapasyncstatusmappingalreadypending = 6,
    Buffermapasyncstatusoffsetoutofrange = 7,
    Buffermapasyncstatussizeoutofrange = 8,
    Buffermapasyncstatusforce32 = 2147483647
type
  enumwgpubuffermapstate* {.size: sizeof(cuint).} = enum
    Buffermapstateunmapped = 0, Buffermapstatepending = 1,
    Buffermapstatemapped = 2, Buffermapstateforce32 = 2147483647
type
  enumwgpucomparefunction* {.size: sizeof(cuint).} = enum
    Comparefunctionundefined = 0, Comparefunctionnever = 1,
    Comparefunctionless = 2, Comparefunctionlessequal = 3,
    Comparefunctiongreater = 4, Comparefunctiongreaterequal = 5,
    Comparefunctionequal = 6, Comparefunctionnotequal = 7,
    Comparefunctionalways = 8, Comparefunctionforce32 = 2147483647
type
  enumwgpucompilationinforequeststatus* {.size: sizeof(cuint).} = enum
    Compilationinforequeststatussuccess = 0,
    Compilationinforequeststatuserror = 1,
    Compilationinforequeststatusdevicelost = 2,
    Compilationinforequeststatusunknown = 3,
    Compilationinforequeststatusforce32 = 2147483647
type
  enumwgpucompilationmessagetype* {.size: sizeof(cuint).} = enum
    Compilationmessagetypeerror = 0, Compilationmessagetypewarning = 1,
    Compilationmessagetypeinfo = 2, Compilationmessagetypeforce32 = 2147483647
type
  enumwgpucomputepasstimestamplocation* {.size: sizeof(cuint).} = enum
    Computepasstimestamplocationbeginning = 0,
    Computepasstimestamplocationend = 1,
    Computepasstimestamplocationforce32 = 2147483647
type
  enumwgpucreatepipelineasyncstatus* {.size: sizeof(cuint).} = enum
    Createpipelineasyncstatussuccess = 0,
    Createpipelineasyncstatusvalidationerror = 1,
    Createpipelineasyncstatusinternalerror = 2,
    Createpipelineasyncstatusdevicelost = 3,
    Createpipelineasyncstatusdevicedestroyed = 4,
    Createpipelineasyncstatusunknown = 5,
    Createpipelineasyncstatusforce32 = 2147483647
type
  enumwgpucullmode* {.size: sizeof(cuint).} = enum
    Cullmodenone = 0, Cullmodefront = 1, Cullmodeback = 2,
    Cullmodeforce32 = 2147483647
type
  enumwgpudevicelostreason* {.size: sizeof(cuint).} = enum
    Devicelostreasonundefined = 0, Devicelostreasondestroyed = 1,
    Devicelostreasonforce32 = 2147483647
type
  enumwgpuerrorfilter* {.size: sizeof(cuint).} = enum
    Errorfiltervalidation = 0, Errorfilteroutofmemory = 1,
    Errorfilterinternal = 2, Errorfilterforce32 = 2147483647
type
  enumwgpuerrortype* {.size: sizeof(cuint).} = enum
    Errortypenoerror = 0, Errortypevalidation = 1, Errortypeoutofmemory = 2,
    Errortypeinternal = 3, Errortypeunknown = 4, Errortypedevicelost = 5,
    Errortypeforce32 = 2147483647
type
  enumwgpufeaturename* {.size: sizeof(cuint).} = enum
    Featurenameundefined = 0, Featurenamedepthclipcontrol = 1,
    Featurenamedepth32floatstencil8 = 2, Featurenametimestampquery = 3,
    Featurenamepipelinestatisticsquery = 4, Featurenametexturecompressionbc = 5,
    Featurenametexturecompressionetc2 = 6,
    Featurenametexturecompressionastc = 7, Featurenameindirectfirstinstance = 8,
    Featurenameshaderf16 = 9, Featurenamerg11b10ufloatrenderable = 10,
    Featurenamebgra8unormstorage = 11, Featurenamefloat32filterable = 12,
    Featurenameforce32 = 2147483647
type
  enumwgpufiltermode* {.size: sizeof(cuint).} = enum
    Filtermodenearest = 0, Filtermodelinear = 1, Filtermodeforce32 = 2147483647
type
  enumwgpufrontface* {.size: sizeof(cuint).} = enum
    Frontfaceccw = 0, Frontfacecw = 1, Frontfaceforce32 = 2147483647
type
  enumwgpuindexformat* {.size: sizeof(cuint).} = enum
    Indexformatundefined = 0, Indexformatuint16 = 1, Indexformatuint32 = 2,
    Indexformatforce32 = 2147483647
type
  enumwgpuloadop* {.size: sizeof(cuint).} = enum
    Loadopundefined = 0, Loadopclear = 1, Loadopload = 2,
    Loadopforce32 = 2147483647
type
  enumwgpumipmapfiltermode* {.size: sizeof(cuint).} = enum
    Mipmapfiltermodenearest = 0, Mipmapfiltermodelinear = 1,
    Mipmapfiltermodeforce32 = 2147483647
type
  enumwgpupipelinestatisticname* {.size: sizeof(cuint).} = enum
    Pipelinestatisticnamevertexshaderinvocations = 0,
    Pipelinestatisticnameclipperinvocations = 1,
    Pipelinestatisticnameclipperprimitivesout = 2,
    Pipelinestatisticnamefragmentshaderinvocations = 3,
    Pipelinestatisticnamecomputeshaderinvocations = 4,
    Pipelinestatisticnameforce32 = 2147483647
type
  enumwgpupowerpreference* {.size: sizeof(cuint).} = enum
    Powerpreferenceundefined = 0, Powerpreferencelowpower = 1,
    Powerpreferencehighperformance = 2, Powerpreferenceforce32 = 2147483647
type
  enumwgpupresentmode* {.size: sizeof(cuint).} = enum
    Presentmodeimmediate = 0, Presentmodemailbox = 1, Presentmodefifo = 2,
    Presentmodeforce32 = 2147483647
type
  enumwgpuprimitivetopology* {.size: sizeof(cuint).} = enum
    Primitivetopologypointlist = 0, Primitivetopologylinelist = 1,
    Primitivetopologylinestrip = 2, Primitivetopologytrianglelist = 3,
    Primitivetopologytrianglestrip = 4, Primitivetopologyforce32 = 2147483647
type
  enumwgpuquerytype* {.size: sizeof(cuint).} = enum
    Querytypeocclusion = 0, Querytypepipelinestatistics = 1,
    Querytypetimestamp = 2, Querytypeforce32 = 2147483647
type
  enumwgpuqueueworkdonestatus* {.size: sizeof(cuint).} = enum
    Queueworkdonestatussuccess = 0, Queueworkdonestatuserror = 1,
    Queueworkdonestatusunknown = 2, Queueworkdonestatusdevicelost = 3,
    Queueworkdonestatusforce32 = 2147483647
type
  enumwgpurenderpasstimestamplocation* {.size: sizeof(cuint).} = enum
    Renderpasstimestamplocationbeginning = 0,
    Renderpasstimestamplocationend = 1,
    Renderpasstimestamplocationforce32 = 2147483647
type
  enumwgpurequestadapterstatus* {.size: sizeof(cuint).} = enum
    Requestadapterstatussuccess = 0, Requestadapterstatusunavailable = 1,
    Requestadapterstatuserror = 2, Requestadapterstatusunknown = 3,
    Requestadapterstatusforce32 = 2147483647
type
  enumwgpurequestdevicestatus* {.size: sizeof(cuint).} = enum
    Requestdevicestatussuccess = 0, Requestdevicestatuserror = 1,
    Requestdevicestatusunknown = 2, Requestdevicestatusforce32 = 2147483647
type
  enumwgpustype* {.size: sizeof(cuint).} = enum
    Stypeinvalid = 0, Stypesurfacedescriptorfrommetallayer = 1,
    Stypesurfacedescriptorfromwindowshwnd = 2,
    Stypesurfacedescriptorfromxlibwindow = 3,
    Stypesurfacedescriptorfromcanvashtmlselector = 4,
    Stypeshadermodulespirvdescriptor = 5, Stypeshadermodulewgsldescriptor = 6,
    Stypeprimitivedepthclipcontrol = 7,
    Stypesurfacedescriptorfromwaylandsurface = 8,
    Stypesurfacedescriptorfromandroidnativewindow = 9,
    Stypesurfacedescriptorfromxcbwindow = 10,
    Styperenderpassdescriptormaxdrawcount = 15, Stypeforce32 = 2147483647
type
  enumwgpusamplerbindingtype* {.size: sizeof(cuint).} = enum
    Samplerbindingtypeundefined = 0, Samplerbindingtypefiltering = 1,
    Samplerbindingtypenonfiltering = 2, Samplerbindingtypecomparison = 3,
    Samplerbindingtypeforce32 = 2147483647
type
  enumwgpustenciloperation* {.size: sizeof(cuint).} = enum
    Stenciloperationkeep = 0, Stenciloperationzero = 1,
    Stenciloperationreplace = 2, Stenciloperationinvert = 3,
    Stenciloperationincrementclamp = 4, Stenciloperationdecrementclamp = 5,
    Stenciloperationincrementwrap = 6, Stenciloperationdecrementwrap = 7,
    Stenciloperationforce32 = 2147483647
type
  enumwgpustoragetextureaccess* {.size: sizeof(cuint).} = enum
    Storagetextureaccessundefined = 0, Storagetextureaccesswriteonly = 1,
    Storagetextureaccessforce32 = 2147483647
type
  enumwgpustoreop* {.size: sizeof(cuint).} = enum
    Storeopundefined = 0, Storeopstore = 1, Storeopdiscard = 2,
    Storeopforce32 = 2147483647
type
  enumwgputextureaspect* {.size: sizeof(cuint).} = enum
    Textureaspectall = 0, Textureaspectstencilonly = 1,
    Textureaspectdepthonly = 2, Textureaspectforce32 = 2147483647
type
  enumwgputexturedimension* {.size: sizeof(cuint).} = enum
    Texturedimension1d = 0, Texturedimension2d = 1, Texturedimension3d = 2,
    Texturedimensionforce32 = 2147483647
type
  enumwgputextureformat* {.size: sizeof(cuint).} = enum
    Textureformatundefined = 0, Textureformatr8unorm = 1,
    Textureformatr8snorm = 2, Textureformatr8uint = 3, Textureformatr8sint = 4,
    Textureformatr16uint = 5, Textureformatr16sint = 6,
    Textureformatr16float = 7, Textureformatrg8unorm = 8,
    Textureformatrg8snorm = 9, Textureformatrg8uint = 10,
    Textureformatrg8sint = 11, Textureformatr32float = 12,
    Textureformatr32uint = 13, Textureformatr32sint = 14,
    Textureformatrg16uint = 15, Textureformatrg16sint = 16,
    Textureformatrg16float = 17, Textureformatrgba8unorm = 18,
    Textureformatrgba8unormsrgb = 19, Textureformatrgba8snorm = 20,
    Textureformatrgba8uint = 21, Textureformatrgba8sint = 22,
    Textureformatbgra8unorm = 23, Textureformatbgra8unormsrgb = 24,
    Textureformatrgb10a2unorm = 25, Textureformatrg11b10ufloat = 26,
    Textureformatrgb9e5ufloat = 27, Textureformatrg32float = 28,
    Textureformatrg32uint = 29, Textureformatrg32sint = 30,
    Textureformatrgba16uint = 31, Textureformatrgba16sint = 32,
    Textureformatrgba16float = 33, Textureformatrgba32float = 34,
    Textureformatrgba32uint = 35, Textureformatrgba32sint = 36,
    Textureformatstencil8 = 37, Textureformatdepth16unorm = 38,
    Textureformatdepth24plus = 39, Textureformatdepth24plusstencil8 = 40,
    Textureformatdepth32float = 41, Textureformatdepth32floatstencil8 = 42,
    Textureformatbc1rgbaunorm = 43, Textureformatbc1rgbaunormsrgb = 44,
    Textureformatbc2rgbaunorm = 45, Textureformatbc2rgbaunormsrgb = 46,
    Textureformatbc3rgbaunorm = 47, Textureformatbc3rgbaunormsrgb = 48,
    Textureformatbc4runorm = 49, Textureformatbc4rsnorm = 50,
    Textureformatbc5rgunorm = 51, Textureformatbc5rgsnorm = 52,
    Textureformatbc6hrgbufloat = 53, Textureformatbc6hrgbfloat = 54,
    Textureformatbc7rgbaunorm = 55, Textureformatbc7rgbaunormsrgb = 56,
    Textureformatetc2rgb8unorm = 57, Textureformatetc2rgb8unormsrgb = 58,
    Textureformatetc2rgb8a1unorm = 59, Textureformatetc2rgb8a1unormsrgb = 60,
    Textureformatetc2rgba8unorm = 61, Textureformatetc2rgba8unormsrgb = 62,
    Textureformateacr11unorm = 63, Textureformateacr11snorm = 64,
    Textureformateacrg11unorm = 65, Textureformateacrg11snorm = 66,
    Textureformatastc4x4unorm = 67, Textureformatastc4x4unormsrgb = 68,
    Textureformatastc5x4unorm = 69, Textureformatastc5x4unormsrgb = 70,
    Textureformatastc5x5unorm = 71, Textureformatastc5x5unormsrgb = 72,
    Textureformatastc6x5unorm = 73, Textureformatastc6x5unormsrgb = 74,
    Textureformatastc6x6unorm = 75, Textureformatastc6x6unormsrgb = 76,
    Textureformatastc8x5unorm = 77, Textureformatastc8x5unormsrgb = 78,
    Textureformatastc8x6unorm = 79, Textureformatastc8x6unormsrgb = 80,
    Textureformatastc8x8unorm = 81, Textureformatastc8x8unormsrgb = 82,
    Textureformatastc10x5unorm = 83, Textureformatastc10x5unormsrgb = 84,
    Textureformatastc10x6unorm = 85, Textureformatastc10x6unormsrgb = 86,
    Textureformatastc10x8unorm = 87, Textureformatastc10x8unormsrgb = 88,
    Textureformatastc10x10unorm = 89, Textureformatastc10x10unormsrgb = 90,
    Textureformatastc12x10unorm = 91, Textureformatastc12x10unormsrgb = 92,
    Textureformatastc12x12unorm = 93, Textureformatastc12x12unormsrgb = 94,
    Textureformatforce32 = 2147483647
type
  enumwgputexturesampletype* {.size: sizeof(cuint).} = enum
    Texturesampletypeundefined = 0, Texturesampletypefloat = 1,
    Texturesampletypeunfilterablefloat = 2, Texturesampletypedepth = 3,
    Texturesampletypesint = 4, Texturesampletypeuint = 5,
    Texturesampletypeforce32 = 2147483647
type
  enumwgputextureviewdimension* {.size: sizeof(cuint).} = enum
    Textureviewdimensionundefined = 0, Textureviewdimension1d = 1,
    Textureviewdimension2d = 2, Textureviewdimension2darray = 3,
    Textureviewdimensioncube = 4, Textureviewdimensioncubearray = 5,
    Textureviewdimension3d = 6, Textureviewdimensionforce32 = 2147483647
type
  enumwgpuvertexformat* {.size: sizeof(cuint).} = enum
    Vertexformatundefined = 0, Vertexformatuint8x2 = 1, Vertexformatuint8x4 = 2,
    Vertexformatsint8x2 = 3, Vertexformatsint8x4 = 4, Vertexformatunorm8x2 = 5,
    Vertexformatunorm8x4 = 6, Vertexformatsnorm8x2 = 7,
    Vertexformatsnorm8x4 = 8, Vertexformatuint16x2 = 9,
    Vertexformatuint16x4 = 10, Vertexformatsint16x2 = 11,
    Vertexformatsint16x4 = 12, Vertexformatunorm16x2 = 13,
    Vertexformatunorm16x4 = 14, Vertexformatsnorm16x2 = 15,
    Vertexformatsnorm16x4 = 16, Vertexformatfloat16x2 = 17,
    Vertexformatfloat16x4 = 18, Vertexformatfloat32 = 19,
    Vertexformatfloat32x2 = 20, Vertexformatfloat32x3 = 21,
    Vertexformatfloat32x4 = 22, Vertexformatuint32 = 23,
    Vertexformatuint32x2 = 24, Vertexformatuint32x3 = 25,
    Vertexformatuint32x4 = 26, Vertexformatsint32 = 27,
    Vertexformatsint32x2 = 28, Vertexformatsint32x3 = 29,
    Vertexformatsint32x4 = 30, Vertexformatforce32 = 2147483647
type
  enumwgpuvertexstepmode* {.size: sizeof(cuint).} = enum
    Vertexstepmodevertex = 0, Vertexstepmodeinstance = 1,
    Vertexstepmodevertexbuffernotused = 2, Vertexstepmodeforce32 = 2147483647
type
  enumwgpubufferusage* {.size: sizeof(cuint).} = enum
    Bufferusagenone = 0, Bufferusagemapread = 1, Bufferusagemapwrite = 2,
    Bufferusagecopysrc = 4, Bufferusagecopydst = 8, Bufferusageindex = 16,
    Bufferusagevertex = 32, Bufferusageuniform = 64, Bufferusagestorage = 128,
    Bufferusageindirect = 256, Bufferusagequeryresolve = 512,
    Bufferusageforce32 = 2147483647
type
  enumwgpucolorwritemask* {.size: sizeof(cuint).} = enum
    Colorwritemasknone = 0, Colorwritemaskred = 1, Colorwritemaskgreen = 2,
    Colorwritemaskblue = 4, Colorwritemaskalpha = 8, Colorwritemaskall = 15,
    Colorwritemaskforce32 = 2147483647
type
  enumwgpumapmode* {.size: sizeof(cuint).} = enum
    Mapmodenone = 0, Mapmoderead = 1, Mapmodewrite = 2,
    Mapmodeforce32 = 2147483647
type
  enumwgpushaderstage* {.size: sizeof(cuint).} = enum
    Shaderstagenone = 0, Shaderstagevertex = 1, Shaderstagefragment = 2,
    Shaderstagecompute = 4, Shaderstageforce32 = 2147483647
type
  enumwgputextureusage* {.size: sizeof(cuint).} = enum
    Textureusagenone = 0, Textureusagecopysrc = 1, Textureusagecopydst = 2,
    Textureusagetexturebinding = 4, Textureusagestoragebinding = 8,
    Textureusagerenderattachment = 16, Textureusageforce32 = 2147483647
type
  enumwgpunativestype* {.size: sizeof(cuint).} = enum
    Stypedeviceextras = 1610612737, Stypeadapterextras = 1610612738,
    Styperequiredlimitsextras = 1610612739,
    Stypepipelinelayoutextras = 1610612740,
    Stypeshadermoduleglsldescriptor = 1610612741,
    Stypeinstanceextras = 1610612742,
    Stypeswapchaindescriptorextras = 1610612743, Nativestypeforce32 = 2147483647
const
  Stypesupportedlimitsextras* = enumwgpunativestype.Styperequiredlimitsextras
type
  enumwgpunativefeature* {.size: sizeof(cuint).} = enum
    Nativefeaturepushconstants = 1610612737,
    Nativefeaturetextureadapterspecificformatfeatures = 1610612738,
    Nativefeaturemultidrawindirect = 1610612739,
    Nativefeaturemultidrawindirectcount = 1610612740,
    Nativefeaturevertexwritablestorage = 1610612741,
    Nativefeatureforce32 = 2147483647
type
  enumwgpuloglevel* {.size: sizeof(cuint).} = enum
    Logleveloff = 0, Loglevelerror = 1, Loglevelwarn = 2, Loglevelinfo = 3,
    Logleveldebug = 4, Logleveltrace = 5, Loglevelforce32 = 2147483647
type
  enumwgpuinstancebackend* {.size: sizeof(cuint).} = enum
    Instancebackendnone = 0, Instancebackendvulkan = 2,
    Instancebackendmetal = 4, Instancebackenddx12 = 8, Instancebackenddx11 = 16,
    Instancebackendgl = 32, Instancebackendsecondary = 48,
    Instancebackendbrowserwebgpu = 64, Instancebackendprimary = 78,
    Instancebackendforce32 = 2147483647
type
  enumwgpudx12compiler* {.size: sizeof(cuint).} = enum
    Dx12compilerundefined = 0, Dx12compilerfxc = 1, Dx12compilerdxc = 2,
    Dx12compilerforce32 = 2147483647
type
  enumwgpucompositealphamode* {.size: sizeof(cuint).} = enum
    Compositealphamodeauto = 0, Compositealphamodeopaque = 1,
    Compositealphamodepremultiplied = 2, Compositealphamodepostmultiplied = 3,
    Compositealphamodeinherit = 4, Compositealphamodeforce32 = 2147483647
type
  structwgpucommandbufferimpl* = distinct object
type
  structwgpurenderbundleencoderimpl* = distinct object
type
  structwgpuquerysetimpl* = distinct object
type
  structwgpuqueueimpl* = distinct object
type
  structwgpusamplerimpl* = distinct object
type
  structwgputextureviewimpl* = distinct object
type
  structwgpuinstanceimpl* = distinct object
type
  structwgpuswapchainimpl* = distinct object
type
  structwgpubufferimpl* = distinct object
type
  structwgputextureimpl* = distinct object
type
  structwgpucommandencoderimpl* = distinct object
type
  structwgpubindgroupimpl* = distinct object
type
  structwgpubindgrouplayoutimpl* = distinct object
type
  structwgpushadermoduleimpl* = distinct object
type
  structwgpucomputepipelineimpl* = distinct object
type
  structwgpucomputepassencoderimpl* = distinct object
type
  structwgpupipelinelayoutimpl* = distinct object
type
  structwgpurenderpassencoderimpl* = distinct object
type
  structwgpurenderpipelineimpl* = distinct object
type
  structwgpudeviceimpl* = distinct object
type
  structwgpusurfaceimpl* = distinct object
type
  structwgpuadapterimpl* = distinct object
type
  structwgpurenderbundleimpl* = distinct object
type
  Flags* = uint32            ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:79:18
  Adapter* = ptr structwgpuadapterimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:81:33
  Bindgroup* = ptr structwgpubindgroupimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:82:35
  Bindgrouplayout* = ptr structwgpubindgrouplayoutimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:83:41
  Buffer* = ptr structwgpubufferimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:84:32
  Commandbuffer* = ptr structwgpucommandbufferimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:85:39
  Commandencoder* = ptr structwgpucommandencoderimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:86:40
  Computepassencoder* = ptr structwgpucomputepassencoderimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:87:44
  Computepipeline* = ptr structwgpucomputepipelineimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:88:41
  Device* = ptr structwgpudeviceimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:89:32
  Instance* = ptr structwgpuinstanceimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:90:34
  Pipelinelayout* = ptr structwgpupipelinelayoutimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:91:40
  Queryset* = ptr structwgpuquerysetimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:92:34
  Queue* = ptr structwgpuqueueimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:93:31
  Renderbundle* = ptr structwgpurenderbundleimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:94:38
  Renderbundleencoder* = ptr structwgpurenderbundleencoderimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:95:45
  Renderpassencoder* = ptr structwgpurenderpassencoderimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:96:43
  Renderpipeline* = ptr structwgpurenderpipelineimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:97:40
  Sampler* = ptr structwgpusamplerimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:98:33
  Shadermodule* = ptr structwgpushadermoduleimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:99:38
  Surface* = ptr structwgpusurfaceimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:100:33
  Swapchain* = ptr structwgpuswapchainimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:101:35
  Texture* = ptr structwgputextureimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:102:33
  Textureview* = ptr structwgputextureviewimpl ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:103:37
  Adaptertype* = enumwgpuadaptertype ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:183:3
  Addressmode* = enumwgpuaddressmode ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:190:3
  Backendtype* = enumwgpubackendtype ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:203:3
  Blendfactor* = enumwgpublendfactor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:220:3
  Blendoperation* = enumwgpublendoperation ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:229:3
  Bufferbindingtype* = enumwgpubufferbindingtype ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:237:3
  Buffermapasyncstatus* = enumwgpubuffermapasyncstatus ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:250:3
  Buffermapstate* = enumwgpubuffermapstate ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:257:3
  Comparefunction* = enumwgpucomparefunction ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:270:3
  Compilationinforequeststatus* = enumwgpucompilationinforequeststatus ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:278:3
  Compilationmessagetype* = enumwgpucompilationmessagetype ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:285:3
  Computepasstimestamplocation* = enumwgpucomputepasstimestamplocation ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:291:3
  Createpipelineasyncstatus* = enumwgpucreatepipelineasyncstatus ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:301:3
  Cullmode* = enumwgpucullmode ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:308:3
  Devicelostreason* = enumwgpudevicelostreason ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:314:3
  Errorfilter* = enumwgpuerrorfilter ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:321:3
  Errortype* = enumwgpuerrortype ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:331:3
  Featurename* = enumwgpufeaturename ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:348:3
  Filtermode* = enumwgpufiltermode ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:354:3
  Frontface* = enumwgpufrontface ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:360:3
  Indexformat* = enumwgpuindexformat ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:367:3
  Loadop* = enumwgpuloadop   ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:374:3
  Mipmapfiltermode* = enumwgpumipmapfiltermode ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:380:3
  Pipelinestatisticname* = enumwgpupipelinestatisticname ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:389:3
  Powerpreference* = enumwgpupowerpreference ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:396:3
  Presentmode* = enumwgpupresentmode ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:403:3
  Primitivetopology* = enumwgpuprimitivetopology ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:412:3
  Querytype* = enumwgpuquerytype ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:419:3
  Queueworkdonestatus* = enumwgpuqueueworkdonestatus ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:427:3
  Renderpasstimestamplocation* = enumwgpurenderpasstimestamplocation ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:433:3
  Requestadapterstatus* = enumwgpurequestadapterstatus ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:441:3
  Requestdevicestatus* = enumwgpurequestdevicestatus ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:448:3
  Stype* = enumwgpustype     ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:464:3
  Samplerbindingtype* = enumwgpusamplerbindingtype ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:472:3
  Stenciloperation* = enumwgpustenciloperation ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:484:3
  Storagetextureaccess* = enumwgpustoragetextureaccess ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:490:3
  Storeop* = enumwgpustoreop ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:497:3
  Textureaspect* = enumwgputextureaspect ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:504:3
  Texturedimension* = enumwgputexturedimension ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:511:3
  Textureformat* = enumwgputextureformat ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:610:3
  Texturesampletype* = enumwgputexturesampletype ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:620:3
  Textureviewdimension* = enumwgputextureviewdimension ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:631:3
  Vertexformat* = enumwgpuvertexformat ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:666:3
  Vertexstepmode* = enumwgpuvertexstepmode ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:673:3
  Bufferusage* = enumwgpubufferusage ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:688:3
  Bufferusageflags* = Flags  ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:689:19
  Colorwritemask* = enumwgpucolorwritemask ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:699:3
  Colorwritemaskflags* = Flags ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:700:19
  Mapmode* = enumwgpumapmode ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:707:3
  Mapmodeflags* = Flags      ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:708:19
  Shaderstage* = enumwgpushaderstage ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:716:3
  Shaderstageflags* = Flags  ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:717:19
  Textureusage* = enumwgputextureusage ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:727:3
  Textureusageflags* = Flags ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:728:19
  Buffermapcallback* = proc (a0: Buffermapasyncstatus; a1: pointer): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:730:16
  Compilationinfocallback* = proc (a0: Compilationinforequeststatus;
                                   a1: ptr structwgpucompilationinfo;
                                   a2: pointer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:731:16
  structwgpucompilationinfo* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1145:16
    messagecount*: csize_t
    messages*: ptr Compilationmessage

  Createcomputepipelineasynccallback* = proc (a0: Createpipelineasyncstatus;
      a1: Computepipeline; a2: cstring; a3: pointer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:732:16
  Createrenderpipelineasynccallback* = proc (a0: Createpipelineasyncstatus;
      a1: Renderpipeline; a2: cstring; a3: pointer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:733:16
  Devicelostcallback* = proc (a0: Devicelostreason; a1: cstring; a2: pointer): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:734:16
  Errorcallback* = proc (a0: Errortype; a1: cstring; a2: pointer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:735:16
  Proc* = proc (): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:736:16
  Queueworkdonecallback* = proc (a0: Queueworkdonestatus; a1: pointer): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:737:16
  Requestadaptercallback* = proc (a0: Requestadapterstatus; a1: Adapter;
                                  a2: cstring; a3: pointer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:738:16
  Requestdevicecallback* = proc (a0: Requestdevicestatus; a1: Device;
                                 a2: cstring; a3: pointer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:739:16
  structwgpuchainedstruct* {.pure, inheritable, bycopy.} = object
    next*: ptr structwgpuchainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:741:16
    stype*: Stype

  Chainedstruct* = structwgpuchainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:744:3
  structwgpuchainedstructout* {.pure, inheritable, bycopy.} = object
    next*: ptr structwgpuchainedstructout ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:746:16
    stype*: Stype

  Chainedstructout* = structwgpuchainedstructout ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:749:3
  structwgpuadapterproperties* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstructout ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:751:16
    vendorid*: uint32
    vendorname*: cstring
    architecture*: cstring
    deviceid*: uint32
    name*: cstring
    driverdescription*: cstring
    adaptertype*: Adaptertype
    backendtype*: Backendtype

  Adapterproperties* = structwgpuadapterproperties ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:761:3
  structwgpubindgroupentry* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:763:16
    binding*: uint32
    buffer*: Buffer
    offset*: uint64
    size*: uint64
    sampler*: Sampler
    textureview*: Textureview

  Bindgroupentry* = structwgpubindgroupentry ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:771:3
  structwgpublendcomponent* {.pure, inheritable, bycopy.} = object
    operation*: Blendoperation ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:773:16
    srcfactor*: Blendfactor
    dstfactor*: Blendfactor

  Blendcomponent* = structwgpublendcomponent ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:777:3
  structwgpubufferbindinglayout* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:779:16
    typefield*: Bufferbindingtype
    hasdynamicoffset*: bool
    minbindingsize*: uint64

  Bufferbindinglayout* = structwgpubufferbindinglayout ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:784:3
  structwgpubufferdescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:786:16
    label*: cstring
    usage*: Bufferusageflags
    size*: uint64
    mappedatcreation*: bool

  Bufferdescriptor* = structwgpubufferdescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:792:3
  structwgpucolor* {.pure, inheritable, bycopy.} = object
    r*: cdouble              ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:794:16
    g*: cdouble
    b*: cdouble
    a*: cdouble

  Color* = structwgpucolor   ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:799:3
  structwgpucommandbufferdescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:801:16
    label*: cstring

  Commandbufferdescriptor* = structwgpucommandbufferdescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:804:3
  structwgpucommandencoderdescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:806:16
    label*: cstring

  Commandencoderdescriptor* = structwgpucommandencoderdescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:809:3
  structwgpucompilationmessage* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:811:16
    message*: cstring
    typefield*: Compilationmessagetype
    linenum*: uint64
    linepos*: uint64
    offset*: uint64
    length*: uint64
    utf16linepos*: uint64
    utf16offset*: uint64
    utf16length*: uint64

  Compilationmessage* = structwgpucompilationmessage ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:822:3
  structwgpucomputepasstimestampwrite* {.pure, inheritable, bycopy.} = object
    queryset*: Queryset      ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:824:16
    queryindex*: uint32
    location*: Computepasstimestamplocation

  Computepasstimestampwrite* = structwgpucomputepasstimestampwrite ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:828:3
  structwgpuconstantentry* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:830:16
    key*: cstring
    value*: cdouble

  Constantentry* = structwgpuconstantentry ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:834:3
  structwgpuextent3d* {.pure, inheritable, bycopy.} = object
    width*: uint32           ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:836:16
    height*: uint32
    depthorarraylayers*: uint32

  Extent3d* = structwgpuextent3d ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:840:3
  structwgpuinstancedescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:842:16
  
  Instancedescriptor* = structwgpuinstancedescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:844:3
  structwgpulimits* {.pure, inheritable, bycopy.} = object
    maxtexturedimension1d*: uint32 ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:846:16
    maxtexturedimension2d*: uint32
    maxtexturedimension3d*: uint32
    maxtexturearraylayers*: uint32
    maxbindgroups*: uint32
    maxbindingsperbindgroup*: uint32
    maxdynamicuniformbuffersperpipelinelayout*: uint32
    maxdynamicstoragebuffersperpipelinelayout*: uint32
    maxsampledtexturespershaderstage*: uint32
    maxsamplerspershaderstage*: uint32
    maxstoragebufferspershaderstage*: uint32
    maxstoragetexturespershaderstage*: uint32
    maxuniformbufferspershaderstage*: uint32
    maxuniformbufferbindingsize*: uint64
    maxstoragebufferbindingsize*: uint64
    minuniformbufferoffsetalignment*: uint32
    minstoragebufferoffsetalignment*: uint32
    maxvertexbuffers*: uint32
    maxbuffersize*: uint64
    maxvertexattributes*: uint32
    maxvertexbufferarraystride*: uint32
    maxinterstageshadercomponents*: uint32
    maxinterstageshadervariables*: uint32
    maxcolorattachments*: uint32
    maxcolorattachmentbytespersample*: uint32
    maxcomputeworkgroupstoragesize*: uint32
    maxcomputeinvocationsperworkgroup*: uint32
    maxcomputeworkgroupsizex*: uint32
    maxcomputeworkgroupsizey*: uint32
    maxcomputeworkgroupsizez*: uint32
    maxcomputeworkgroupsperdimension*: uint32

  Limits* = structwgpulimits ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:878:3
  structwgpumultisamplestate* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:880:16
    count*: uint32
    mask*: uint32
    alphatocoverageenabled*: bool

  Multisamplestate* = structwgpumultisamplestate ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:885:3
  structwgpuorigin3d* {.pure, inheritable, bycopy.} = object
    x*: uint32               ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:887:16
    y*: uint32
    z*: uint32

  Origin3d* = structwgpuorigin3d ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:891:3
  structwgpupipelinelayoutdescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:893:16
    label*: cstring
    bindgrouplayoutcount*: csize_t
    bindgrouplayouts*: ptr Bindgrouplayout

  Pipelinelayoutdescriptor* = structwgpupipelinelayoutdescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:898:3
  structwgpuprimitivedepthclipcontrol* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:901:16
    unclippeddepth*: bool

  Primitivedepthclipcontrol* = structwgpuprimitivedepthclipcontrol ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:904:3
  structwgpuprimitivestate* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:906:16
    topology*: Primitivetopology
    stripindexformat*: Indexformat
    frontface*: Frontface
    cullmode*: Cullmode

  Primitivestate* = structwgpuprimitivestate ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:912:3
  structwgpuquerysetdescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:914:16
    label*: cstring
    typefield*: Querytype
    count*: uint32
    pipelinestatistics*: ptr Pipelinestatisticname
    pipelinestatisticscount*: csize_t

  Querysetdescriptor* = structwgpuquerysetdescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:921:3
  structwgpuqueuedescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:923:16
    label*: cstring

  Queuedescriptor* = structwgpuqueuedescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:926:3
  structwgpurenderbundledescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:928:16
    label*: cstring

  Renderbundledescriptor* = structwgpurenderbundledescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:931:3
  structwgpurenderbundleencoderdescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:933:16
    label*: cstring
    colorformatscount*: csize_t
    colorformats*: ptr Textureformat
    depthstencilformat*: Textureformat
    samplecount*: uint32
    depthreadonly*: bool
    stencilreadonly*: bool

  Renderbundleencoderdescriptor* = structwgpurenderbundleencoderdescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:942:3
  structwgpurenderpassdepthstencilattachment* {.pure, inheritable, bycopy.} = object
    view*: Textureview       ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:944:16
    depthloadop*: Loadop
    depthstoreop*: Storeop
    depthclearvalue*: cfloat
    depthreadonly*: bool
    stencilloadop*: Loadop
    stencilstoreop*: Storeop
    stencilclearvalue*: uint32
    stencilreadonly*: bool

  Renderpassdepthstencilattachment* = structwgpurenderpassdepthstencilattachment ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:954:3
  structwgpurenderpassdescriptormaxdrawcount* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:957:16
    maxdrawcount*: uint64

  Renderpassdescriptormaxdrawcount* = structwgpurenderpassdescriptormaxdrawcount ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:960:3
  structwgpurenderpasstimestampwrite* {.pure, inheritable, bycopy.} = object
    queryset*: Queryset      ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:962:16
    queryindex*: uint32
    location*: Renderpasstimestamplocation

  Renderpasstimestampwrite* = structwgpurenderpasstimestampwrite ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:966:3
  structwgpurequestadapteroptions* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:968:16
    compatiblesurface*: Surface
    powerpreference*: Powerpreference
    backendtype*: Backendtype
    forcefallbackadapter*: bool

  Requestadapteroptions* = structwgpurequestadapteroptions ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:974:3
  structwgpusamplerbindinglayout* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:976:16
    typefield*: Samplerbindingtype

  Samplerbindinglayout* = structwgpusamplerbindinglayout ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:979:3
  structwgpusamplerdescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:981:16
    label*: cstring
    addressmodeu*: Addressmode
    addressmodev*: Addressmode
    addressmodew*: Addressmode
    magfilter*: Filtermode
    minfilter*: Filtermode
    mipmapfilter*: Mipmapfiltermode
    lodminclamp*: cfloat
    lodmaxclamp*: cfloat
    compare*: Comparefunction
    maxanisotropy*: uint16

  Samplerdescriptor* = structwgpusamplerdescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:994:3
  structwgpushadermodulecompilationhint* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:996:16
    entrypoint*: cstring
    layout*: Pipelinelayout

  Shadermodulecompilationhint* = structwgpushadermodulecompilationhint ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1000:3
  structwgpushadermodulespirvdescriptor* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1003:16
    codesize*: uint32
    code*: ptr uint32

  Shadermodulespirvdescriptor* = structwgpushadermodulespirvdescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1007:3
  structwgpushadermodulewgsldescriptor* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1010:16
    code*: cstring

  Shadermodulewgsldescriptor* = structwgpushadermodulewgsldescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1013:3
  structwgpustencilfacestate* {.pure, inheritable, bycopy.} = object
    compare*: Comparefunction ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1015:16
    failop*: Stenciloperation
    depthfailop*: Stenciloperation
    passop*: Stenciloperation

  Stencilfacestate* = structwgpustencilfacestate ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1020:3
  structwgpustoragetexturebindinglayout* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1022:16
    access*: Storagetextureaccess
    format*: Textureformat
    viewdimension*: Textureviewdimension

  Storagetexturebindinglayout* = structwgpustoragetexturebindinglayout ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1027:3
  structwgpusurfacedescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1029:16
    label*: cstring

  Surfacedescriptor* = structwgpusurfacedescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1032:3
  structwgpusurfacedescriptorfromandroidnativewindow* {.pure, inheritable,
      bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1035:16
    window*: pointer

  Surfacedescriptorfromandroidnativewindow* = structwgpusurfacedescriptorfromandroidnativewindow ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1038:3
  structwgpusurfacedescriptorfromcanvashtmlselector* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1041:16
    selector*: cstring

  Surfacedescriptorfromcanvashtmlselector* = structwgpusurfacedescriptorfromcanvashtmlselector ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1044:3
  structwgpusurfacedescriptorfrommetallayer* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1047:16
    layer*: pointer

  Surfacedescriptorfrommetallayer* = structwgpusurfacedescriptorfrommetallayer ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1050:3
  structwgpusurfacedescriptorfromwaylandsurface* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1053:16
    display*: pointer
    surface*: pointer

  Surfacedescriptorfromwaylandsurface* = structwgpusurfacedescriptorfromwaylandsurface ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1057:3
  structwgpusurfacedescriptorfromwindowshwnd* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1060:16
    hinstance*: pointer
    hwnd*: pointer

  Surfacedescriptorfromwindowshwnd* = structwgpusurfacedescriptorfromwindowshwnd ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1064:3
  structwgpusurfacedescriptorfromxcbwindow* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1067:16
    connection*: pointer
    window*: uint32

  Surfacedescriptorfromxcbwindow* = structwgpusurfacedescriptorfromxcbwindow ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1071:3
  structwgpusurfacedescriptorfromxlibwindow* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1074:16
    display*: pointer
    window*: uint32

  Surfacedescriptorfromxlibwindow* = structwgpusurfacedescriptorfromxlibwindow ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1078:3
  structwgpuswapchaindescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1080:16
    label*: cstring
    usage*: Textureusageflags
    format*: Textureformat
    width*: uint32
    height*: uint32
    presentmode*: Presentmode

  Swapchaindescriptor* = structwgpuswapchaindescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1088:3
  structwgputexturebindinglayout* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1090:16
    sampletype*: Texturesampletype
    viewdimension*: Textureviewdimension
    multisampled*: bool

  Texturebindinglayout* = structwgputexturebindinglayout ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1095:3
  structwgputexturedatalayout* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1097:16
    offset*: uint64
    bytesperrow*: uint32
    rowsperimage*: uint32

  Texturedatalayout* = structwgputexturedatalayout ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1102:3
  structwgputextureviewdescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1104:16
    label*: cstring
    format*: Textureformat
    dimension*: Textureviewdimension
    basemiplevel*: uint32
    miplevelcount*: uint32
    basearraylayer*: uint32
    arraylayercount*: uint32
    aspect*: Textureaspect

  Textureviewdescriptor* = structwgputextureviewdescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1114:3
  structwgpuvertexattribute* {.pure, inheritable, bycopy.} = object
    format*: Vertexformat    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1116:16
    offset*: uint64
    shaderlocation*: uint32

  Vertexattribute* = structwgpuvertexattribute ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1120:3
  structwgpubindgroupdescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1122:16
    label*: cstring
    layout*: Bindgrouplayout
    entrycount*: csize_t
    entries*: ptr Bindgroupentry

  Bindgroupdescriptor* = structwgpubindgroupdescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1128:3
  structwgpubindgrouplayoutentry* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1130:16
    binding*: uint32
    visibility*: Shaderstageflags
    buffer*: Bufferbindinglayout
    sampler*: Samplerbindinglayout
    texture*: Texturebindinglayout
    storagetexture*: Storagetexturebindinglayout

  Bindgrouplayoutentry* = structwgpubindgrouplayoutentry ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1138:3
  structwgpublendstate* {.pure, inheritable, bycopy.} = object
    color*: Blendcomponent   ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1140:16
    alpha*: Blendcomponent

  Blendstate* = structwgpublendstate ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1143:3
  Compilationinfo* = structwgpucompilationinfo ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1149:3
  structwgpucomputepassdescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1151:16
    label*: cstring
    timestampwritecount*: csize_t
    timestampwrites*: ptr Computepasstimestampwrite

  Computepassdescriptor* = structwgpucomputepassdescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1156:3
  structwgpudepthstencilstate* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1158:16
    format*: Textureformat
    depthwriteenabled*: bool
    depthcompare*: Comparefunction
    stencilfront*: Stencilfacestate
    stencilback*: Stencilfacestate
    stencilreadmask*: uint32
    stencilwritemask*: uint32
    depthbias*: int32
    depthbiasslopescale*: cfloat
    depthbiasclamp*: cfloat

  Depthstencilstate* = structwgpudepthstencilstate ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1170:3
  structwgpuimagecopybuffer* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1172:16
    layout*: Texturedatalayout
    buffer*: Buffer

  Imagecopybuffer* = structwgpuimagecopybuffer ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1176:3
  structwgpuimagecopytexture* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1178:16
    texture*: Texture
    miplevel*: uint32
    origin*: Origin3d
    aspect*: Textureaspect

  Imagecopytexture* = structwgpuimagecopytexture ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1184:3
  structwgpuprogrammablestagedescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1186:16
    module*: Shadermodule
    entrypoint*: cstring
    constantcount*: csize_t
    constants*: ptr Constantentry

  Programmablestagedescriptor* = structwgpuprogrammablestagedescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1192:3
  structwgpurenderpasscolorattachment* {.pure, inheritable, bycopy.} = object
    view*: Textureview       ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1194:16
    resolvetarget*: Textureview
    loadop*: Loadop
    storeop*: Storeop
    clearvalue*: Color

  Renderpasscolorattachment* = structwgpurenderpasscolorattachment ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1200:3
  structwgpurequiredlimits* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1202:16
    limits*: Limits

  Requiredlimits* = structwgpurequiredlimits ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1205:3
  structwgpushadermoduledescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1207:16
    label*: cstring
    hintcount*: csize_t
    hints*: ptr Shadermodulecompilationhint

  Shadermoduledescriptor* = structwgpushadermoduledescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1212:3
  structwgpusupportedlimits* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstructout ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1214:16
    limits*: Limits

  Supportedlimits* = structwgpusupportedlimits ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1217:3
  structwgputexturedescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1219:16
    label*: cstring
    usage*: Textureusageflags
    dimension*: Texturedimension
    size*: Extent3d
    format*: Textureformat
    miplevelcount*: uint32
    samplecount*: uint32
    viewformatcount*: csize_t
    viewformats*: ptr Textureformat

  Texturedescriptor* = structwgputexturedescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1230:3
  structwgpuvertexbufferlayout* {.pure, inheritable, bycopy.} = object
    arraystride*: uint64     ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1232:16
    stepmode*: Vertexstepmode
    attributecount*: csize_t
    attributes*: ptr Vertexattribute

  Vertexbufferlayout* = structwgpuvertexbufferlayout ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1237:3
  structwgpubindgrouplayoutdescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1239:16
    label*: cstring
    entrycount*: csize_t
    entries*: ptr Bindgrouplayoutentry

  Bindgrouplayoutdescriptor* = structwgpubindgrouplayoutdescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1244:3
  structwgpucolortargetstate* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1246:16
    format*: Textureformat
    blend*: ptr Blendstate
    writemask*: Colorwritemaskflags

  Colortargetstate* = structwgpucolortargetstate ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1251:3
  structwgpucomputepipelinedescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1253:16
    label*: cstring
    layout*: Pipelinelayout
    compute*: Programmablestagedescriptor

  Computepipelinedescriptor* = structwgpucomputepipelinedescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1258:3
  structwgpudevicedescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1260:16
    label*: cstring
    requiredfeaturescount*: csize_t
    requiredfeatures*: ptr Featurename
    requiredlimits*: ptr Requiredlimits
    defaultqueue*: Queuedescriptor
    devicelostcallback*: Devicelostcallback
    devicelostuserdata*: pointer

  Devicedescriptor* = structwgpudevicedescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1269:3
  structwgpurenderpassdescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1271:16
    label*: cstring
    colorattachmentcount*: csize_t
    colorattachments*: ptr Renderpasscolorattachment
    depthstencilattachment*: ptr Renderpassdepthstencilattachment
    occlusionqueryset*: Queryset
    timestampwritecount*: csize_t
    timestampwrites*: ptr Renderpasstimestampwrite

  Renderpassdescriptor* = structwgpurenderpassdescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1280:3
  structwgpuvertexstate* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1282:16
    module*: Shadermodule
    entrypoint*: cstring
    constantcount*: csize_t
    constants*: ptr Constantentry
    buffercount*: csize_t
    buffers*: ptr Vertexbufferlayout

  Vertexstate* = structwgpuvertexstate ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1290:3
  structwgpufragmentstate* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1292:16
    module*: Shadermodule
    entrypoint*: cstring
    constantcount*: csize_t
    constants*: ptr Constantentry
    targetcount*: csize_t
    targets*: ptr Colortargetstate

  Fragmentstate* = structwgpufragmentstate ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1300:3
  structwgpurenderpipelinedescriptor* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1302:16
    label*: cstring
    layout*: Pipelinelayout
    vertex*: Vertexstate
    primitive*: Primitivestate
    depthstencil*: ptr Depthstencilstate
    multisample*: Multisamplestate
    fragment*: ptr Fragmentstate

  Renderpipelinedescriptor* = structwgpurenderpipelinedescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1311:3
  Proccreateinstance* = proc (a0: ptr Instancedescriptor): Instance {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1319:24
  Procgetprocaddress* = proc (a0: Device; a1: cstring): Proc {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1320:20
  Procadapterenumeratefeatures* = proc (a0: Adapter; a1: ptr Featurename): csize_t {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1323:18
  Procadaptergetlimits* = proc (a0: Adapter; a1: ptr Supportedlimits): bool {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1324:16
  Procadaptergetproperties* = proc (a0: Adapter; a1: ptr Adapterproperties): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1325:16
  Procadapterhasfeature* = proc (a0: Adapter; a1: Featurename): bool {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1326:16
  Procadapterrequestdevice* = proc (a0: Adapter; a1: ptr Devicedescriptor;
                                    a2: Requestdevicecallback; a3: pointer): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1327:16
  Procadapterreference* = proc (a0: Adapter): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1328:16
  Procadapterrelease* = proc (a0: Adapter): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1329:16
  Procbindgroupsetlabel* = proc (a0: Bindgroup; a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1332:16
  Procbindgroupreference* = proc (a0: Bindgroup): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1333:16
  Procbindgrouprelease* = proc (a0: Bindgroup): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1334:16
  Procbindgrouplayoutsetlabel* = proc (a0: Bindgrouplayout; a1: cstring): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1337:16
  Procbindgrouplayoutreference* = proc (a0: Bindgrouplayout): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1338:16
  Procbindgrouplayoutrelease* = proc (a0: Bindgrouplayout): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1339:16
  Procbufferdestroy* = proc (a0: Buffer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1342:16
  Procbuffergetconstmappedrange* = proc (a0: Buffer; a1: csize_t; a2: csize_t): pointer {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1343:24
  Procbuffergetmapstate* = proc (a0: Buffer): Buffermapstate {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1344:30
  Procbuffergetmappedrange* = proc (a0: Buffer; a1: csize_t; a2: csize_t): pointer {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1345:18
  Procbuffergetsize* = proc (a0: Buffer): uint64 {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1346:20
  Procbuffergetusage* = proc (a0: Buffer): Bufferusageflags {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1347:32
  Procbuffermapasync* = proc (a0: Buffer; a1: Mapmodeflags; a2: csize_t;
                              a3: csize_t; a4: Buffermapcallback; a5: pointer): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1348:16
  Procbuffersetlabel* = proc (a0: Buffer; a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1349:16
  Procbufferunmap* = proc (a0: Buffer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1350:16
  Procbufferreference* = proc (a0: Buffer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1351:16
  Procbufferrelease* = proc (a0: Buffer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1352:16
  Proccommandbuffersetlabel* = proc (a0: Commandbuffer; a1: cstring): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1355:16
  Proccommandbufferreference* = proc (a0: Commandbuffer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1356:16
  Proccommandbufferrelease* = proc (a0: Commandbuffer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1357:16
  Proccommandencoderbegincomputepass* = proc (a0: Commandencoder;
      a1: ptr Computepassdescriptor): Computepassencoder {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1360:34
  Proccommandencoderbeginrenderpass* = proc (a0: Commandencoder;
      a1: ptr Renderpassdescriptor): Renderpassencoder {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1361:33
  Proccommandencoderclearbuffer* = proc (a0: Commandencoder; a1: Buffer;
      a2: uint64; a3: uint64): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1362:16
  Proccommandencodercopybuffertobuffer* = proc (a0: Commandencoder; a1: Buffer;
      a2: uint64; a3: Buffer; a4: uint64; a5: uint64): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1363:16
  Proccommandencodercopybuffertotexture* = proc (a0: Commandencoder;
      a1: ptr Imagecopybuffer; a2: ptr Imagecopytexture; a3: ptr Extent3d): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1364:16
  Proccommandencodercopytexturetobuffer* = proc (a0: Commandencoder;
      a1: ptr Imagecopytexture; a2: ptr Imagecopybuffer; a3: ptr Extent3d): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1365:16
  Proccommandencodercopytexturetotexture* = proc (a0: Commandencoder;
      a1: ptr Imagecopytexture; a2: ptr Imagecopytexture; a3: ptr Extent3d): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1366:16
  Proccommandencoderfinish* = proc (a0: Commandencoder;
                                    a1: ptr Commandbufferdescriptor): Commandbuffer {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1367:29
  Proccommandencoderinsertdebugmarker* = proc (a0: Commandencoder; a1: cstring): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1368:16
  Proccommandencoderpopdebuggroup* = proc (a0: Commandencoder): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1369:16
  Proccommandencoderpushdebuggroup* = proc (a0: Commandencoder; a1: cstring): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1370:16
  Proccommandencoderresolvequeryset* = proc (a0: Commandencoder; a1: Queryset;
      a2: uint32; a3: uint32; a4: Buffer; a5: uint64): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1371:16
  Proccommandencodersetlabel* = proc (a0: Commandencoder; a1: cstring): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1372:16
  Proccommandencoderwritetimestamp* = proc (a0: Commandencoder; a1: Queryset;
      a2: uint32): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1373:16
  Proccommandencoderreference* = proc (a0: Commandencoder): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1374:16
  Proccommandencoderrelease* = proc (a0: Commandencoder): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1375:16
  Proccomputepassencoderbeginpipelinestatisticsquery* = proc (
      a0: Computepassencoder; a1: Queryset; a2: uint32): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1378:16
  Proccomputepassencoderdispatchworkgroups* = proc (a0: Computepassencoder;
      a1: uint32; a2: uint32; a3: uint32): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1379:16
  Proccomputepassencoderdispatchworkgroupsindirect* = proc (
      a0: Computepassencoder; a1: Buffer; a2: uint64): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1380:16
  Proccomputepassencoderend* = proc (a0: Computepassencoder): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1381:16
  Proccomputepassencoderendpipelinestatisticsquery* = proc (
      a0: Computepassencoder): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1382:16
  Proccomputepassencoderinsertdebugmarker* = proc (a0: Computepassencoder;
      a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1383:16
  Proccomputepassencoderpopdebuggroup* = proc (a0: Computepassencoder): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1384:16
  Proccomputepassencoderpushdebuggroup* = proc (a0: Computepassencoder;
      a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1385:16
  Proccomputepassencodersetbindgroup* = proc (a0: Computepassencoder;
      a1: uint32; a2: Bindgroup; a3: csize_t; a4: ptr uint32): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1386:16
  Proccomputepassencodersetlabel* = proc (a0: Computepassencoder; a1: cstring): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1387:16
  Proccomputepassencodersetpipeline* = proc (a0: Computepassencoder;
      a1: Computepipeline): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1388:16
  Proccomputepassencoderreference* = proc (a0: Computepassencoder): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1389:16
  Proccomputepassencoderrelease* = proc (a0: Computepassencoder): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1390:16
  Proccomputepipelinegetbindgrouplayout* = proc (a0: Computepipeline; a1: uint32): Bindgrouplayout {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1393:31
  Proccomputepipelinesetlabel* = proc (a0: Computepipeline; a1: cstring): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1394:16
  Proccomputepipelinereference* = proc (a0: Computepipeline): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1395:16
  Proccomputepipelinerelease* = proc (a0: Computepipeline): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1396:16
  Procdevicecreatebindgroup* = proc (a0: Device; a1: ptr Bindgroupdescriptor): Bindgroup {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1399:25
  Procdevicecreatebindgrouplayout* = proc (a0: Device;
      a1: ptr Bindgrouplayoutdescriptor): Bindgrouplayout {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1400:31
  Procdevicecreatebuffer* = proc (a0: Device; a1: ptr Bufferdescriptor): Buffer {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1401:22
  Procdevicecreatecommandencoder* = proc (a0: Device;
      a1: ptr Commandencoderdescriptor): Commandencoder {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1402:30
  Procdevicecreatecomputepipeline* = proc (a0: Device;
      a1: ptr Computepipelinedescriptor): Computepipeline {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1403:31
  Procdevicecreatecomputepipelineasync* = proc (a0: Device;
      a1: ptr Computepipelinedescriptor; a2: Createcomputepipelineasynccallback;
      a3: pointer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1404:16
  Procdevicecreatepipelinelayout* = proc (a0: Device;
      a1: ptr Pipelinelayoutdescriptor): Pipelinelayout {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1405:30
  Procdevicecreatequeryset* = proc (a0: Device; a1: ptr Querysetdescriptor): Queryset {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1406:24
  Procdevicecreaterenderbundleencoder* = proc (a0: Device;
      a1: ptr Renderbundleencoderdescriptor): Renderbundleencoder {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1407:35
  Procdevicecreaterenderpipeline* = proc (a0: Device;
      a1: ptr Renderpipelinedescriptor): Renderpipeline {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1408:30
  Procdevicecreaterenderpipelineasync* = proc (a0: Device;
      a1: ptr Renderpipelinedescriptor; a2: Createrenderpipelineasynccallback;
      a3: pointer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1409:16
  Procdevicecreatesampler* = proc (a0: Device; a1: ptr Samplerdescriptor): Sampler {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1410:23
  Procdevicecreateshadermodule* = proc (a0: Device;
                                        a1: ptr Shadermoduledescriptor): Shadermodule {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1411:28
  Procdevicecreateswapchain* = proc (a0: Device; a1: Surface;
                                     a2: ptr Swapchaindescriptor): Swapchain {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1412:25
  Procdevicecreatetexture* = proc (a0: Device; a1: ptr Texturedescriptor): Texture {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1413:23
  Procdevicedestroy* = proc (a0: Device): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1414:16
  Procdeviceenumeratefeatures* = proc (a0: Device; a1: ptr Featurename): csize_t {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1415:18
  Procdevicegetlimits* = proc (a0: Device; a1: ptr Supportedlimits): bool {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1416:16
  Procdevicegetqueue* = proc (a0: Device): Queue {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1417:21
  Procdevicehasfeature* = proc (a0: Device; a1: Featurename): bool {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1418:16
  Procdevicepoperrorscope* = proc (a0: Device; a1: Errorcallback; a2: pointer): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1419:16
  Procdevicepusherrorscope* = proc (a0: Device; a1: Errorfilter): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1420:16
  Procdevicesetlabel* = proc (a0: Device; a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1421:16
  Procdevicesetuncapturederrorcallback* = proc (a0: Device; a1: Errorcallback;
      a2: pointer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1422:16
  Procdevicereference* = proc (a0: Device): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1423:16
  Procdevicerelease* = proc (a0: Device): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1424:16
  Procinstancecreatesurface* = proc (a0: Instance; a1: ptr Surfacedescriptor): Surface {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1427:23
  Procinstanceprocessevents* = proc (a0: Instance): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1428:16
  Procinstancerequestadapter* = proc (a0: Instance;
                                      a1: ptr Requestadapteroptions;
                                      a2: Requestadaptercallback; a3: pointer): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1429:16
  Procinstancereference* = proc (a0: Instance): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1430:16
  Procinstancerelease* = proc (a0: Instance): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1431:16
  Procpipelinelayoutsetlabel* = proc (a0: Pipelinelayout; a1: cstring): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1434:16
  Procpipelinelayoutreference* = proc (a0: Pipelinelayout): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1435:16
  Procpipelinelayoutrelease* = proc (a0: Pipelinelayout): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1436:16
  Procquerysetdestroy* = proc (a0: Queryset): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1439:16
  Procquerysetgetcount* = proc (a0: Queryset): uint32 {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1440:20
  Procquerysetgettype* = proc (a0: Queryset): Querytype {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1441:25
  Procquerysetsetlabel* = proc (a0: Queryset; a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1442:16
  Procquerysetreference* = proc (a0: Queryset): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1443:16
  Procquerysetrelease* = proc (a0: Queryset): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1444:16
  Procqueueonsubmittedworkdone* = proc (a0: Queue; a1: Queueworkdonecallback;
                                        a2: pointer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1447:16
  Procqueuesetlabel* = proc (a0: Queue; a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1448:16
  Procqueuesubmit* = proc (a0: Queue; a1: csize_t; a2: ptr Commandbuffer): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1449:16
  Procqueuewritebuffer* = proc (a0: Queue; a1: Buffer; a2: uint64; a3: pointer;
                                a4: csize_t): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1450:16
  Procqueuewritetexture* = proc (a0: Queue; a1: ptr Imagecopytexture;
                                 a2: pointer; a3: csize_t;
                                 a4: ptr Texturedatalayout; a5: ptr Extent3d): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1451:16
  Procqueuereference* = proc (a0: Queue): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1452:16
  Procqueuerelease* = proc (a0: Queue): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1453:16
  Procrenderbundlesetlabel* = proc (a0: Renderbundle; a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1456:16
  Procrenderbundlereference* = proc (a0: Renderbundle): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1457:16
  Procrenderbundlerelease* = proc (a0: Renderbundle): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1458:16
  Procrenderbundleencoderdraw* = proc (a0: Renderbundleencoder; a1: uint32;
                                       a2: uint32; a3: uint32; a4: uint32): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1461:16
  Procrenderbundleencoderdrawindexed* = proc (a0: Renderbundleencoder;
      a1: uint32; a2: uint32; a3: uint32; a4: int32; a5: uint32): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1462:16
  Procrenderbundleencoderdrawindexedindirect* = proc (a0: Renderbundleencoder;
      a1: Buffer; a2: uint64): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1463:16
  Procrenderbundleencoderdrawindirect* = proc (a0: Renderbundleencoder;
      a1: Buffer; a2: uint64): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1464:16
  Procrenderbundleencoderfinish* = proc (a0: Renderbundleencoder;
      a1: ptr Renderbundledescriptor): Renderbundle {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1465:28
  Procrenderbundleencoderinsertdebugmarker* = proc (a0: Renderbundleencoder;
      a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1466:16
  Procrenderbundleencoderpopdebuggroup* = proc (a0: Renderbundleencoder): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1467:16
  Procrenderbundleencoderpushdebuggroup* = proc (a0: Renderbundleencoder;
      a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1468:16
  Procrenderbundleencodersetbindgroup* = proc (a0: Renderbundleencoder;
      a1: uint32; a2: Bindgroup; a3: csize_t; a4: ptr uint32): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1469:16
  Procrenderbundleencodersetindexbuffer* = proc (a0: Renderbundleencoder;
      a1: Buffer; a2: Indexformat; a3: uint64; a4: uint64): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1470:16
  Procrenderbundleencodersetlabel* = proc (a0: Renderbundleencoder; a1: cstring): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1471:16
  Procrenderbundleencodersetpipeline* = proc (a0: Renderbundleencoder;
      a1: Renderpipeline): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1472:16
  Procrenderbundleencodersetvertexbuffer* = proc (a0: Renderbundleencoder;
      a1: uint32; a2: Buffer; a3: uint64; a4: uint64): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1473:16
  Procrenderbundleencoderreference* = proc (a0: Renderbundleencoder): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1474:16
  Procrenderbundleencoderrelease* = proc (a0: Renderbundleencoder): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1475:16
  Procrenderpassencoderbeginocclusionquery* = proc (a0: Renderpassencoder;
      a1: uint32): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1478:16
  Procrenderpassencoderbeginpipelinestatisticsquery* = proc (
      a0: Renderpassencoder; a1: Queryset; a2: uint32): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1479:16
  Procrenderpassencoderdraw* = proc (a0: Renderpassencoder; a1: uint32;
                                     a2: uint32; a3: uint32; a4: uint32): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1480:16
  Procrenderpassencoderdrawindexed* = proc (a0: Renderpassencoder; a1: uint32;
      a2: uint32; a3: uint32; a4: int32; a5: uint32): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1481:16
  Procrenderpassencoderdrawindexedindirect* = proc (a0: Renderpassencoder;
      a1: Buffer; a2: uint64): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1482:16
  Procrenderpassencoderdrawindirect* = proc (a0: Renderpassencoder; a1: Buffer;
      a2: uint64): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1483:16
  Procrenderpassencoderend* = proc (a0: Renderpassencoder): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1484:16
  Procrenderpassencoderendocclusionquery* = proc (a0: Renderpassencoder): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1485:16
  Procrenderpassencoderendpipelinestatisticsquery* = proc (a0: Renderpassencoder): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1486:16
  Procrenderpassencoderexecutebundles* = proc (a0: Renderpassencoder;
      a1: csize_t; a2: ptr Renderbundle): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1487:16
  Procrenderpassencoderinsertdebugmarker* = proc (a0: Renderpassencoder;
      a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1488:16
  Procrenderpassencoderpopdebuggroup* = proc (a0: Renderpassencoder): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1489:16
  Procrenderpassencoderpushdebuggroup* = proc (a0: Renderpassencoder;
      a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1490:16
  Procrenderpassencodersetbindgroup* = proc (a0: Renderpassencoder; a1: uint32;
      a2: Bindgroup; a3: csize_t; a4: ptr uint32): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1491:16
  Procrenderpassencodersetblendconstant* = proc (a0: Renderpassencoder;
      a1: ptr Color): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1492:16
  Procrenderpassencodersetindexbuffer* = proc (a0: Renderpassencoder;
      a1: Buffer; a2: Indexformat; a3: uint64; a4: uint64): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1493:16
  Procrenderpassencodersetlabel* = proc (a0: Renderpassencoder; a1: cstring): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1494:16
  Procrenderpassencodersetpipeline* = proc (a0: Renderpassencoder;
      a1: Renderpipeline): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1495:16
  Procrenderpassencodersetscissorrect* = proc (a0: Renderpassencoder;
      a1: uint32; a2: uint32; a3: uint32; a4: uint32): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1496:16
  Procrenderpassencodersetstencilreference* = proc (a0: Renderpassencoder;
      a1: uint32): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1497:16
  Procrenderpassencodersetvertexbuffer* = proc (a0: Renderpassencoder;
      a1: uint32; a2: Buffer; a3: uint64; a4: uint64): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1498:16
  Procrenderpassencodersetviewport* = proc (a0: Renderpassencoder; a1: cfloat;
      a2: cfloat; a3: cfloat; a4: cfloat; a5: cfloat; a6: cfloat): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1499:16
  Procrenderpassencoderreference* = proc (a0: Renderpassencoder): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1500:16
  Procrenderpassencoderrelease* = proc (a0: Renderpassencoder): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1501:16
  Procrenderpipelinegetbindgrouplayout* = proc (a0: Renderpipeline; a1: uint32): Bindgrouplayout {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1504:31
  Procrenderpipelinesetlabel* = proc (a0: Renderpipeline; a1: cstring): void {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1505:16
  Procrenderpipelinereference* = proc (a0: Renderpipeline): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1506:16
  Procrenderpipelinerelease* = proc (a0: Renderpipeline): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1507:16
  Procsamplersetlabel* = proc (a0: Sampler; a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1510:16
  Procsamplerreference* = proc (a0: Sampler): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1511:16
  Procsamplerrelease* = proc (a0: Sampler): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1512:16
  Procshadermodulegetcompilationinfo* = proc (a0: Shadermodule;
      a1: Compilationinfocallback; a2: pointer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1515:16
  Procshadermodulesetlabel* = proc (a0: Shadermodule; a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1516:16
  Procshadermodulereference* = proc (a0: Shadermodule): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1517:16
  Procshadermodulerelease* = proc (a0: Shadermodule): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1518:16
  Procsurfacegetpreferredformat* = proc (a0: Surface; a1: Adapter): Textureformat {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1521:29
  Procsurfacereference* = proc (a0: Surface): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1522:16
  Procsurfacerelease* = proc (a0: Surface): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1523:16
  Procswapchaingetcurrenttextureview* = proc (a0: Swapchain): Textureview {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1526:27
  Procswapchainpresent* = proc (a0: Swapchain): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1527:16
  Procswapchainreference* = proc (a0: Swapchain): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1528:16
  Procswapchainrelease* = proc (a0: Swapchain): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1529:16
  Proctexturecreateview* = proc (a0: Texture; a1: ptr Textureviewdescriptor): Textureview {.
      cdecl.}                ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1532:27
  Proctexturedestroy* = proc (a0: Texture): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1533:16
  Proctexturegetdepthorarraylayers* = proc (a0: Texture): uint32 {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1534:20
  Proctexturegetdimension* = proc (a0: Texture): Texturedimension {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1535:32
  Proctexturegetformat* = proc (a0: Texture): Textureformat {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1536:29
  Proctexturegetheight* = proc (a0: Texture): uint32 {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1537:20
  Proctexturegetmiplevelcount* = proc (a0: Texture): uint32 {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1538:20
  Proctexturegetsamplecount* = proc (a0: Texture): uint32 {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1539:20
  Proctexturegetusage* = proc (a0: Texture): Textureusageflags {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1540:33
  Proctexturegetwidth* = proc (a0: Texture): uint32 {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1541:20
  Proctexturesetlabel* = proc (a0: Texture; a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1542:16
  Proctexturereference* = proc (a0: Texture): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1543:16
  Proctexturerelease* = proc (a0: Texture): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1544:16
  Proctextureviewsetlabel* = proc (a0: Textureview; a1: cstring): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1547:16
  Proctextureviewreference* = proc (a0: Textureview): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1548:16
  Proctextureviewrelease* = proc (a0: Textureview): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:1549:16
  Nativestype* = enumwgpunativestype ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:17:3
  Nativefeature* = enumwgpunativefeature ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:26:3
  Loglevel* = enumwgpuloglevel ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:36:3
  Instancebackend* = enumwgpuinstancebackend ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:51:3
  Instancebackendflags* = Flags ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:52:19
  Dx12compiler* = enumwgpudx12compiler ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:59:3
  Compositealphamode* = enumwgpucompositealphamode ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:68:3
  structwgpuinstanceextras* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:70:16
    backends*: Instancebackendflags
    dx12shadercompiler*: Dx12compiler
    dxilpath*: cstring
    dxcpath*: cstring

  Instanceextras* = structwgpuinstanceextras ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:76:3
  structwgpudeviceextras* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:78:16
    tracepath*: cstring

  Deviceextras* = structwgpudeviceextras ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:81:3
  structwgpurequiredlimitsextras* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:83:16
    maxpushconstantsize*: uint32

  Requiredlimitsextras* = structwgpurequiredlimitsextras ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:86:3
  structwgpusupportedlimitsextras* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstructout ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:88:16
    maxpushconstantsize*: uint32

  Supportedlimitsextras* = structwgpusupportedlimitsextras ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:91:3
  structwgpupushconstantrange* {.pure, inheritable, bycopy.} = object
    stages*: Shaderstageflags ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:93:16
    start*: uint32
    endfield*: uint32

  Pushconstantrange* = structwgpupushconstantrange ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:97:3
  structwgpupipelinelayoutextras* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:99:16
    pushconstantrangecount*: uint32
    pushconstantranges*: ptr Pushconstantrange

  Pipelinelayoutextras* = structwgpupipelinelayoutextras ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:103:3
  Submissionindex* = uint64  ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:105:18
  structwgpuwrappedsubmissionindex* {.pure, inheritable, bycopy.} = object
    queue*: Queue            ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:107:16
    submissionindex*: Submissionindex

  Wrappedsubmissionindex* = structwgpuwrappedsubmissionindex ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:110:3
  structwgpushaderdefine* {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:112:16
    value*: cstring

  Shaderdefine* = structwgpushaderdefine ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:115:3
  structwgpushadermoduleglsldescriptor* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:117:16
    stage*: Shaderstage
    code*: cstring
    definecount*: uint32
    defines*: ptr Shaderdefine

  Shadermoduleglsldescriptor* = structwgpushadermoduleglsldescriptor ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:123:3
  structwgpustoragereport* {.pure, inheritable, bycopy.} = object
    numoccupied*: csize_t    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:125:16
    numvacant*: csize_t
    numerror*: csize_t
    elementsize*: csize_t

  Storagereport* = structwgpustoragereport ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:130:3
  structwgpuhubreport* {.pure, inheritable, bycopy.} = object
    adapters*: Storagereport ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:132:16
    devices*: Storagereport
    pipelinelayouts*: Storagereport
    shadermodules*: Storagereport
    bindgrouplayouts*: Storagereport
    bindgroups*: Storagereport
    commandbuffers*: Storagereport
    renderbundles*: Storagereport
    renderpipelines*: Storagereport
    computepipelines*: Storagereport
    querysets*: Storagereport
    buffers*: Storagereport
    textures*: Storagereport
    textureviews*: Storagereport
    samplers*: Storagereport

  Hubreport* = structwgpuhubreport ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:148:3
  structwgpuglobalreport* {.pure, inheritable, bycopy.} = object
    surfaces*: Storagereport ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:150:16
    backendtype*: Backendtype
    vulkan*: Hubreport
    metal*: Hubreport
    dx12*: Hubreport
    dx11*: Hubreport
    gl*: Hubreport

  Globalreport* = structwgpuglobalreport ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:158:3
  structwgpusurfacecapabilities* {.pure, inheritable, bycopy.} = object
    formatcount*: csize_t    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:160:16
    formats*: ptr Textureformat
    presentmodecount*: csize_t
    presentmodes*: ptr Presentmode
    alphamodecount*: csize_t
    alphamodes*: ptr Compositealphamode

  Surfacecapabilities* = structwgpusurfacecapabilities ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:167:3
  structwgpuswapchaindescriptorextras* {.pure, inheritable, bycopy.} = object
    chain*: Chainedstruct    ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:169:16
    alphamode*: Compositealphamode
    viewformatcount*: csize_t
    viewformats*: ptr Textureformat

  Swapchaindescriptorextras* = structwgpuswapchaindescriptorextras ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:174:3
  structwgpuinstanceenumerateadapteroptions* {.pure, inheritable, bycopy.} = object
    nextinchain*: ptr Chainedstruct ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:176:16
    backends*: Instancebackendflags

  Instanceenumerateadapteroptions* = structwgpuinstanceenumerateadapteroptions ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:179:3
  Logcallback* = proc (a0: Loglevel; a1: cstring; a2: pointer): void {.cdecl.} ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/wgpu.h:181:16
when cast[culong](4294967295'i64) is static:
  const
    internalarraylayercountundefined* = cast[culong](4294967295'i64) ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:71:9
else:
  let internalarraylayercountundefined* = cast[culong](4294967295'i64) ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:71:9
when cast[culong](4294967295'i64) is static:
  const
    internalcopystrideundefined* = cast[culong](4294967295'i64) ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:72:9
else:
  let internalcopystrideundefined* = cast[culong](4294967295'i64) ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:72:9
when cast[culong](4294967295'i64) is static:
  const
    internallimitu32undefined* = cast[culong](4294967295'i64) ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:73:9
else:
  let internallimitu32undefined* = cast[culong](4294967295'i64) ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:73:9
when cast[culonglong](-1'i64) is static:
  const
    internallimitu64undefined* = cast[culonglong](-1'i64) ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:74:9
else:
  let internallimitu64undefined* = cast[culonglong](-1'i64) ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:74:9
when cast[culong](4294967295'i64) is static:
  const
    internalmiplevelcountundefined* = cast[culong](4294967295'i64) ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:75:9
else:
  let internalmiplevelcountundefined* = cast[culong](4294967295'i64) ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:75:9
when cast[culong](18446744073709551615'u) is static:
  const
    Sizemax* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:216:11
else:
  let Sizemax* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:216:11
when cast[culonglong](-1'i64) is static:
  const
    internalwholesize* = cast[culonglong](-1'i64) ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:77:9
else:
  let internalwholesize* = cast[culonglong](-1'i64) ## Generated based on /ssd/dev/gd/other/fu/wgpu/src/wgpu/C/wgpu-native/ffi/webgpu-headers/webgpu.h:77:9
proc Createinstance*(descriptor: ptr Instancedescriptor): Instance {.cdecl,
    importc: "wgpuCreateInstance".}
proc Getprocaddress*(device: Device; procname: cstring): Proc {.cdecl,
    importc: "wgpuGetProcAddress".}
proc Adapterenumeratefeatures*(adapter: Adapter; features: ptr Featurename): csize_t {.
    cdecl, importc: "wgpuAdapterEnumerateFeatures".}
proc Adaptergetlimits*(adapter: Adapter; limits: ptr Supportedlimits): bool {.
    cdecl, importc: "wgpuAdapterGetLimits".}
proc Adaptergetproperties*(adapter: Adapter; properties: ptr Adapterproperties): void {.
    cdecl, importc: "wgpuAdapterGetProperties".}
proc Adapterhasfeature*(adapter: Adapter; feature: Featurename): bool {.cdecl,
    importc: "wgpuAdapterHasFeature".}
proc Adapterrequestdevice*(adapter: Adapter; descriptor: ptr Devicedescriptor;
                           callback: Requestdevicecallback; userdata: pointer): void {.
    cdecl, importc: "wgpuAdapterRequestDevice".}
proc Adapterreference*(adapter: Adapter): void {.cdecl,
    importc: "wgpuAdapterReference".}
proc Adapterrelease*(adapter: Adapter): void {.cdecl,
    importc: "wgpuAdapterRelease".}
proc Bindgroupsetlabel*(bindgroup: Bindgroup; label: cstring): void {.cdecl,
    importc: "wgpuBindGroupSetLabel".}
proc Bindgroupreference*(bindgroup: Bindgroup): void {.cdecl,
    importc: "wgpuBindGroupReference".}
proc Bindgrouprelease*(bindgroup: Bindgroup): void {.cdecl,
    importc: "wgpuBindGroupRelease".}
proc Bindgrouplayoutsetlabel*(bindgrouplayout: Bindgrouplayout; label: cstring): void {.
    cdecl, importc: "wgpuBindGroupLayoutSetLabel".}
proc Bindgrouplayoutreference*(bindgrouplayout: Bindgrouplayout): void {.cdecl,
    importc: "wgpuBindGroupLayoutReference".}
proc Bindgrouplayoutrelease*(bindgrouplayout: Bindgrouplayout): void {.cdecl,
    importc: "wgpuBindGroupLayoutRelease".}
proc Bufferdestroy*(buffer: Buffer): void {.cdecl, importc: "wgpuBufferDestroy".}
proc Buffergetconstmappedrange*(buffer: Buffer; offset: csize_t; size: csize_t): pointer {.
    cdecl, importc: "wgpuBufferGetConstMappedRange".}
proc Buffergetmapstate*(buffer: Buffer): Buffermapstate {.cdecl,
    importc: "wgpuBufferGetMapState".}
proc Buffergetmappedrange*(buffer: Buffer; offset: csize_t; size: csize_t): pointer {.
    cdecl, importc: "wgpuBufferGetMappedRange".}
proc Buffergetsize*(buffer: Buffer): uint64 {.cdecl,
    importc: "wgpuBufferGetSize".}
proc Buffergetusage*(buffer: Buffer): Bufferusageflags {.cdecl,
    importc: "wgpuBufferGetUsage".}
proc Buffermapasync*(buffer: Buffer; mode: Mapmodeflags; offset: csize_t;
                     size: csize_t; callback: Buffermapcallback;
                     userdata: pointer): void {.cdecl,
    importc: "wgpuBufferMapAsync".}
proc Buffersetlabel*(buffer: Buffer; label: cstring): void {.cdecl,
    importc: "wgpuBufferSetLabel".}
proc Bufferunmap*(buffer: Buffer): void {.cdecl, importc: "wgpuBufferUnmap".}
proc Bufferreference*(buffer: Buffer): void {.cdecl,
    importc: "wgpuBufferReference".}
proc Bufferrelease*(buffer: Buffer): void {.cdecl, importc: "wgpuBufferRelease".}
proc Commandbuffersetlabel*(commandbuffer: Commandbuffer; label: cstring): void {.
    cdecl, importc: "wgpuCommandBufferSetLabel".}
proc Commandbufferreference*(commandbuffer: Commandbuffer): void {.cdecl,
    importc: "wgpuCommandBufferReference".}
proc Commandbufferrelease*(commandbuffer: Commandbuffer): void {.cdecl,
    importc: "wgpuCommandBufferRelease".}
proc Commandencoderbegincomputepass*(commandencoder: Commandencoder;
                                     descriptor: ptr Computepassdescriptor): Computepassencoder {.
    cdecl, importc: "wgpuCommandEncoderBeginComputePass".}
proc Commandencoderbeginrenderpass*(commandencoder: Commandencoder;
                                    descriptor: ptr Renderpassdescriptor): Renderpassencoder {.
    cdecl, importc: "wgpuCommandEncoderBeginRenderPass".}
proc Commandencoderclearbuffer*(commandencoder: Commandencoder; buffer: Buffer;
                                offset: uint64; size: uint64): void {.cdecl,
    importc: "wgpuCommandEncoderClearBuffer".}
proc Commandencodercopybuffertobuffer*(commandencoder: Commandencoder;
                                       source: Buffer; sourceoffset: uint64;
                                       destination: Buffer;
                                       destinationoffset: uint64; size: uint64): void {.
    cdecl, importc: "wgpuCommandEncoderCopyBufferToBuffer".}
proc Commandencodercopybuffertotexture*(commandencoder: Commandencoder;
                                        source: ptr Imagecopybuffer;
                                        destination: ptr Imagecopytexture;
                                        copysize: ptr Extent3d): void {.cdecl,
    importc: "wgpuCommandEncoderCopyBufferToTexture".}
proc Commandencodercopytexturetobuffer*(commandencoder: Commandencoder;
                                        source: ptr Imagecopytexture;
                                        destination: ptr Imagecopybuffer;
                                        copysize: ptr Extent3d): void {.cdecl,
    importc: "wgpuCommandEncoderCopyTextureToBuffer".}
proc Commandencodercopytexturetotexture*(commandencoder: Commandencoder;
    source: ptr Imagecopytexture; destination: ptr Imagecopytexture;
    copysize: ptr Extent3d): void {.cdecl, importc: "wgpuCommandEncoderCopyTextureToTexture".}
proc Commandencoderfinish*(commandencoder: Commandencoder;
                           descriptor: ptr Commandbufferdescriptor): Commandbuffer {.
    cdecl, importc: "wgpuCommandEncoderFinish".}
proc Commandencoderinsertdebugmarker*(commandencoder: Commandencoder;
                                      markerlabel: cstring): void {.cdecl,
    importc: "wgpuCommandEncoderInsertDebugMarker".}
proc Commandencoderpopdebuggroup*(commandencoder: Commandencoder): void {.cdecl,
    importc: "wgpuCommandEncoderPopDebugGroup".}
proc Commandencoderpushdebuggroup*(commandencoder: Commandencoder;
                                   grouplabel: cstring): void {.cdecl,
    importc: "wgpuCommandEncoderPushDebugGroup".}
proc Commandencoderresolvequeryset*(commandencoder: Commandencoder;
                                    queryset: Queryset; firstquery: uint32;
                                    querycount: uint32; destination: Buffer;
                                    destinationoffset: uint64): void {.cdecl,
    importc: "wgpuCommandEncoderResolveQuerySet".}
proc Commandencodersetlabel*(commandencoder: Commandencoder; label: cstring): void {.
    cdecl, importc: "wgpuCommandEncoderSetLabel".}
proc Commandencoderwritetimestamp*(commandencoder: Commandencoder;
                                   queryset: Queryset; queryindex: uint32): void {.
    cdecl, importc: "wgpuCommandEncoderWriteTimestamp".}
proc Commandencoderreference*(commandencoder: Commandencoder): void {.cdecl,
    importc: "wgpuCommandEncoderReference".}
proc Commandencoderrelease*(commandencoder: Commandencoder): void {.cdecl,
    importc: "wgpuCommandEncoderRelease".}
proc Computepassencoderbeginpipelinestatisticsquery*(
    computepassencoder: Computepassencoder; queryset: Queryset;
    queryindex: uint32): void {.cdecl, importc: "wgpuComputePassEncoderBeginPipelineStatisticsQuery".}
proc Computepassencoderdispatchworkgroups*(
    computepassencoder: Computepassencoder; workgroupcountx: uint32;
    workgroupcounty: uint32; workgroupcountz: uint32): void {.cdecl,
    importc: "wgpuComputePassEncoderDispatchWorkgroups".}
proc Computepassencoderdispatchworkgroupsindirect*(
    computepassencoder: Computepassencoder; indirectbuffer: Buffer;
    indirectoffset: uint64): void {.cdecl, importc: "wgpuComputePassEncoderDispatchWorkgroupsIndirect".}
proc Computepassencoderend*(computepassencoder: Computepassencoder): void {.
    cdecl, importc: "wgpuComputePassEncoderEnd".}
proc Computepassencoderendpipelinestatisticsquery*(
    computepassencoder: Computepassencoder): void {.cdecl,
    importc: "wgpuComputePassEncoderEndPipelineStatisticsQuery".}
proc Computepassencoderinsertdebugmarker*(
    computepassencoder: Computepassencoder; markerlabel: cstring): void {.cdecl,
    importc: "wgpuComputePassEncoderInsertDebugMarker".}
proc Computepassencoderpopdebuggroup*(computepassencoder: Computepassencoder): void {.
    cdecl, importc: "wgpuComputePassEncoderPopDebugGroup".}
proc Computepassencoderpushdebuggroup*(computepassencoder: Computepassencoder;
                                       grouplabel: cstring): void {.cdecl,
    importc: "wgpuComputePassEncoderPushDebugGroup".}
proc Computepassencodersetbindgroup*(computepassencoder: Computepassencoder;
                                     groupindex: uint32; group: Bindgroup;
                                     dynamicoffsetcount: csize_t;
                                     dynamicoffsets: ptr uint32): void {.cdecl,
    importc: "wgpuComputePassEncoderSetBindGroup".}
proc Computepassencodersetlabel*(computepassencoder: Computepassencoder;
                                 label: cstring): void {.cdecl,
    importc: "wgpuComputePassEncoderSetLabel".}
proc Computepassencodersetpipeline*(computepassencoder: Computepassencoder;
                                    pipeline: Computepipeline): void {.cdecl,
    importc: "wgpuComputePassEncoderSetPipeline".}
proc Computepassencoderreference*(computepassencoder: Computepassencoder): void {.
    cdecl, importc: "wgpuComputePassEncoderReference".}
proc Computepassencoderrelease*(computepassencoder: Computepassencoder): void {.
    cdecl, importc: "wgpuComputePassEncoderRelease".}
proc Computepipelinegetbindgrouplayout*(computepipeline: Computepipeline;
                                        groupindex: uint32): Bindgrouplayout {.
    cdecl, importc: "wgpuComputePipelineGetBindGroupLayout".}
proc Computepipelinesetlabel*(computepipeline: Computepipeline; label: cstring): void {.
    cdecl, importc: "wgpuComputePipelineSetLabel".}
proc Computepipelinereference*(computepipeline: Computepipeline): void {.cdecl,
    importc: "wgpuComputePipelineReference".}
proc Computepipelinerelease*(computepipeline: Computepipeline): void {.cdecl,
    importc: "wgpuComputePipelineRelease".}
proc Devicecreatebindgroup*(device: Device; descriptor: ptr Bindgroupdescriptor): Bindgroup {.
    cdecl, importc: "wgpuDeviceCreateBindGroup".}
proc Devicecreatebindgrouplayout*(device: Device;
                                  descriptor: ptr Bindgrouplayoutdescriptor): Bindgrouplayout {.
    cdecl, importc: "wgpuDeviceCreateBindGroupLayout".}
proc Devicecreatebuffer*(device: Device; descriptor: ptr Bufferdescriptor): Buffer {.
    cdecl, importc: "wgpuDeviceCreateBuffer".}
proc Devicecreatecommandencoder*(device: Device;
                                 descriptor: ptr Commandencoderdescriptor): Commandencoder {.
    cdecl, importc: "wgpuDeviceCreateCommandEncoder".}
proc Devicecreatecomputepipeline*(device: Device;
                                  descriptor: ptr Computepipelinedescriptor): Computepipeline {.
    cdecl, importc: "wgpuDeviceCreateComputePipeline".}
proc Devicecreatecomputepipelineasync*(device: Device; descriptor: ptr Computepipelinedescriptor;
    callback: Createcomputepipelineasynccallback; userdata: pointer): void {.
    cdecl, importc: "wgpuDeviceCreateComputePipelineAsync".}
proc Devicecreatepipelinelayout*(device: Device;
                                 descriptor: ptr Pipelinelayoutdescriptor): Pipelinelayout {.
    cdecl, importc: "wgpuDeviceCreatePipelineLayout".}
proc Devicecreatequeryset*(device: Device; descriptor: ptr Querysetdescriptor): Queryset {.
    cdecl, importc: "wgpuDeviceCreateQuerySet".}
proc Devicecreaterenderbundleencoder*(device: Device; descriptor: ptr Renderbundleencoderdescriptor): Renderbundleencoder {.
    cdecl, importc: "wgpuDeviceCreateRenderBundleEncoder".}
proc Devicecreaterenderpipeline*(device: Device;
                                 descriptor: ptr Renderpipelinedescriptor): Renderpipeline {.
    cdecl, importc: "wgpuDeviceCreateRenderPipeline".}
proc Devicecreaterenderpipelineasync*(device: Device;
                                      descriptor: ptr Renderpipelinedescriptor;
    callback: Createrenderpipelineasynccallback; userdata: pointer): void {.
    cdecl, importc: "wgpuDeviceCreateRenderPipelineAsync".}
proc Devicecreatesampler*(device: Device; descriptor: ptr Samplerdescriptor): Sampler {.
    cdecl, importc: "wgpuDeviceCreateSampler".}
proc Devicecreateshadermodule*(device: Device;
                               descriptor: ptr Shadermoduledescriptor): Shadermodule {.
    cdecl, importc: "wgpuDeviceCreateShaderModule".}
proc Devicecreateswapchain*(device: Device; surface: Surface;
                            descriptor: ptr Swapchaindescriptor): Swapchain {.
    cdecl, importc: "wgpuDeviceCreateSwapChain".}
proc Devicecreatetexture*(device: Device; descriptor: ptr Texturedescriptor): Texture {.
    cdecl, importc: "wgpuDeviceCreateTexture".}
proc Devicedestroy*(device: Device): void {.cdecl, importc: "wgpuDeviceDestroy".}
proc Deviceenumeratefeatures*(device: Device; features: ptr Featurename): csize_t {.
    cdecl, importc: "wgpuDeviceEnumerateFeatures".}
proc Devicegetlimits*(device: Device; limits: ptr Supportedlimits): bool {.
    cdecl, importc: "wgpuDeviceGetLimits".}
proc Devicegetqueue*(device: Device): Queue {.cdecl,
    importc: "wgpuDeviceGetQueue".}
proc Devicehasfeature*(device: Device; feature: Featurename): bool {.cdecl,
    importc: "wgpuDeviceHasFeature".}
proc Devicepoperrorscope*(device: Device; callback: Errorcallback;
                          userdata: pointer): void {.cdecl,
    importc: "wgpuDevicePopErrorScope".}
proc Devicepusherrorscope*(device: Device; filter: Errorfilter): void {.cdecl,
    importc: "wgpuDevicePushErrorScope".}
proc Devicesetlabel*(device: Device; label: cstring): void {.cdecl,
    importc: "wgpuDeviceSetLabel".}
proc Devicesetuncapturederrorcallback*(device: Device; callback: Errorcallback;
                                       userdata: pointer): void {.cdecl,
    importc: "wgpuDeviceSetUncapturedErrorCallback".}
proc Devicereference*(device: Device): void {.cdecl,
    importc: "wgpuDeviceReference".}
proc Devicerelease*(device: Device): void {.cdecl, importc: "wgpuDeviceRelease".}
proc Instancecreatesurface*(instance: Instance;
                            descriptor: ptr Surfacedescriptor): Surface {.cdecl,
    importc: "wgpuInstanceCreateSurface".}
proc Instanceprocessevents*(instance: Instance): void {.cdecl,
    importc: "wgpuInstanceProcessEvents".}
proc Instancerequestadapter*(instance: Instance;
                             options: ptr Requestadapteroptions;
                             callback: Requestadaptercallback; userdata: pointer): void {.
    cdecl, importc: "wgpuInstanceRequestAdapter".}
proc Instancereference*(instance: Instance): void {.cdecl,
    importc: "wgpuInstanceReference".}
proc Instancerelease*(instance: Instance): void {.cdecl,
    importc: "wgpuInstanceRelease".}
proc Pipelinelayoutsetlabel*(pipelinelayout: Pipelinelayout; label: cstring): void {.
    cdecl, importc: "wgpuPipelineLayoutSetLabel".}
proc Pipelinelayoutreference*(pipelinelayout: Pipelinelayout): void {.cdecl,
    importc: "wgpuPipelineLayoutReference".}
proc Pipelinelayoutrelease*(pipelinelayout: Pipelinelayout): void {.cdecl,
    importc: "wgpuPipelineLayoutRelease".}
proc Querysetdestroy*(queryset: Queryset): void {.cdecl,
    importc: "wgpuQuerySetDestroy".}
proc Querysetgetcount*(queryset: Queryset): uint32 {.cdecl,
    importc: "wgpuQuerySetGetCount".}
proc Querysetgettype*(queryset: Queryset): Querytype {.cdecl,
    importc: "wgpuQuerySetGetType".}
proc Querysetsetlabel*(queryset: Queryset; label: cstring): void {.cdecl,
    importc: "wgpuQuerySetSetLabel".}
proc Querysetreference*(queryset: Queryset): void {.cdecl,
    importc: "wgpuQuerySetReference".}
proc Querysetrelease*(queryset: Queryset): void {.cdecl,
    importc: "wgpuQuerySetRelease".}
proc Queueonsubmittedworkdone*(queue: Queue; callback: Queueworkdonecallback;
                               userdata: pointer): void {.cdecl,
    importc: "wgpuQueueOnSubmittedWorkDone".}
proc Queuesetlabel*(queue: Queue; label: cstring): void {.cdecl,
    importc: "wgpuQueueSetLabel".}
proc Queuesubmit*(queue: Queue; commandcount: csize_t;
                  commands: ptr Commandbuffer): void {.cdecl,
    importc: "wgpuQueueSubmit".}
proc Queuewritebuffer*(queue: Queue; buffer: Buffer; bufferoffset: uint64;
                       data: pointer; size: csize_t): void {.cdecl,
    importc: "wgpuQueueWriteBuffer".}
proc Queuewritetexture*(queue: Queue; destination: ptr Imagecopytexture;
                        data: pointer; datasize: csize_t;
                        datalayout: ptr Texturedatalayout;
                        writesize: ptr Extent3d): void {.cdecl,
    importc: "wgpuQueueWriteTexture".}
proc Queuereference*(queue: Queue): void {.cdecl, importc: "wgpuQueueReference".}
proc Queuerelease*(queue: Queue): void {.cdecl, importc: "wgpuQueueRelease".}
proc Renderbundlesetlabel*(renderbundle: Renderbundle; label: cstring): void {.
    cdecl, importc: "wgpuRenderBundleSetLabel".}
proc Renderbundlereference*(renderbundle: Renderbundle): void {.cdecl,
    importc: "wgpuRenderBundleReference".}
proc Renderbundlerelease*(renderbundle: Renderbundle): void {.cdecl,
    importc: "wgpuRenderBundleRelease".}
proc Renderbundleencoderdraw*(renderbundleencoder: Renderbundleencoder;
                              vertexcount: uint32; instancecount: uint32;
                              firstvertex: uint32; firstinstance: uint32): void {.
    cdecl, importc: "wgpuRenderBundleEncoderDraw".}
proc Renderbundleencoderdrawindexed*(renderbundleencoder: Renderbundleencoder;
                                     indexcount: uint32; instancecount: uint32;
                                     firstindex: uint32; basevertex: int32;
                                     firstinstance: uint32): void {.cdecl,
    importc: "wgpuRenderBundleEncoderDrawIndexed".}
proc Renderbundleencoderdrawindexedindirect*(
    renderbundleencoder: Renderbundleencoder; indirectbuffer: Buffer;
    indirectoffset: uint64): void {.cdecl, importc: "wgpuRenderBundleEncoderDrawIndexedIndirect".}
proc Renderbundleencoderdrawindirect*(renderbundleencoder: Renderbundleencoder;
                                      indirectbuffer: Buffer;
                                      indirectoffset: uint64): void {.cdecl,
    importc: "wgpuRenderBundleEncoderDrawIndirect".}
proc Renderbundleencoderfinish*(renderbundleencoder: Renderbundleencoder;
                                descriptor: ptr Renderbundledescriptor): Renderbundle {.
    cdecl, importc: "wgpuRenderBundleEncoderFinish".}
proc Renderbundleencoderinsertdebugmarker*(
    renderbundleencoder: Renderbundleencoder; markerlabel: cstring): void {.
    cdecl, importc: "wgpuRenderBundleEncoderInsertDebugMarker".}
proc Renderbundleencoderpopdebuggroup*(renderbundleencoder: Renderbundleencoder): void {.
    cdecl, importc: "wgpuRenderBundleEncoderPopDebugGroup".}
proc Renderbundleencoderpushdebuggroup*(renderbundleencoder: Renderbundleencoder;
                                        grouplabel: cstring): void {.cdecl,
    importc: "wgpuRenderBundleEncoderPushDebugGroup".}
proc Renderbundleencodersetbindgroup*(renderbundleencoder: Renderbundleencoder;
                                      groupindex: uint32; group: Bindgroup;
                                      dynamicoffsetcount: csize_t;
                                      dynamicoffsets: ptr uint32): void {.cdecl,
    importc: "wgpuRenderBundleEncoderSetBindGroup".}
proc Renderbundleencodersetindexbuffer*(renderbundleencoder: Renderbundleencoder;
                                        buffer: Buffer; format: Indexformat;
                                        offset: uint64; size: uint64): void {.
    cdecl, importc: "wgpuRenderBundleEncoderSetIndexBuffer".}
proc Renderbundleencodersetlabel*(renderbundleencoder: Renderbundleencoder;
                                  label: cstring): void {.cdecl,
    importc: "wgpuRenderBundleEncoderSetLabel".}
proc Renderbundleencodersetpipeline*(renderbundleencoder: Renderbundleencoder;
                                     pipeline: Renderpipeline): void {.cdecl,
    importc: "wgpuRenderBundleEncoderSetPipeline".}
proc Renderbundleencodersetvertexbuffer*(
    renderbundleencoder: Renderbundleencoder; slot: uint32; buffer: Buffer;
    offset: uint64; size: uint64): void {.cdecl,
    importc: "wgpuRenderBundleEncoderSetVertexBuffer".}
proc Renderbundleencoderreference*(renderbundleencoder: Renderbundleencoder): void {.
    cdecl, importc: "wgpuRenderBundleEncoderReference".}
proc Renderbundleencoderrelease*(renderbundleencoder: Renderbundleencoder): void {.
    cdecl, importc: "wgpuRenderBundleEncoderRelease".}
proc Renderpassencoderbeginocclusionquery*(renderpassencoder: Renderpassencoder;
    queryindex: uint32): void {.cdecl, importc: "wgpuRenderPassEncoderBeginOcclusionQuery".}
proc Renderpassencoderbeginpipelinestatisticsquery*(
    renderpassencoder: Renderpassencoder; queryset: Queryset; queryindex: uint32): void {.
    cdecl, importc: "wgpuRenderPassEncoderBeginPipelineStatisticsQuery".}
proc Renderpassencoderdraw*(renderpassencoder: Renderpassencoder;
                            vertexcount: uint32; instancecount: uint32;
                            firstvertex: uint32; firstinstance: uint32): void {.
    cdecl, importc: "wgpuRenderPassEncoderDraw".}
proc Renderpassencoderdrawindexed*(renderpassencoder: Renderpassencoder;
                                   indexcount: uint32; instancecount: uint32;
                                   firstindex: uint32; basevertex: int32;
                                   firstinstance: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderDrawIndexed".}
proc Renderpassencoderdrawindexedindirect*(renderpassencoder: Renderpassencoder;
    indirectbuffer: Buffer; indirectoffset: uint64): void {.cdecl,
    importc: "wgpuRenderPassEncoderDrawIndexedIndirect".}
proc Renderpassencoderdrawindirect*(renderpassencoder: Renderpassencoder;
                                    indirectbuffer: Buffer;
                                    indirectoffset: uint64): void {.cdecl,
    importc: "wgpuRenderPassEncoderDrawIndirect".}
proc Renderpassencoderend*(renderpassencoder: Renderpassencoder): void {.cdecl,
    importc: "wgpuRenderPassEncoderEnd".}
proc Renderpassencoderendocclusionquery*(renderpassencoder: Renderpassencoder): void {.
    cdecl, importc: "wgpuRenderPassEncoderEndOcclusionQuery".}
proc Renderpassencoderendpipelinestatisticsquery*(
    renderpassencoder: Renderpassencoder): void {.cdecl,
    importc: "wgpuRenderPassEncoderEndPipelineStatisticsQuery".}
proc Renderpassencoderexecutebundles*(renderpassencoder: Renderpassencoder;
                                      bundlecount: csize_t;
                                      bundles: ptr Renderbundle): void {.cdecl,
    importc: "wgpuRenderPassEncoderExecuteBundles".}
proc Renderpassencoderinsertdebugmarker*(renderpassencoder: Renderpassencoder;
    markerlabel: cstring): void {.cdecl, importc: "wgpuRenderPassEncoderInsertDebugMarker".}
proc Renderpassencoderpopdebuggroup*(renderpassencoder: Renderpassencoder): void {.
    cdecl, importc: "wgpuRenderPassEncoderPopDebugGroup".}
proc Renderpassencoderpushdebuggroup*(renderpassencoder: Renderpassencoder;
                                      grouplabel: cstring): void {.cdecl,
    importc: "wgpuRenderPassEncoderPushDebugGroup".}
proc Renderpassencodersetbindgroup*(renderpassencoder: Renderpassencoder;
                                    groupindex: uint32; group: Bindgroup;
                                    dynamicoffsetcount: csize_t;
                                    dynamicoffsets: ptr uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetBindGroup".}
proc Renderpassencodersetblendconstant*(renderpassencoder: Renderpassencoder;
                                        color: ptr Color): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetBlendConstant".}
proc Renderpassencodersetindexbuffer*(renderpassencoder: Renderpassencoder;
                                      buffer: Buffer; format: Indexformat;
                                      offset: uint64; size: uint64): void {.
    cdecl, importc: "wgpuRenderPassEncoderSetIndexBuffer".}
proc Renderpassencodersetlabel*(renderpassencoder: Renderpassencoder;
                                label: cstring): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetLabel".}
proc Renderpassencodersetpipeline*(renderpassencoder: Renderpassencoder;
                                   pipeline: Renderpipeline): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetPipeline".}
proc Renderpassencodersetscissorrect*(renderpassencoder: Renderpassencoder;
                                      x: uint32; y: uint32; width: uint32;
                                      height: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetScissorRect".}
proc Renderpassencodersetstencilreference*(renderpassencoder: Renderpassencoder;
    reference: uint32): void {.cdecl, importc: "wgpuRenderPassEncoderSetStencilReference".}
proc Renderpassencodersetvertexbuffer*(renderpassencoder: Renderpassencoder;
                                       slot: uint32; buffer: Buffer;
                                       offset: uint64; size: uint64): void {.
    cdecl, importc: "wgpuRenderPassEncoderSetVertexBuffer".}
proc Renderpassencodersetviewport*(renderpassencoder: Renderpassencoder;
                                   x: cfloat; y: cfloat; width: cfloat;
                                   height: cfloat; mindepth: cfloat;
                                   maxdepth: cfloat): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetViewport".}
proc Renderpassencoderreference*(renderpassencoder: Renderpassencoder): void {.
    cdecl, importc: "wgpuRenderPassEncoderReference".}
proc Renderpassencoderrelease*(renderpassencoder: Renderpassencoder): void {.
    cdecl, importc: "wgpuRenderPassEncoderRelease".}
proc Renderpipelinegetbindgrouplayout*(renderpipeline: Renderpipeline;
                                       groupindex: uint32): Bindgrouplayout {.
    cdecl, importc: "wgpuRenderPipelineGetBindGroupLayout".}
proc Renderpipelinesetlabel*(renderpipeline: Renderpipeline; label: cstring): void {.
    cdecl, importc: "wgpuRenderPipelineSetLabel".}
proc Renderpipelinereference*(renderpipeline: Renderpipeline): void {.cdecl,
    importc: "wgpuRenderPipelineReference".}
proc Renderpipelinerelease*(renderpipeline: Renderpipeline): void {.cdecl,
    importc: "wgpuRenderPipelineRelease".}
proc Samplersetlabel*(sampler: Sampler; label: cstring): void {.cdecl,
    importc: "wgpuSamplerSetLabel".}
proc Samplerreference*(sampler: Sampler): void {.cdecl,
    importc: "wgpuSamplerReference".}
proc Samplerrelease*(sampler: Sampler): void {.cdecl,
    importc: "wgpuSamplerRelease".}
proc Shadermodulegetcompilationinfo*(shadermodule: Shadermodule;
                                     callback: Compilationinfocallback;
                                     userdata: pointer): void {.cdecl,
    importc: "wgpuShaderModuleGetCompilationInfo".}
proc Shadermodulesetlabel*(shadermodule: Shadermodule; label: cstring): void {.
    cdecl, importc: "wgpuShaderModuleSetLabel".}
proc Shadermodulereference*(shadermodule: Shadermodule): void {.cdecl,
    importc: "wgpuShaderModuleReference".}
proc Shadermodulerelease*(shadermodule: Shadermodule): void {.cdecl,
    importc: "wgpuShaderModuleRelease".}
proc Surfacegetpreferredformat*(surface: Surface; adapter: Adapter): Textureformat {.
    cdecl, importc: "wgpuSurfaceGetPreferredFormat".}
proc Surfacereference*(surface: Surface): void {.cdecl,
    importc: "wgpuSurfaceReference".}
proc Surfacerelease*(surface: Surface): void {.cdecl,
    importc: "wgpuSurfaceRelease".}
proc Swapchaingetcurrenttextureview*(swapchain: Swapchain): Textureview {.cdecl,
    importc: "wgpuSwapChainGetCurrentTextureView".}
proc Swapchainpresent*(swapchain: Swapchain): void {.cdecl,
    importc: "wgpuSwapChainPresent".}
proc Swapchainreference*(swapchain: Swapchain): void {.cdecl,
    importc: "wgpuSwapChainReference".}
proc Swapchainrelease*(swapchain: Swapchain): void {.cdecl,
    importc: "wgpuSwapChainRelease".}
proc Texturecreateview*(texture: Texture; descriptor: ptr Textureviewdescriptor): Textureview {.
    cdecl, importc: "wgpuTextureCreateView".}
proc Texturedestroy*(texture: Texture): void {.cdecl,
    importc: "wgpuTextureDestroy".}
proc Texturegetdepthorarraylayers*(texture: Texture): uint32 {.cdecl,
    importc: "wgpuTextureGetDepthOrArrayLayers".}
proc Texturegetdimension*(texture: Texture): Texturedimension {.cdecl,
    importc: "wgpuTextureGetDimension".}
proc Texturegetformat*(texture: Texture): Textureformat {.cdecl,
    importc: "wgpuTextureGetFormat".}
proc Texturegetheight*(texture: Texture): uint32 {.cdecl,
    importc: "wgpuTextureGetHeight".}
proc Texturegetmiplevelcount*(texture: Texture): uint32 {.cdecl,
    importc: "wgpuTextureGetMipLevelCount".}
proc Texturegetsamplecount*(texture: Texture): uint32 {.cdecl,
    importc: "wgpuTextureGetSampleCount".}
proc Texturegetusage*(texture: Texture): Textureusageflags {.cdecl,
    importc: "wgpuTextureGetUsage".}
proc Texturegetwidth*(texture: Texture): uint32 {.cdecl,
    importc: "wgpuTextureGetWidth".}
proc Texturesetlabel*(texture: Texture; label: cstring): void {.cdecl,
    importc: "wgpuTextureSetLabel".}
proc Texturereference*(texture: Texture): void {.cdecl,
    importc: "wgpuTextureReference".}
proc Texturerelease*(texture: Texture): void {.cdecl,
    importc: "wgpuTextureRelease".}
proc Textureviewsetlabel*(textureview: Textureview; label: cstring): void {.
    cdecl, importc: "wgpuTextureViewSetLabel".}
proc Textureviewreference*(textureview: Textureview): void {.cdecl,
    importc: "wgpuTextureViewReference".}
proc Textureviewrelease*(textureview: Textureview): void {.cdecl,
    importc: "wgpuTextureViewRelease".}
proc Generatereport*(instance: Instance; report: ptr Globalreport): void {.
    cdecl, importc: "wgpuGenerateReport".}
proc Instanceenumerateadapters*(instance: Instance;
                                options: ptr Instanceenumerateadapteroptions;
                                adapters: ptr Adapter): csize_t {.cdecl,
    importc: "wgpuInstanceEnumerateAdapters".}
proc Queuesubmitforindex*(queue: Queue; commandcount: csize_t;
                          commands: ptr Commandbuffer): Submissionindex {.cdecl,
    importc: "wgpuQueueSubmitForIndex".}
proc Devicepoll*(device: Device; wait: bool;
                 wrappedsubmissionindex: ptr Wrappedsubmissionindex): bool {.
    cdecl, importc: "wgpuDevicePoll".}
proc Setlogcallback*(callback: Logcallback; userdata: pointer): void {.cdecl,
    importc: "wgpuSetLogCallback".}
proc Setloglevel*(level: Loglevel): void {.cdecl, importc: "wgpuSetLogLevel".}
proc Getversion*(): uint32 {.cdecl, importc: "wgpuGetVersion".}
proc Surfacegetcapabilities*(surface: Surface; adapter: Adapter;
                             capabilities: ptr Surfacecapabilities): void {.
    cdecl, importc: "wgpuSurfaceGetCapabilities".}
proc Renderpassencodersetpushconstants*(encoder: Renderpassencoder;
                                        stages: Shaderstageflags;
                                        offset: uint32; sizebytes: uint32;
                                        data: pointer): void {.cdecl,
    importc: "wgpuRenderPassEncoderSetPushConstants".}
proc Renderpassencodermultidrawindirect*(encoder: Renderpassencoder;
    buffer: Buffer; offset: uint64; count: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderMultiDrawIndirect".}
proc Renderpassencodermultidrawindexedindirect*(encoder: Renderpassencoder;
    buffer: Buffer; offset: uint64; count: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderMultiDrawIndexedIndirect".}
proc Renderpassencodermultidrawindirectcount*(encoder: Renderpassencoder;
    buffer: Buffer; offset: uint64; countbuffer: Buffer;
    countbufferoffset: uint64; maxcount: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderMultiDrawIndirectCount".}
proc Renderpassencodermultidrawindexedindirectcount*(encoder: Renderpassencoder;
    buffer: Buffer; offset: uint64; countbuffer: Buffer;
    countbufferoffset: uint64; maxcount: uint32): void {.cdecl,
    importc: "wgpuRenderPassEncoderMultiDrawIndexedIndirectCount".}