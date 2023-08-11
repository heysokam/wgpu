#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________

type  # Not Used : Are these for dynamic linking? :think:
  BufferMapCallback* = proc (status: BufferMapAsyncStatus; userdata: pointer) {.cdecl.}
  CompilationInfoCallback* = proc (status: CompilationInfoRequestStatus; compilationInfo: ptr CompilationInfo; userdata: pointer) {.cdecl.}
  CreateComputePipelineAsyncCallback* = proc (status: CreatePipelineAsyncStatus; pipeline: ComputePipeline; message: cstring; userdata: pointer) {.cdecl.}
  CreateRenderPipelineAsyncCallback* = proc (status: CreatePipelineAsyncStatus; pipeline: RenderPipeline; message: cstring; userdata: pointer) {.cdecl.}
  DeviceLostCallback* = proc (reason: DeviceLostReason; message: cstring; userdata: pointer) {.cdecl.}
  ErrorCallback* = proc (`type`: ErrorType; message: cstring; userdata: pointer) {.cdecl.}
  Proc* = proc () {.cdecl.}
  QueueWorkDoneCallback* = proc (status: QueueWorkDoneStatus; userdata: pointer) {.cdecl.}
  RequestAdapterCallback* = proc (status: RequestAdapterStatus; adapter: Adapter; message: cstring; userdata: pointer) {.cdecl.}
  RequestDeviceCallback* = proc (status: RequestDeviceStatus; device: Device; message: cstring; userdata: pointer) {.cdecl.}
  ProcCreateInstance* = proc (descriptor: ptr InstanceDescriptor): Instance {.cdecl.}
  ProcGetProcAddress* = proc (device: Device; procName: cstring): Proc {.cdecl.}
  ProcAdapterEnumerateFeatures* = proc (adapter: Adapter; features: ptr Feature): csize_t {.cdecl.}
  ProcAdapterGetLimits* = proc (adapter: Adapter; limits: ptr SupportedLimits): bool {.cdecl.}
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
  ProcBufferMapAsync* = proc (buffer: Buffer; mode: MapModeFlags; offset: csize_t; size: csize_t; callback: BufferMapCallback; userdata: pointer) {.cdecl.}
  ProcBufferSetLabel* = proc (buffer: Buffer; label: cstring) {.cdecl.}
  ProcBufferUnmap* = proc (buffer: Buffer) {.cdecl.}
  ProcCommandBufferSetLabel* = proc (commandBuffer: CommandBuffer; label: cstring) {.cdecl.}
  ProcCommandEncoderBeginComputePass* = proc (commandEncoder: CommandEncoder; descriptor: ptr ComputePassDescriptor): ComputePassEncoder {.cdecl.}
  ProcCommandEncoderBeginRenderPass* = proc (commandEncoder: CommandEncoder; descriptor: ptr RenderPassDescriptor): RenderPassEncoder {.cdecl.}
  ProcCommandEncoderClearBuffer* = proc (commandEncoder: CommandEncoder; buffer: Buffer; offset: uint64; size: uint64) {.cdecl.}
  ProcCommandEncoderCopyBufferToBuffer* = proc (commandEncoder: CommandEncoder; source: Buffer; sourceOffset: uint64; destination: Buffer; destinationOffset: uint64; size: uint64) {.cdecl.}
  ProcCommandEncoderCopyBufferToTexture* = proc (commandEncoder: CommandEncoder; source: ptr ImageCopyBuffer; destination: ptr ImageCopyTexture; copySize: ptr Extent3D) {.cdecl.}
  ProcCommandEncoderCopyTextureToBuffer* = proc (commandEncoder: CommandEncoder; source: ptr ImageCopyTexture; destination: ptr ImageCopyBuffer; copySize: ptr Extent3D) {.cdecl.}
  ProcCommandEncoderCopyTextureToTexture* = proc (commandEncoder: CommandEncoder; source: ptr ImageCopyTexture; destination: ptr ImageCopyTexture; copySize: ptr Extent3D) {.cdecl.}
  ProcCommandEncoderFinish* = proc (commandEncoder: CommandEncoder; descriptor: ptr CommandBufferDescriptor): CommandBuffer {.cdecl.}
  ProcCommandEncoderInsertDebugMarker* = proc (commandEncoder: CommandEncoder; markerLabel: cstring) {.cdecl.}
  ProcCommandEncoderPopDebugGroup* = proc (commandEncoder: CommandEncoder) {.cdecl.}
  ProcCommandEncoderPushDebugGroup* = proc (commandEncoder: CommandEncoder; groupLabel: cstring) {.cdecl.}
  ProcCommandEncoderResolveQuerySet* = proc (commandEncoder: CommandEncoder; querySet: QuerySet; firstQuery: uint32; queryCount: uint32; destination: Buffer; destinationOffset: uint64) {.cdecl.}
  ProcCommandEncoderSetLabel* = proc (commandEncoder: CommandEncoder; label: cstring) {.cdecl.}
  ProcCommandEncoderWriteTimestamp* = proc (commandEncoder: CommandEncoder; querySet: QuerySet; queryIndex: uint32) {.cdecl.}
  ProcComputePassEncoderBeginPipelineStatisticsQuery* = proc ( computePassEncoder: ComputePassEncoder; querySet: QuerySet; queryIndex: uint32) {.cdecl.}
  ProcComputePassEncoderDispatchWorkgroups* = proc ( computePassEncoder: ComputePassEncoder; workgroupCountX: uint32; workgroupCountY: uint32; workgroupCountZ: uint32) {.cdecl.}
  ProcComputePassEncoderDispatchWorkgroupsIndirect* = proc ( computePassEncoder: ComputePassEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl.}
  ProcComputePassEncoderEnd* = proc (computePassEncoder: ComputePassEncoder) {.cdecl.}
  ProcComputePassEncoderEndPipelineStatisticsQuery* = proc ( computePassEncoder: ComputePassEncoder) {.cdecl.}
  ProcComputePassEncoderInsertDebugMarker* = proc ( computePassEncoder: ComputePassEncoder; markerLabel: cstring) {.cdecl.}
  ProcComputePassEncoderPopDebugGroup* = proc ( computePassEncoder: ComputePassEncoder) {.cdecl.}
  ProcComputePassEncoderPushDebugGroup* = proc ( computePassEncoder: ComputePassEncoder; groupLabel: cstring) {.cdecl.}
  ProcComputePassEncoderSetBindGroup* = proc ( computePassEncoder: ComputePassEncoder; groupIndex: uint32; group: BindGroup; dynamicOffsetCount: uint32; dynamicOffsets: ptr uint32) {.cdecl.}
  ProcComputePassEncoderSetLabel* = proc (computePassEncoder: ComputePassEncoder; label: cstring) {.cdecl.}
  ProcComputePassEncoderSetPipeline* = proc ( computePassEncoder: ComputePassEncoder; pipeline: ComputePipeline) {.cdecl.}
  ProcComputePipelineGetBindGroupLayout* = proc (computePipeline: ComputePipeline; groupIndex: uint32): BindGroupLayout {.cdecl.}
  ProcComputePipelineSetLabel* = proc (computePipeline: ComputePipeline; label: cstring) {.cdecl.}
  ProcDeviceCreateBindGroup* = proc (device: Device; descriptor: ptr BindGroupDescriptor): BindGroup {.cdecl.}
  ProcDeviceCreateBindGroupLayout* = proc (device: Device; descriptor: ptr BindGroupLayoutDescriptor): BindGroupLayout {.cdecl.}
  ProcDeviceCreateBuffer* = proc (device: Device; descriptor: ptr BufferDescriptor): Buffer {.cdecl.}
  ProcDeviceCreateCommandEncoder* = proc (device: Device; descriptor: ptr CommandEncoderDescriptor): CommandEncoder {.cdecl.}
  ProcDeviceCreateComputePipeline* = proc (device: Device; descriptor: ptr ComputePipelineDescriptor): ComputePipeline {.cdecl.}
  ProcDeviceCreateComputePipelineAsync* = proc (device: Device; descriptor: ptr ComputePipelineDescriptor; callback: CreateComputePipelineAsyncCallback; userdata: pointer) {.cdecl.}
  ProcDeviceCreatePipelineLayout* = proc (device: Device; descriptor: ptr PipelineLayoutDescriptor): PipelineLayout {.cdecl.}
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
  ProcDeviceGetLimits* = proc (device: Device; limits: ptr SupportedLimits): bool {.cdecl.}
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
  ProcQuerySetGetCount* = proc (querySet: QuerySet): uint32 {.cdecl.}
  ProcQuerySetGetType* = proc (querySet: QuerySet): QueryType {.cdecl.}
  ProcQuerySetSetLabel* = proc (querySet: QuerySet; label: cstring) {.cdecl.}
  ProcQueueOnSubmittedWorkDone* = proc (queue: Queue; callback: QueueWorkDoneCallback; userdata: pointer) {.cdecl.}
  ProcQueueSetLabel* = proc (queue: Queue; label: cstring) {.cdecl.}
  ProcQueueSubmit* = proc (queue: Queue; commandCount: uint32; commands: ptr CommandBuffer) {.cdecl.}
  ProcQueueWriteBuffer* = proc (queue: Queue; buffer: Buffer; bufferOffset: uint64; data: pointer; size: csize_t) {.cdecl.}
  ProcQueueWriteTexture* = proc (queue: Queue; destination: ptr ImageCopyTexture; data: pointer; dataSize: csize_t; dataLayout: ptr TextureDataLayout; writeSize: ptr Extent3D) {.cdecl.}
  ProcRenderBundleEncoderDraw* = proc (renderBundleEncoder: RenderBundleEncoder; vertexCount: uint32; instanceCount: uint32; firstVertex: uint32; firstInstance: uint32) {.cdecl.}
  ProcRenderBundleEncoderDrawIndexed* = proc ( renderBundleEncoder: RenderBundleEncoder; indexCount: uint32; instanceCount: uint32; firstIndex: uint32; baseVertex: int32; firstInstance: uint32) {.cdecl.}
  ProcRenderBundleEncoderDrawIndexedIndirect* = proc ( renderBundleEncoder: RenderBundleEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl.}
  ProcRenderBundleEncoderDrawIndirect* = proc ( renderBundleEncoder: RenderBundleEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl.}
  ProcRenderBundleEncoderFinish* = proc (renderBundleEncoder: RenderBundleEncoder; descriptor: ptr RenderBundleDescriptor): RenderBundle {.cdecl.}
  ProcRenderBundleEncoderInsertDebugMarker* = proc ( renderBundleEncoder: RenderBundleEncoder; markerLabel: cstring) {.cdecl.}
  ProcRenderBundleEncoderPopDebugGroup* = proc ( renderBundleEncoder: RenderBundleEncoder) {.cdecl.}
  ProcRenderBundleEncoderPushDebugGroup* = proc ( renderBundleEncoder: RenderBundleEncoder; groupLabel: cstring) {.cdecl.}
  ProcRenderBundleEncoderSetBindGroup* = proc ( renderBundleEncoder: RenderBundleEncoder; groupIndex: uint32; group: BindGroup; dynamicOffsetCount: uint32; dynamicOffsets: ptr uint32) {.cdecl.}
  ProcRenderBundleEncoderSetIndexBuffer* = proc ( renderBundleEncoder: RenderBundleEncoder; buffer: Buffer; format: IndexFormat; offset: uint64; size: uint64) {.cdecl.}
  ProcRenderBundleEncoderSetLabel* = proc (renderBundleEncoder: RenderBundleEncoder; label: cstring) {.cdecl.}
  ProcRenderBundleEncoderSetPipeline* = proc ( renderBundleEncoder: RenderBundleEncoder; pipeline: RenderPipeline) {.cdecl.}
  ProcRenderBundleEncoderSetVertexBuffer* = proc ( renderBundleEncoder: RenderBundleEncoder; slot: uint32; buffer: Buffer; offset: uint64; size: uint64) {.cdecl.}
  ProcRenderPassEncoderBeginOcclusionQuery* = proc ( renderPassEncoder: RenderPassEncoder; queryIndex: uint32) {.cdecl.}
  ProcRenderPassEncoderBeginPipelineStatisticsQuery* = proc ( renderPassEncoder: RenderPassEncoder; querySet: QuerySet; queryIndex: uint32) {.cdecl.}
  ProcRenderPassEncoderDraw* = proc (renderPassEncoder: RenderPassEncoder; vertexCount: uint32; instanceCount: uint32; firstVertex: uint32; firstInstance: uint32) {.cdecl.}
  ProcRenderPassEncoderDrawIndexed* = proc (renderPassEncoder: RenderPassEncoder; indexCount: uint32; instanceCount: uint32; firstIndex: uint32; baseVertex: int32; firstInstance: uint32) {.cdecl.}
  ProcRenderPassEncoderDrawIndexedIndirect* = proc ( renderPassEncoder: RenderPassEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl.}
  ProcRenderPassEncoderDrawIndirect* = proc (renderPassEncoder: RenderPassEncoder; indirectBuffer: Buffer; indirectOffset: uint64) {.cdecl.}
  ProcRenderPassEncoderEnd* = proc (renderPassEncoder: RenderPassEncoder) {.cdecl.}
  ProcRenderPassEncoderEndOcclusionQuery* = proc ( renderPassEncoder: RenderPassEncoder) {.cdecl.}
  ProcRenderPassEncoderEndPipelineStatisticsQuery* = proc ( renderPassEncoder: RenderPassEncoder) {.cdecl.}
  ProcRenderPassEncoderExecuteBundles* = proc ( renderPassEncoder: RenderPassEncoder; bundlesCount: uint32; bundles: ptr RenderBundle) {.cdecl.}
  ProcRenderPassEncoderInsertDebugMarker* = proc ( renderPassEncoder: RenderPassEncoder; markerLabel: cstring) {.cdecl.}
  ProcRenderPassEncoderPopDebugGroup* = proc (renderPassEncoder: RenderPassEncoder) {.cdecl.}
  ProcRenderPassEncoderPushDebugGroup* = proc ( renderPassEncoder: RenderPassEncoder; groupLabel: cstring) {.cdecl.}
  ProcRenderPassEncoderSetBindGroup* = proc (renderPassEncoder: RenderPassEncoder; groupIndex: uint32; group: BindGroup; dynamicOffsetCount: uint32; dynamicOffsets: ptr uint32) {.cdecl.}
  ProcRenderPassEncoderSetBlendConstant* = proc ( renderPassEncoder: RenderPassEncoder; color: ptr Color) {.cdecl.}
  ProcRenderPassEncoderSetIndexBuffer* = proc ( renderPassEncoder: RenderPassEncoder; buffer: Buffer; format: IndexFormat; offset: uint64; size: uint64) {.cdecl.}
  ProcRenderPassEncoderSetLabel* = proc (renderPassEncoder: RenderPassEncoder; label: cstring) {.cdecl.}
  ProcRenderPassEncoderSetPipeline* = proc (renderPassEncoder: RenderPassEncoder; pipeline: RenderPipeline) {.cdecl.}
  ProcRenderPassEncoderSetScissorRect* = proc ( renderPassEncoder: RenderPassEncoder; x: uint32; y: uint32; width: uint32; height: uint32) {.cdecl.}
  ProcRenderPassEncoderSetStencilReference* = proc ( renderPassEncoder: RenderPassEncoder; reference: uint32) {.cdecl.}
  ProcRenderPassEncoderSetVertexBuffer* = proc ( renderPassEncoder: RenderPassEncoder; slot: uint32; buffer: Buffer; offset: uint64; size: uint64) {.cdecl.}
  ProcRenderPassEncoderSetViewport* = proc (renderPassEncoder: RenderPassEncoder; x: cfloat; y: cfloat; width: cfloat; height: cfloat; minDepth: cfloat; maxDepth: cfloat) {.cdecl.}
  ProcRenderPipelineGetBindGroupLayout* = proc (renderPipeline: RenderPipeline; groupIndex: uint32): BindGroupLayout {.cdecl.}
  ProcRenderPipelineSetLabel* = proc (renderPipeline: RenderPipeline; label: cstring) {.cdecl.}
  ProcSamplerSetLabel* = proc (sampler: Sampler; label: cstring) {.cdecl.}
  ProcShaderModuleGetCompilationInfo* = proc (shaderModule: ShaderModule; callback: CompilationInfoCallback; userdata: pointer) {.cdecl.}
  ProcShaderModuleSetLabel* = proc (shaderModule: ShaderModule; label: cstring) {.cdecl.}
  ProcSurfaceGetPreferredFormat* = proc (surface: Surface; adapter: Adapter): TextureFormat {.cdecl.}
  ProcSwapChainGetCurrentTextureView* = proc (swapChain: SwapChain): TextureView {.cdecl.}
  ProcSwapChainPresent* = proc (swapChain: SwapChain) {.cdecl.}
  ProcTextureCreateView* = proc (texture: Texture; descriptor: ptr TextureViewDescriptor): TextureView {.cdecl.}
  ProcTextureDestroy* = proc (texture: Texture) {.cdecl.}
  ProcTextureGetDepthOrArrayLayers* = proc (texture: Texture): uint32 {.cdecl.}
  ProcTextureGetDimension* = proc (texture: Texture): TextureDimension {.cdecl.}
  ProcTextureGetFormat* = proc (texture: Texture): TextureFormat {.cdecl.}
  ProcTextureGetHeight* = proc (texture: Texture): uint32 {.cdecl.}
  ProcTextureGetMipLevelCount* = proc (texture: Texture): uint32 {.cdecl.}
  ProcTextureGetSampleCount* = proc (texture: Texture): uint32 {.cdecl.}
  ProcTextureGetUsage* = proc (texture: Texture): TextureUsage {.cdecl.}
  ProcTextureGetWidth* = proc (texture: Texture): uint32 {.cdecl.}
  ProcTextureSetLabel* = proc (texture: Texture; label: cstring) {.cdecl.}
  ProcTextureViewSetLabel* = proc (textureView: TextureView; label: cstring) {.cdecl.}
