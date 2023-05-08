#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
# Nim has modules and overloads.                |
# This means there are no global nameclashes.   |
# As such, all names have been changed:         |
#   from `wgpuSomethingAction` to just `action` |
#_______________________________________________|
import ./types


{.push cdecl.}  # All functions wrapped are cdecl, except our Nim extensions
#_______________________________________
# webgpu.h
#___________________
{.push header: "webgpu-headers/webgpu.h".}
# Instance
proc create *(descriptor :ptr InstanceDescriptor) :Instance {.importc: "wgpuCreateInstance".}
proc create *(instance :Instance; descriptor :ptr SurfaceDescriptor) :Surface {.importc: "wgpuInstanceCreateSurface".}
type RequestAdapterCallback * = proc (status :RequestAdapterStatus; adapter :Adapter; message :cstring; userdata :pointer) :void {.cdecl.}
proc requestAdapter *(instance :Instance; options :ptr RequestAdapterOptions; callback :RequestAdapterCallback; userdata :pointer) :void {.importc: "wgpuInstanceRequestAdapter".}

# Adapter
proc enumerate *(adapter :Adapter; features :ptr Feature) :csize_t {.importc: "wgpuAdapterEnumerateFeatures".}
type RequestDeviceCallback * = proc (status :RequestDeviceStatus; device :Device; message :cstring; userdata :pointer) :void {.cdecl.}
proc request *(adapter :Adapter; descriptor :ptr DeviceDescriptor; callback :RequestDeviceCallback; userdata :pointer) :void {.importc: "wgpuAdapterRequestDevice".}
proc get     *(adapter :Adapter; limits :ptr SupportedLimits) :bool {.importc: "wgpuAdapterGetLimits".}

# Device
type ErrorCallback * = proc (typ :ErrorType; message :cstring; userdata :pointer) :void {.cdecl.}
proc setUncapturedErrorCallback  *(device :Device; callback :ErrorCallback; userdata :pointer) :void {.importc: "wgpuDeviceSetUncapturedErrorCallback".}
type DeviceLostCallback * = proc (reason :DeviceLostReason; message :cstring; userdata :pointer) :void {.cdecl.}
proc setDeviceLostCallback *(device :Device; callback :DeviceLostCallback; userdata :pointer) :void {.importc: "wgpuDeviceSetDeviceLostCallback".}
proc create *(device :Device; descriptor :ptr ShaderModuleDescriptor) :ShaderModule {.importc: "wgpuDeviceCreateShaderModule".}
proc create *(device :Device; descriptor :ptr RenderPipelineDescriptor): RenderPipeline {.importc: "wgpuDeviceCreateRenderPipeline".}
proc create *(device :Device; descriptor :ptr ComputePipelineDescriptor) :ComputePipeline {.importc: "wgpuDeviceCreateComputePipeline".}
proc create *(device :Device; surface :Surface; descriptor :ptr SwapChainDescriptor) :SwapChain {.importc: "wgpuDeviceCreateSwapChain".}
proc create *(device :Device; descriptor :ptr CommandEncoderDescriptor) :CommandEncoder {.importc: "wgpuDeviceCreateCommandEncoder".}
proc create *(device :Device; descriptor :ptr BufferDescriptor) :Buffer {.importc: "wgpuDeviceCreateBuffer".}
proc create *(device :Device; descriptor :ptr BindGroupDescriptor) :BindGroup {.importc: "wgpuDeviceCreateBindGroup".}
proc create *(device :Device; descriptor :ptr PipelineLayoutDescriptor) :PipelineLayout {.importc: "wgpuDeviceCreatePipelineLayout".}
proc create *(device :Device; descriptor :ptr BindGroupLayoutDescriptor) :BindGroupLayout {.importc: "wgpuDeviceCreateBindGroupLayout".}
proc create *(device :Device; descriptor :ptr TextureDescriptor) :Texture {.importc: "wgpuDeviceCreateTexture".}
proc create *(device :Device; descriptor :ptr SamplerDescriptor) :Sampler {.importc: "wgpuDeviceCreateSampler".}
proc getQueue *(device :Device) :Queue {.importc: "wgpuDeviceGetQueue".}
proc get      *(device :Device; limits :ptr SupportedLimits) :bool {.importc: "wgpuDeviceGetLimits".}
proc destroy  *(device :Device) :void {.importc: "wgpuDeviceDestroy".}

# Surface
proc getPreferredFormat *(surface :Surface; adapter :Adapter) :TextureFormat {.importc: "wgpuSurfaceGetPreferredFormat".}

# SwapChain
proc getCurrentTextureView *(swapChain :SwapChain) :TextureView {.importc: "wgpuSwapChainGetCurrentTextureView".}
proc present               *(swapChain :SwapChain) :void {.importc: "wgpuSwapChainPresent".}

# RenderPass Encoder
proc setVertexBuffer *(renderPassEncoder :RenderPassEncoder; slot :uint32; buffer :Buffer; offset :uint64; size :uint64) :void {.importc: "wgpuRenderPassEncoderSetVertexBuffer".}
proc setIndexBuffer  *(renderPassEncoder :RenderPassEncoder; buffer :Buffer; format :IndexFormat; offset :uint64; size :uint64) :void {.importc: "wgpuRenderPassEncoderSetIndexBuffer".}
proc set  *(renderPassEncoder :RenderPassEncoder; pipeline :RenderPipeline) :void {.importc: "wgpuRenderPassEncoderSetPipeline".}
proc set  *(renderPassEncoder :RenderPassEncoder; groupIndex :uint32; group :BindGroup; dynamicOffsetCount :uint32; dynamicOffsets :ptr uint32) :void {.importc: "wgpuRenderPassEncoderSetBindGroup".}
proc draw *(renderPassEncoder :RenderPassEncoder; vertexCount :uint32; instanceCount :uint32; firstVertex :uint32; firstInstance :uint32) :void {.importc: "wgpuRenderPassEncoderDraw".}
proc draw *(renderPassEncoder :RenderPassEncoder; indexCount :uint32; instanceCount :uint32; firstIndex :uint32; baseVertex :int32; firstInstance :uint32) :void {.importc: "wgpuRenderPassEncoderDrawIndexed".}
proc End  *(renderPassEncoder :RenderPassEncoder) :void {.importc: "wgpuRenderPassEncoderEnd".}

# Command Encoder
proc begin  *(commandEncoder :CommandEncoder; descriptor :ptr RenderPassDescriptor) :RenderPassEncoder {.importc: "wgpuCommandEncoderBeginRenderPass".}
proc begin  *(commandEncoder :CommandEncoder; descriptor :ptr ComputePassDescriptor) :ComputePassEncoder {.importc: "wgpuCommandEncoderBeginComputePass".}
proc finish *(commandEncoder :CommandEncoder; descriptor :ptr CommandBufferDescriptor) :CommandBuffer {.importc: "wgpuCommandEncoderFinish".}
proc copy   *(commandEncoder :CommandEncoder; source :Buffer; sourceOffset :uint64; destination :Buffer; destinationOffset :uint64; size :uint64) :void {.importc: "wgpuCommandEncoderCopyBufferToBuffer".}
  ## Copy Buffer to Buffer

# Queue
proc submit *(queue :Queue; commandCount :uint32; commands :ptr CommandBuffer) :void {.importc: "wgpuQueueSubmit".}
proc write  *(queue :Queue; buffer :Buffer; bufferOffset :uint64; data :pointer; size :csize_t) :void {.importc: "wgpuQueueWriteBuffer".}
proc write  *(queue :Queue; destination :ptr ImageCopyTexture; data :pointer; dataSize :csize_t; dataLayout :ptr TextureDataLayout; writeSize :ptr Extent3D) :void {.importc: "wgpuQueueWriteTexture".}

# Buffer
type BufferMapCallback * = proc (status :BufferMapAsyncStatus; userdata :pointer) :void {.cdecl.}
proc mapAsync       *(buffer :Buffer; mode :MapModeFlags; offset :csize_t; size :csize_t; callback :BufferMapCallback; userdata :pointer) :void {.importc: "wgpuBufferMapAsync".}
proc getMappedRange *(buffer :Buffer; offset :csize_t; size :csize_t) :pointer {.importc: "wgpuBufferGetMappedRange".}
proc unmap          *(buffer :Buffer) :void {.importc: "wgpuBufferUnmap".}
proc destroy        *(buffer :Buffer) :void {.importc: "wgpuBufferDestroy".}

# Compute Pipeline
proc getBindGroupLayout *(computePipeline :ComputePipeline; groupIndex :uint32) :BindGroupLayout {.importc: "wgpuComputePipelineGetBindGroupLayout".}

# ComputePass Encoder
proc set *(computePassEncoder :ComputePassEncoder; pipeline :ComputePipeline) {.importc: "wgpuComputePassEncoderSetPipeline".}
proc set *(computePassEncoder :ComputePassEncoder; groupIndex :uint32; group :BindGroup; dynamicOffsetCount :uint32; dynamicOffsets :ptr uint32) {.importc: "wgpuComputePassEncoderSetBindGroup".}
proc dispatchWorkgroups *(computePassEncoder :ComputePassEncoder; workgroupCountX :uint32; workgroupCountY :uint32; workgroupCountZ :uint32) {.importc: "wgpuComputePassEncoderDispatchWorkgroups".}
proc End *(computePassEncoder :ComputePassEncoder) :void {.importc: "wgpuComputePassEncoderEnd".}

# Texture
proc create *(texture :Texture; descriptor :ptr TextureViewDescriptor) :TextureView {.importc: "wgpuTextureCreateView".}
#___________________
{.pop.} # << header: "webgpu-headers/webgpu.h"


#_______________________________________
# wgpu.h
#___________________
{.push header: "wgpu.h".}
proc generate *(instance :Instance; report :ptr GlobalReport) :void {.importc: "wgpuGenerateReport".}
proc submitForIndex *(queue :Queue; commandCount :uint32; commands :ptr CommandBuffer) :SubmissionIndex {.importc: "wgpuQueueSubmitForIndex".}
proc poll *(device :Device; wait :bool; wrappedSubmissionIndex :ptr WrappedSubmissionIndex) :bool {.importc: "wgpuDevicePoll".}
  ## Returns true if the queue is empty, or false if there are more queue submissions still in flight.
proc setLogCallback *(callback :LogCallback; userdata :pointer) :void {.importc: "wgpuSetLogCallback".}
proc set *(level :LogLevel) :void {.importc: "wgpuSetLogLevel".}
proc getVersion *() :uint32 {.importc: "wgpuGetVersion".}
proc get *(surface :Surface; adapter :Adapter; capabilities :ptr SurfaceCapabilities) :void {.importc: "wgpuSurfaceGetCapabilities".}
proc setPushConstants *(encoder :RenderPassEncoder; stages :ShaderStageFlags; offset :uint32, sizeBytes :uint32; data :pointer) :void {.importc: "wgpuRenderPassEncoderSetPushConstants".}
proc multiDrawIndirect *(encoder :RenderPassEncoder; buffer :Buffer; offset :uint64; count :uint32) :void {.importc: "wgpuRenderPassEncoderMultiDrawIndirect".}
proc multiDrawIndirectCount *(encoder :RenderPassEncoder; buffer :Buffer; offset :uint64; count_buffer :Buffer; count_buffer_offset :uint64; max_count :uint32) :void {.importc: "wgpuRenderPassEncoderMultiDrawIndirectCount".}
proc multiDrawIndexedIndirect *(encoder :RenderPassEncoder; buffer :Buffer; offset :uint64; count :uint32) :void {.importc: "wgpuRenderPassEncoderMultiDrawIndexedIndirect".}
proc multiDrawIndexedIndirectCount *(encoder :RenderPassEncoder; buffer :Buffer; offset :uint64; count_buffer :Buffer; count_buffer_offset :uint64; max_count :uint32) :void {.importc: "wgpuRenderPassEncoderMultiDrawIndexedIndirectCount".}
proc drop *(instance :Instance) :void {.importc: "wgpuInstanceDrop".}
proc drop *(adapter :Adapter) :void {.importc: "wgpuAdapterDrop".}
proc drop *(bindGroup :BindGroup) :void {.importc: "wgpuBindGroupDrop".}
proc drop *(bindGroupLayout :BindGroupLayout) :void {.importc: "wgpuBindGroupLayoutDrop".}
proc drop *(buffer :Buffer) :void {.importc: "wgpuBufferDrop".}
proc drop *(commandBuffer :CommandBuffer) :void {.importc: "wgpuCommandBufferDrop".}
proc drop *(commandEncoder :CommandEncoder) :void {.importc: "wgpuCommandEncoderDrop".}
proc drop *(renderPassEncoder :RenderPassEncoder) :void {.importc: "wgpuRenderPassEncoderDrop".}
proc drop *(computePassEncoder :ComputePassEncoder) :void {.importc: "wgpuComputePassEncoderDrop".}
proc drop *(renderBundleEncoder :RenderBundleEncoder) :void {.importc: "wgpuRenderBundleEncoderDrop".}
proc drop *(computePipeline :ComputePipeline) :void {.importc: "wgpuComputePipelineDrop".}
proc drop *(device :Device) :void {.importc: "wgpuDeviceDrop".}
proc drop *(pipelineLayout :PipelineLayout) :void {.importc: "wgpuPipelineLayoutDrop".}
proc drop *(querySet :QuerySet) :void {.importc: "wgpuQuerySetDrop".}
proc drop *(renderBundle :RenderBundle) :void {.importc: "wgpuRenderBundleDrop".}
proc drop *(renderPipeline :RenderPipeline) :void {.importc: "wgpuRenderPipelineDrop".}
proc drop *(sampler :Sampler) :void {.importc: "wgpuSamplerDrop".}
proc drop *(shaderModule :ShaderModule) :void {.importc: "wgpuShaderModuleDrop".}
proc drop *(surface :Surface) :void {.importc: "wgpuSurfaceDrop".}
proc drop *(swapChain :SwapChain) :void {.importc: "wgpuSwapChainDrop".}
proc drop *(texture :Texture) :void {.importc: "wgpuTextureDrop".}
proc drop *(textureView :TextureView) :void {.importc: "wgpuTextureViewDrop".}
{.pop.} # << header: "wgpu.h"
#___________________
{.pop.} # << cdecl


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
{.push warning: "Using a function unimplemented in wgpu-native. See: wgpu-native/src/unimplemented.rs".}
{.push header:  "webgpu-headers/webgpu.h".}
{.push cdecl.}
# BindGroup
proc setLabel*(bindGroup: BindGroup; label: cstring) {.importc: "wgpuBindGroupSetLabel".}
proc layoutSetLabel*(bindGroupLayout: BindGroupLayout; label: cstring) {.importc: "wgpuBindGroupLayoutSetLabel".}
# Buffer
proc getSize*(buffer: Buffer): uint64 {.importc: "wgpuBufferGetSize".}
proc getUsage*(buffer: Buffer): BufferUsage {.importc: "wgpuBufferGetUsage".}
proc setLabel*(buffer: Buffer; label: cstring) {.importc: "wgpuBufferSetLabel".}
# CommandBuffer
proc setLabel*(commandBuffer: CommandBuffer; label: cstring) {.importc: "wgpuCommandBufferSetLabel".}
proc setLabel*(commandEncoder: CommandEncoder; label: cstring) {.importc: "wgpuCommandEncoderSetLabel".}
# Compute
proc setLabel*(computePassEncoder: ComputePassEncoder; label: cstring) {.importc: "wgpuComputePassEncoderSetLabel".}
proc setLabel*(computePipeline: ComputePipeline; label: cstring) {.importc: "wgpuComputePipelineSetLabel".}
# Device
type Proc * = proc () {.cdecl.}
proc getProcAddress*(device: Device; procName: cstring): Proc {.importc: "wgpuGetProcAddress".}
proc popErrorScope*(device: Device; callback: ErrorCallback; userdata: pointer): bool {.importc: "wgpuDevicePopErrorScope".}
proc pushErrorScope*(device: Device; filter: ErrorFilter) {.importc: "wgpuDevicePushErrorScope".}
proc setLabel*(device: Device; label: cstring) {.importc: "wgpuDeviceSetLabel".}
type CreateComputePipelineAsyncCallback* = proc (status: CreatePipelineAsyncStatus; pipeline: ComputePipeline; message: cstring; userdata: pointer) {.cdecl.}
proc createComputePipelineAsync*(device: Device; descriptor: ptr ComputePipelineDescriptor; callback: CreateComputePipelineAsyncCallback; userdata: pointer) {.importc: "wgpuDeviceCreateComputePipelineAsync".}
type CreateRenderPipelineAsyncCallback * = proc (status :CreatePipelineAsyncStatus; pipeline :RenderPipeline; message :cstring; userdata :pointer) :void {.cdecl.}
proc createRenderPipelineAsync *(device :Device; descriptor :ptr RenderPipelineDescriptor; callback :CreateRenderPipelineAsyncCallback; userdata :pointer) {.importc: "wgpuDeviceCreateRenderPipelineAsync".}
# Instance
proc processEvents*(instance: Instance) {.importc: "wgpuInstanceProcessEvents".}
# Pipeline
proc setLabel*(pipelineLayout: PipelineLayout; label: cstring) {.importc: "wgpuPipelineLayoutSetLabel".}
# QuerySet
proc destroy*(querySet: QuerySet) {.importc: "wgpuQuerySetDestroy".}
proc getCount*(querySet: QuerySet): uint {.importc: "wgpuQuerySetGetCount".}
proc getType*(querySet: QuerySet): QueryType {.importc: "wgpuQuerySetGetType".}
proc setLabel*(querySet: QuerySet; label: cstring) {.importc: "wgpuQuerySetSetLabel".}
# Queue
type QueueWorkDoneCallback * = proc (status :QueueWorkDoneStatus; userdata :pointer) :void {.cdecl.}
proc onSubmittedWorkDone *(queue :Queue; callback :QueueWorkDoneCallback; userdata :pointer) {.importc: "wgpuQueueOnSubmittedWorkDone".}
proc setLabel*(queue: Queue; label: cstring) {.importc: "wgpuQueueSetLabel".}
# RenderBundle
proc setLabel*(renderBundleEncoder: RenderBundleEncoder; label: cstring) {.importc: "wgpuRenderBundleEncoderSetLabel".}
# RenderPass
proc beginOcclusionQuery*(renderPassEncoder: RenderPassEncoder; queryIndex: uint) {.importc: "wgpuRenderPassEncoderBeginOcclusionQuery".}
proc endOcclusionQuery*(renderPassEncoder: RenderPassEncoder) {.importc: "wgpuRenderPassEncoderEndOcclusionQuery".}
proc setLabel*(renderPassEncoder: RenderPassEncoder; label: cstring) {.importc: "wgpuRenderPassEncoderSetLabel".}
# RenderPipeline
proc setLabel*(renderPipeline: RenderPipeline; label: cstring) {.importc: "wgpuRenderPipelineSetLabel".}
# Sampler
proc setLabel*(sampler: Sampler; label: cstring) {.importc: "wgpuSamplerSetLabel".}
# ShaderModule
type CompilationInfoCallback* = proc (status: CompilationInfoRequestStatus; compilationInfo: ptr CompilationInfo; userdata: pointer) {.cdecl.}
proc getCompilationInfo*(shaderModule: ShaderModule; callback: CompilationInfoCallback; userdata: pointer) {.importc: "wgpuShaderModuleGetCompilationInfo".}
proc setLabel*(shaderModule: ShaderModule; label: cstring) {.importc: "wgpuShaderModuleSetLabel".}
# Texture
proc getDepthOrArrayLayers*(texture :Texture) :uint32 {.importc: "wgpuTextureGetDepthOrArrayLayers".}
proc getDimension*(texture :Texture) :TextureDimension {.importc: "wgpuTextureGetDimension".}
proc getFormat*(texture :Texture) :TextureFormat {.importc: "wgpuTextureGetFormat".}
proc getHeight*(texture :Texture) :uint32 {.importc: "wgpuTextureGetHeight".}
proc getMipLevelCount*(texture :Texture) :uint32 {.importc: "wgpuTextureGetMipLevelCount".}
proc getSampleCount*(texture :Texture) :uint32 {.importc: "wgpuTextureGetSampleCount".}
proc getUsage*(texture :Texture) :TextureUsage {.importc: "wgpuTextureGetUsage".}
proc getWidth*(texture :Texture) :uint32 {.importc: "wgpuTextureGetWidth".}
proc setLabel*(texture :Texture; label :cstring) :void {.importc: "wgpuTextureSetLabel".}
proc setLabel*(textureView :TextureView; label :cstring) :void {.importc: "wgpuTextureViewSetLabel".}
{.pop.} # << warning: unimplemented
{.pop.} # << header: "webgpu-headers/webgpu.h"
{.pop.} # << cdecl


