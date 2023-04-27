#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
# Nim has modules and overloads.                |
# This means there are no global nameclashes.   |
# As such, all names have been changed:         |
#   from `wgpuSomethingAction` to just `action` |
#_______________________________________________|
import ./types

#_______________________________________
# webgpu.h
#___________________
# Instance
proc createInstance *(descriptor :ptr InstanceDescriptor) :Instance {.cdecl, importc: "wgpuCreateInstance", header: "webgpu-headers/webgpu.h".}
proc createSurface  *(instance :Instance; descriptor :ptr SurfaceDescriptor) :Surface {.cdecl, importc:"wgpuInstanceCreateSurface", header: "webgpu-headers/webgpu.h".}
type RequestAdapterCallback * = proc (status :RequestAdapterStatus; adapter :Adapter; message :cstring; userdata :pointer) :void {.cdecl.}
proc requestAdapter *(instance :Instance; options :ptr RequestAdapterOptions; callback :RequestAdapterCallback; userdata :pointer) :void {.cdecl, importc:"wgpuInstanceRequestAdapter", header: "webgpu-headers/webgpu.h".}

# Adapter
proc enumerateFeatures *(adapter :Adapter; features :ptr Feature) :csize_t {.cdecl, importc:"wgpuAdapterEnumerateFeatures", header: "webgpu-headers/webgpu.h".}
type RequestDeviceCallback * = proc (status :RequestDeviceStatus; device :Device; message :cstring; userdata :pointer) :void {.cdecl.}
proc requestDevice     *(adapter :Adapter; descriptor :ptr DeviceDescriptor; callback :RequestDeviceCallback; userdata :pointer) :void {.cdecl, importc:"wgpuAdapterRequestDevice", header: "webgpu-headers/webgpu.h".}
proc get               *(adapter :Adapter; limits :ptr SupportedLimits) :bool {.cdecl, importc: "wgpuAdapterGetLimits", header: "webgpu-headers/webgpu.h".}

# Device
type ErrorCallback * = proc (typ :ErrorType; message :cstring; userdata :pointer) :void {.cdecl.}
proc setUncapturedErrorCallback  *(device :Device; callback :ErrorCallback; userdata :pointer) :void {.cdecl, importc:"wgpuDeviceSetUncapturedErrorCallback", header: "webgpu-headers/webgpu.h".}
type DeviceLostCallback * = proc (reason :DeviceLostReason; message :cstring; userdata :pointer) :void {.cdecl.}
proc setDeviceLostCallback *(device :Device; callback :DeviceLostCallback; userdata :pointer) :void {.cdecl, importc:"wgpuDeviceSetDeviceLostCallback", header: "webgpu-headers/webgpu.h".}
proc create *(device :Device; descriptor :ptr ShaderModuleDescriptor) :ShaderModule {.cdecl, importc:"wgpuDeviceCreateShaderModule", header: "webgpu-headers/webgpu.h".}
proc create *(device :Device; descriptor :ptr RenderPipelineDescriptor): RenderPipeline {.cdecl, importc:"wgpuDeviceCreateRenderPipeline", header: "webgpu-headers/webgpu.h".}
proc create *(device :Device; descriptor :ptr ComputePipelineDescriptor) :ComputePipeline {.cdecl, importc:"wgpuDeviceCreateComputePipeline", header: "webgpu-headers/webgpu.h".}
proc create *(device :Device; surface :Surface; descriptor :ptr SwapChainDescriptor) :SwapChain {.cdecl, importc:"wgpuDeviceCreateSwapChain", header: "webgpu-headers/webgpu.h".}
proc create *(device :Device; descriptor :ptr CommandEncoderDescriptor) :CommandEncoder {.cdecl, importc:"wgpuDeviceCreateCommandEncoder", header: "webgpu-headers/webgpu.h".}
proc create *(device :Device; descriptor :ptr BufferDescriptor) :Buffer {.cdecl, importc:"wgpuDeviceCreateBuffer", header: "webgpu-headers/webgpu.h".}
proc create *(device :Device; descriptor :ptr BindGroupDescriptor) :BindGroup {.cdecl, importc:"wgpuDeviceCreateBindGroup", header: "webgpu-headers/webgpu.h".}
proc create *(device :Device; descriptor :ptr PipelineLayoutDescriptor) :PipelineLayout {.cdecl, importc:"wgpuDeviceCreatePipelineLayout", header: "webgpu-headers/webgpu.h".}
proc getQueue *(device :Device) :Queue {.cdecl, importc: "wgpuDeviceGetQueue", header: "webgpu-headers/webgpu.h".}
proc get      *(device :Device; limits :ptr SupportedLimits) :bool {.cdecl, importc: "wgpuDeviceGetLimits", header: "webgpu-headers/webgpu.h".}

# Surface
proc getPreferredFormat *(surface :Surface; adapter :Adapter) :TextureFormat {.cdecl, importc:"wgpuSurfaceGetPreferredFormat", header: "webgpu-headers/webgpu.h".}

# SwapChain
proc getCurrentTextureView *(swapChain :SwapChain) :TextureView {.cdecl, importc: "wgpuSwapChainGetCurrentTextureView", header: "webgpu-headers/webgpu.h".}
proc present               *(swapChain :SwapChain) :void {.cdecl, importc: "wgpuSwapChainPresent", header: "webgpu-headers/webgpu.h".}

# RenderPass Encoder
proc setPipeline     *(renderPassEncoder :RenderPassEncoder; pipeline :RenderPipeline) :void {.cdecl, importc:"wgpuRenderPassEncoderSetPipeline", header: "webgpu-headers/webgpu.h".}
proc setVertexBuffer *(renderPassEncoder :RenderPassEncoder; slot :uint32; buffer :Buffer; offset :uint64; size :uint64) :void {.cdecl, importc:"wgpuRenderPassEncoderSetVertexBuffer", header: "webgpu-headers/webgpu.h".}
proc setIndexBuffer  *(renderPassEncoder :RenderPassEncoder; buffer :Buffer; format :IndexFormat; offset :uint64; size :uint64) :void {.cdecl, importc:"wgpuRenderPassEncoderSetIndexBuffer", header: "webgpu-headers/webgpu.h".}
proc draw *(renderPassEncoder :RenderPassEncoder; vertexCount :uint32; instanceCount :uint32; firstVertex :uint32; firstInstance :uint32) :void {.cdecl, importc:"wgpuRenderPassEncoderDraw", header: "webgpu-headers/webgpu.h".}
proc draw *(renderPassEncoder :RenderPassEncoder; indexCount :uint32; instanceCount :uint32; firstIndex :uint32; baseVertex :int32; firstInstance :uint32) :void {.cdecl, importc:"wgpuRenderPassEncoderDrawIndexed", header: "webgpu-headers/webgpu.h".}
proc End  *(renderPassEncoder :RenderPassEncoder) :void {.cdecl, importc: "wgpuRenderPassEncoderEnd", header: "webgpu-headers/webgpu.h".}

# Command Encoder
proc begin  *(commandEncoder :CommandEncoder; descriptor :ptr RenderPassDescriptor) :RenderPassEncoder {.cdecl, importc:"wgpuCommandEncoderBeginRenderPass", header: "webgpu-headers/webgpu.h".}
proc begin  *(commandEncoder :CommandEncoder; descriptor :ptr ComputePassDescriptor) :ComputePassEncoder {.cdecl, importc:"wgpuCommandEncoderBeginComputePass", header: "webgpu-headers/webgpu.h".}
proc finish *(commandEncoder :CommandEncoder; descriptor :ptr CommandBufferDescriptor) :CommandBuffer {.cdecl, importc:"wgpuCommandEncoderFinish", header: "webgpu-headers/webgpu.h".}
proc copy   *(commandEncoder :CommandEncoder; source :Buffer; sourceOffset :uint64; destination :Buffer; destinationOffset :uint64; size :uint64) :void {.cdecl, importc:"wgpuCommandEncoderCopyBufferToBuffer", header: "webgpu-headers/webgpu.h".}
  ## Copy Buffer to Buffer

# Queue
proc submit      *(queue :Queue; commandCount :uint32; commands :ptr CommandBuffer) :void {.cdecl, importc:"wgpuQueueSubmit", header: "webgpu-headers/webgpu.h".}
proc writeBuffer *(queue :Queue; buffer :Buffer; bufferOffset :uint64; data :pointer; size :csize_t) :void {.cdecl, importc:"wgpuQueueWriteBuffer", header: "webgpu-headers/webgpu.h".}

# Buffer
type BufferMapCallback * = proc (status :BufferMapAsyncStatus; userdata :pointer) :void {.cdecl.}
proc mapAsync       *(buffer :Buffer; mode :MapModeFlags; offset :csize_t; size :csize_t; callback :BufferMapCallback; userdata :pointer) :void {.cdecl, importc:"wgpuBufferMapAsync", header: "webgpu-headers/webgpu.h".}
proc getMappedRange *(buffer :Buffer; offset :csize_t; size :csize_t) :pointer {.cdecl, importc:"wgpuBufferGetMappedRange", header: "webgpu-headers/webgpu.h".}
proc unmap          *(buffer :Buffer) :void {.cdecl, importc: "wgpuBufferUnmap", header: "webgpu-headers/webgpu.h".}
proc destroy        *(buffer :Buffer) :void {.cdecl, importc: "wgpuBufferDestroy", header: "webgpu-headers/webgpu.h".}

# Compute Pipeline
proc getBindGroupLayout *(computePipeline :ComputePipeline; groupIndex :uint32) :BindGroupLayout {.cdecl, importc:"wgpuComputePipelineGetBindGroupLayout", header: "webgpu-headers/webgpu.h".}

# ComputePass Encoder
proc set *(computePassEncoder :ComputePassEncoder; pipeline :ComputePipeline) {.cdecl, importc:"wgpuComputePassEncoderSetPipeline", header: "webgpu-headers/webgpu.h".}
proc set *(computePassEncoder :ComputePassEncoder; groupIndex :uint32; group :BindGroup; dynamicOffsetCount :uint32; dynamicOffsets :ptr uint32) {.cdecl, importc:"wgpuComputePassEncoderSetBindGroup", header: "webgpu-headers/webgpu.h".}
proc dispatchWorkgroups *(computePassEncoder :ComputePassEncoder; workgroupCountX :uint32; workgroupCountY :uint32; workgroupCountZ :uint32) {.cdecl, importc:"wgpuComputePassEncoderDispatchWorkgroups", header: "webgpu-headers/webgpu.h".}
proc End *(computePassEncoder :ComputePassEncoder) :void {.cdecl, importc: "wgpuComputePassEncoderEnd", header: "webgpu-headers/webgpu.h".}


#_______________________________________
# wgpu.h
#___________________
proc generateReport *(instance :Instance; report :ptr GlobalReport) :void {.importc: "wgpuGenerateReport", header: "wgpu.h".}
proc submitForIndex *(queue :Queue; commandCount :uint32; commands :ptr CommandBuffer) :SubmissionIndex {.importc: "wgpuQueueSubmitForIndex", header: "wgpu.h".}
proc poll *(device :Device; wait :bool; wrappedSubmissionIndex :ptr WrappedSubmissionIndex) :bool {.importc: "wgpuDevicePoll", header: "wgpu.h".}
  ## Returns true if the queue is empty, or false if there are more queue submissions still in flight.
proc setLogCallback *(callback :LogCallback; userdata :pointer) :void {.importc: "wgpuSetLogCallback", header: "wgpu.h".}
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


#_______________________________________
# Missing Functionality
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


#_______________________________________
# wgpu-native/src/unimplemented.rs
#___________________
type Proc* = proc () {.cdecl.}
# BindGroup
proc setLabel*(bindGroup: BindGroup; label: cstring) {.cdecl, importc: "wgpuBindGroupSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc layoutSetLabel*(bindGroupLayout: BindGroupLayout; label: cstring) {.cdecl, importc:"wgpuBindGroupLayoutSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# Buffer
proc getSize*(buffer: Buffer): uint64 {.cdecl, importc: "wgpuBufferGetSize", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc getUsage*(buffer: Buffer): BufferUsage {.cdecl, importc: "wgpuBufferGetUsage", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc setLabel*(buffer: Buffer; label: cstring) {.cdecl, importc: "wgpuBufferSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# CommandBuffer
proc setLabel*(commandBuffer: CommandBuffer; label: cstring) {.cdecl, importc: "wgpuCommandBufferSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc setLabel*(commandEncoder: CommandEncoder; label: cstring) {.cdecl, importc:"wgpuCommandEncoderSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# Compute
proc setLabel*(computePassEncoder: ComputePassEncoder; label: cstring) {.cdecl, importc:"wgpuComputePassEncoderSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc setLabel*(computePipeline: ComputePipeline; label: cstring) {.cdecl, importc:"wgpuComputePipelineSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# Device
proc getProcAddress*(device: Device; procName: cstring): Proc {.cdecl, importc: "wgpuGetProcAddress", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc popErrorScope*(device: Device; callback: ErrorCallback; userdata: pointer): bool {.cdecl, importc:"wgpuDevicePopErrorScope", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc pushErrorScope*(device: Device; filter: ErrorFilter) {.cdecl, importc: "wgpuDevicePushErrorScope", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc setLabel*(device: Device; label: cstring) {.cdecl, importc: "wgpuDeviceSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
type CreateComputePipelineAsyncCallback* = proc (status: CreatePipelineAsyncStatus; pipeline: ComputePipeline; message: cstring; userdata: pointer) {.cdecl.}
proc createComputePipelineAsync*(device: Device; descriptor: ptr ComputePipelineDescriptor; callback: CreateComputePipelineAsyncCallback; userdata: pointer) {.cdecl, importc:"wgpuDeviceCreateComputePipelineAsync", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
type CreateRenderPipelineAsyncCallback * = proc (status :CreatePipelineAsyncStatus; pipeline :RenderPipeline; message :cstring; userdata :pointer) :void {.cdecl.}
proc createRenderPipelineAsync *(device :Device; descriptor :ptr RenderPipelineDescriptor; callback :CreateRenderPipelineAsyncCallback; userdata :pointer) {.cdecl, importc:"wgpuDeviceCreateRenderPipelineAsync", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# Instance
proc processEvents*(instance: Instance) {.cdecl, importc: "wgpuInstanceProcessEvents", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# Pipeline
proc setLabel*(pipelineLayout: PipelineLayout; label: cstring) {.cdecl, importc:"wgpuPipelineLayoutSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# QuerySet
proc destroy*(querySet: QuerySet) {.cdecl, importc: "wgpuQuerySetDestroy", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc getCount*(querySet: QuerySet): uint {.cdecl, importc: "wgpuQuerySetGetCount", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc getType*(querySet: QuerySet): QueryType {.cdecl, importc: "wgpuQuerySetGetType", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc setLabel*(querySet: QuerySet; label: cstring) {.cdecl, importc: "wgpuQuerySetSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# Queue
type QueueWorkDoneCallback * = proc (status :QueueWorkDoneStatus; userdata :pointer) :void {.cdecl.}
proc onSubmittedWorkDone *(queue :Queue; callback :QueueWorkDoneCallback; userdata :pointer) {.cdecl, importc:"wgpuQueueOnSubmittedWorkDone", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc setLabel*(queue: Queue; label: cstring) {.cdecl, importc: "wgpuQueueSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# RenderBundle
proc setLabel*(renderBundleEncoder: RenderBundleEncoder; label: cstring) {.cdecl, importc:"wgpuRenderBundleEncoderSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# RenderPass
proc beginOcclusionQuery*(renderPassEncoder: RenderPassEncoder; queryIndex: uint) {.cdecl, importc:"wgpuRenderPassEncoderBeginOcclusionQuery", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc endOcclusionQuery*(renderPassEncoder: RenderPassEncoder) {.cdecl, importc:"wgpuRenderPassEncoderEndOcclusionQuery", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc setLabel*(renderPassEncoder: RenderPassEncoder; label: cstring) {.cdecl, importc:"wgpuRenderPassEncoderSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# RenderPipeline
proc setLabel*(renderPipeline: RenderPipeline; label: cstring) {.cdecl, importc:"wgpuRenderPipelineSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# Sampler
proc setLabel*(sampler: Sampler; label: cstring) {.cdecl, importc: "wgpuSamplerSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# ShaderModule
type CompilationInfoCallback* = proc (status: CompilationInfoRequestStatus; compilationInfo: ptr CompilationInfo; userdata: pointer) {.cdecl.}
proc getCompilationInfo*(shaderModule: ShaderModule; callback: CompilationInfoCallback; userdata: pointer) {.cdecl, importc:"wgpuShaderModuleGetCompilationInfo", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc setLabel*(shaderModule: ShaderModule; label: cstring) {.cdecl, importc: "wgpuShaderModuleSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
# Texture
proc getDepthOrArrayLayers*(texture :Texture) :uint32 {.cdecl, importc: "wgpuTextureGetDepthOrArrayLayers", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc getDimension*(texture :Texture) :TextureDimension {.cdecl, importc: "wgpuTextureGetDimension", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc getFormat*(texture :Texture) :TextureFormat {.cdecl, importc: "wgpuTextureGetFormat", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc getHeight*(texture :Texture) :uint32 {.cdecl, importc: "wgpuTextureGetHeight", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc getMipLevelCount*(texture :Texture) :uint32 {.cdecl, importc: "wgpuTextureGetMipLevelCount", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc getSampleCount*(texture :Texture) :uint32 {.cdecl, importc: "wgpuTextureGetSampleCount", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc getUsage*(texture :Texture) :TextureUsage {.cdecl, importc: "wgpuTextureGetUsage", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc getWidth*(texture :Texture) :uint32 {.cdecl, importc: "wgpuTextureGetWidth", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc setLabel*(texture :Texture; label :cstring) :void {.cdecl, importc: "wgpuTextureSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
proc setLabel*(textureView :TextureView; label :cstring) :void {.cdecl, importc: "wgpuTextureViewSetLabel", header: "webgpu-headers/webgpu.h", error: "Procedure is unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}


