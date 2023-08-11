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
proc create    *(descriptor :ptr InstanceDescriptor) :Instance {.importc: "wgpuCreateInstance".}
proc create    *(instance :Instance; descriptor :ptr SurfaceDescriptor) :Surface {.importc: "wgpuInstanceCreateSurface".}
proc request   *(instance :Instance; options :ptr RequestAdapterOptions; callback :RequestAdapterCallback; userdata :pointer) :void {.importc: "wgpuInstanceRequestAdapter".}
proc enumerate *(instance :Instance; options :ptr EnumerateAdapterOptions; adapters :ptr Adapter) :csize_t {.importc: "wgpuInstanceEnumerateAdapters".}

# Adapter
proc enumerate *(adapter :Adapter; features :ptr Feature) :csize_t {.importc: "wgpuAdapterEnumerateFeatures".}
proc request   *(adapter :Adapter; descriptor :ptr DeviceDescriptor; callback :RequestDeviceCallback; userdata :pointer) :void {.importc: "wgpuAdapterRequestDevice".}
proc get       *(adapter :Adapter; limits :ptr SupportedLimits) :bool {.importc: "wgpuAdapterGetLimits".}
proc get       *(adapter :Adapter; properties :ptr AdapterProperties) :void {.importc:"wgpuAdapterGetProperties".}
proc has       *(adapter :Adapter; feature :Feature) :bool {.importc: "wgpuAdapterHasFeature".}

# Device
proc set            *(device :Device; callback :ErrorCallback; userdata :pointer) :void {.importc: "wgpuDeviceSetUncapturedErrorCallback".}
proc create         *(device :Device; descriptor :ptr ShaderModuleDescriptor) :ShaderModule {.importc: "wgpuDeviceCreateShaderModule".}
proc create         *(device :Device; descriptor :ptr RenderPipelineDescriptor): RenderPipeline {.importc: "wgpuDeviceCreateRenderPipeline".}
proc create         *(device :Device; descriptor :ptr ComputePipelineDescriptor) :ComputePipeline {.importc: "wgpuDeviceCreateComputePipeline".}
proc create         *(device :Device; surface :Surface; descriptor :ptr SwapChainDescriptor) :SwapChain {.importc: "wgpuDeviceCreateSwapChain".}
proc create         *(device :Device; descriptor :ptr CommandEncoderDescriptor) :CommandEncoder {.importc: "wgpuDeviceCreateCommandEncoder".}
proc create         *(device :Device; descriptor :ptr BufferDescriptor) :Buffer {.importc: "wgpuDeviceCreateBuffer".}
proc create         *(device :Device; descriptor :ptr BindGroupDescriptor) :BindGroup {.importc: "wgpuDeviceCreateBindGroup".}
proc create         *(device :Device; descriptor :ptr PipelineLayoutDescriptor) :PipelineLayout {.importc: "wgpuDeviceCreatePipelineLayout".}
proc create         *(device :Device; descriptor :ptr BindGroupLayoutDescriptor) :BindGroupLayout {.importc: "wgpuDeviceCreateBindGroupLayout".}
proc create         *(device :Device; descriptor :ptr TextureDescriptor) :Texture {.importc: "wgpuDeviceCreateTexture".}
proc create         *(device :Device; descriptor :ptr SamplerDescriptor) :Sampler {.importc: "wgpuDeviceCreateSampler".}
proc create         *(device :Device; descriptor :ptr QuerySetDescriptor) :QuerySet {.importc: "wgpuDeviceCreateQuerySet".}
proc create         *(device :Device; descriptor :ptr RenderBundleEncoderDescriptor) :RenderBundleEncoder {.importc:"wgpuDeviceCreateRenderBundleEncoder".}
proc getQueue       *(device :Device) :Queue {.importc: "wgpuDeviceGetQueue".}
proc get            *(device :Device; limits :ptr SupportedLimits) :bool {.importc: "wgpuDeviceGetLimits".}
proc destroy        *(device :Device) :void {.importc: "wgpuDeviceDestroy".}
proc enumerate      *(device :Device; features :ptr Feature) :csize_t {.importc:"wgpuDeviceEnumerateFeatures".}
proc has            *(device :Device; feature :Feature) :bool {.importc: "wgpuDeviceHasFeature".}
proc popErrorScope  *(device :Device; callback :ErrorCallback; userdata :pointer) :void {.importc: "wgpuDevicePopErrorScope".}
proc pushErrorScope *(device :Device; filter :ErrorFilter) :void {.importc: "wgpuDevicePushErrorScope".}

# Surface
proc getPreferredFormat *(surface :Surface; adapter :Adapter) :TextureFormat {.importc: "wgpuSurfaceGetPreferredFormat".}

# SwapChain
proc getCurrentTextureView *(swapChain :SwapChain) :TextureView {.importc: "wgpuSwapChainGetCurrentTextureView".}
proc present               *(swapChain :SwapChain) :void {.importc: "wgpuSwapChainPresent".}

# RenderPass Encoder
proc setVertexBuffer              *(renderPass :RenderPassEncoder; slot :uint32; buffer :Buffer; offset :uint64; size :uint64) :void {.importc: "wgpuRenderPassEncoderSetVertexBuffer".}
proc setIndexBuffer               *(renderPass :RenderPassEncoder; buffer :Buffer; format :IndexFormat; offset :uint64; size :uint64) :void {.importc: "wgpuRenderPassEncoderSetIndexBuffer".}
template setIndexBuffer           *(renderPass :RenderPassEncoder; format :IndexFormat; buffer :Buffer; offset :uint64; size :uint64) :void=  setIndexBuffer(renderPass, buffer, format, offset, size)
proc set                          *(renderPass :RenderPassEncoder; pipeline :RenderPipeline) :void {.importc: "wgpuRenderPassEncoderSetPipeline".}
proc set                          *(renderPass :RenderPassEncoder; groupIndex :uint32; group :BindGroup; dynamicOffsetCount :csize_t; dynamicOffsets :ptr uint32) :void {.importc: "wgpuRenderPassEncoderSetBindGroup".}
proc setBlendConstant             *(renderPass :RenderPassEncoder; color :ptr Color) :void {.importc:"wgpuRenderPassEncoderSetBlendConstant".}
proc setScissorRect               *(renderPass :RenderPassEncoder; x :uint32; y :uint32; width :uint32; height :uint32) :void {.importc:"wgpuRenderPassEncoderSetScissorRect".}
proc setStencilReference          *(renderPass :RenderPassEncoder; reference :uint32) :void {.importc:"wgpuRenderPassEncoderSetStencilReference".}
proc setViewport                  *(renderPass :RenderPassEncoder; x :cfloat; y :cfloat; width :cfloat; height :cfloat; minDepth :cfloat; maxDepth :cfloat) :void {.importc:"wgpuRenderPassEncoderSetViewport".}
proc draw                         *(renderPass :RenderPassEncoder; vertexCount :uint32; instanceCount :uint32; firstVertex :uint32; firstInstance :uint32) :void {.importc: "wgpuRenderPassEncoderDraw".}
proc draw                         *(renderPass :RenderPassEncoder; indexCount :uint32; instanceCount :uint32; firstIndex :uint32; baseVertex :int32; firstInstance :uint32) :void {.importc: "wgpuRenderPassEncoderDrawIndexed".}
proc drawIndirect                 *(renderPass :RenderPassEncoder; indirectBuffer :Buffer; indirectOffset :uint64) :void {.importc:"wgpuRenderPassEncoderDrawIndirect".}
proc drawIndexedIndirect          *(renderPass :RenderPassEncoder; indirectBuffer :Buffer; indirectOffset :uint64) :void {.importc:"wgpuRenderPassEncoderDrawIndexedIndirect".}
proc End                          *(renderPass :RenderPassEncoder) :void {.importc: "wgpuRenderPassEncoderEnd".}
proc execute                      *(renderPass :RenderPassEncoder; bundlesCount :csize_t; bundles :ptr RenderBundle) :void {.importc:"wgpuRenderPassEncoderExecuteBundles".}
proc beginPipelineStatisticsQuery *(renderPass :RenderPassEncoder; querySet :QuerySet; queryIndex :uint32) :void {.importc:"wgpuRenderPassEncoderBeginPipelineStatisticsQuery".}
proc endPipelineStatisticsQuery   *(renderPass :RenderPassEncoder) :void {.importc:"wgpuRenderPassEncoderEndPipelineStatisticsQuery".}
proc insertDebugMarker            *(renderPass :RenderPassEncoder; markerLabel :cstring) :void {.importc:"wgpuRenderPassEncoderInsertDebugMarker".}
proc popDebugGroup                *(renderPass :RenderPassEncoder) :void {.importc:"wgpuRenderPassEncoderPopDebugGroup".}
proc pushDebugGroup               *(renderPass :RenderPassEncoder; groupLabel :cstring) :void {.importc:"wgpuRenderPassEncoderPushDebugGroup".}

# Command Encoder
proc begin  *(commandEncoder :CommandEncoder; descriptor :ptr RenderPassDescriptor) :RenderPassEncoder {.importc: "wgpuCommandEncoderBeginRenderPass".}
proc begin  *(commandEncoder :CommandEncoder; descriptor :ptr ComputePassDescriptor) :ComputePassEncoder {.importc: "wgpuCommandEncoderBeginComputePass".}
proc finish *(commandEncoder :CommandEncoder; descriptor :ptr CommandBufferDescriptor) :CommandBuffer {.importc: "wgpuCommandEncoderFinish".}
proc copy   *(commandEncoder :CommandEncoder; source :Buffer; sourceOffset :uint64; destination :Buffer; destinationOffset :uint64; size :uint64) :void {.importc: "wgpuCommandEncoderCopyBufferToBuffer".}
  ## Copy Buffer to Buffer
proc copy   *(commandEncoder :CommandEncoder; source :ptr ImageCopyBuffer; destination :ptr ImageCopyTexture; copySize :ptr Extent3D) :void {.importc:"wgpuCommandEncoderCopyBufferToTexture".}
  ## Copy Buffer to Texture
proc copy   *(commandEncoder: CommandEncoder; source: ptr ImageCopyTexture; destination: ptr ImageCopyBuffer; copySize: ptr Extent3D) :void {.importc:"wgpuCommandEncoderCopyTextureToBuffer".}
  ## Copy Texture to Buffer
proc copy   *(commandEncoder: CommandEncoder; source: ptr ImageCopyTexture; destination: ptr ImageCopyTexture; copySize: ptr Extent3D) :void {.importc:"wgpuCommandEncoderCopyTextureToTexture".}
  ## Copy Texture to Texture
proc clear  *(commandEncoder :CommandEncoder; buffer :Buffer; offset :uint64; size :uint64) :void {.importc:"wgpuCommandEncoderClearBuffer".}
  ## Clear Buffer
proc insertDebugMarker *(commandEncoder :CommandEncoder; markerLabel :cstring) :void {.importc:"wgpuCommandEncoderInsertDebugMarker".}
proc popDebugGroup     *(commandEncoder :CommandEncoder) :void {.importc: "wgpuCommandEncoderPopDebugGroup".}
proc pushDebugGroup    *(commandEncoder :CommandEncoder; groupLabel :cstring) :void {.importc:"wgpuCommandEncoderPushDebugGroup".}
proc resolve           *(commandEncoder :CommandEncoder; querySet :QuerySet; firstQuery :uint32; queryCount :uint32; destination :Buffer; destinationOffset :uint64) :void {.importc:"wgpuCommandEncoderResolveQuerySet".}
proc writeTimestamp    *(commandEncoder :CommandEncoder; querySet :QuerySet; queryIndex :uint32) :void {.importc:"wgpuCommandEncoderWriteTimestamp".}

# Queue
proc submit              *(queue :Queue; commandCount :csize_t; commands :ptr CommandBuffer) :void {.importc: "wgpuQueueSubmit".}
proc write               *(queue :Queue; buffer :Buffer; bufferOffset :uint64; data :pointer; size :csize_t) :void {.importc: "wgpuQueueWriteBuffer".}
proc write               *(queue :Queue; destination :ptr ImageCopyTexture; data :pointer; dataSize :csize_t; dataLayout :ptr TextureDataLayout; writeSize :ptr Extent3D) :void {.importc: "wgpuQueueWriteTexture".}
proc onSubmittedWorkDone *(queue :Queue; callback :QueueWorkDoneCallback; userdata :pointer) :void {.importc: "wgpuQueueOnSubmittedWorkDone".}

# Buffer
proc mapAsync            *(buffer :Buffer; mode :MapModeFlags; offset :csize_t; size :csize_t; callback :BufferMapCallback; userdata :pointer) :void {.importc: "wgpuBufferMapAsync".}
proc getMappedRange      *(buffer :Buffer; offset :csize_t; size :csize_t) :pointer {.importc: "wgpuBufferGetMappedRange".}
proc getConstMappedRange *(buffer :Buffer; offset :csize_t; size :csize_t) :pointer {.importc:"wgpuBufferGetConstMappedRange".}
proc getSize             *(buffer :Buffer) :uint64 {.importc: "wgpuBufferGetSize".}
proc getUsage            *(buffer :Buffer) :BufferUsageFlags {.importc: "wgpuBufferGetUsage".}
proc unmap               *(buffer :Buffer) :void {.importc: "wgpuBufferUnmap".}
proc destroy             *(buffer :Buffer) :void {.importc: "wgpuBufferDestroy".}

# Render Pipeline
proc getBindGroupLayout *(renderPipeline :RenderPipeline; groupIndex :uint32) :BindGroupLayout {.importc:"wgpuRenderPipelineGetBindGroupLayout".}

# Compute Pipeline
proc getBindGroupLayout *(computePipeline :ComputePipeline; groupIndex :uint32) :BindGroupLayout {.importc: "wgpuComputePipelineGetBindGroupLayout".}

# ComputePass Encoder
proc set                          *(computePassEncoder :ComputePassEncoder; pipeline :ComputePipeline) :void {.importc: "wgpuComputePassEncoderSetPipeline".}
proc set                          *(computePassEncoder :ComputePassEncoder; groupIndex :uint32; group :BindGroup; dynamicOffsetCount :csize_t; dynamicOffsets :ptr uint32) :void {.importc: "wgpuComputePassEncoderSetBindGroup".}
proc End                          *(computePassEncoder :ComputePassEncoder) :void {.importc: "wgpuComputePassEncoderEnd".}
proc dispatchWorkgroups           *(computePassEncoder :ComputePassEncoder; workgroupCountX :uint32; workgroupCountY :uint32; workgroupCountZ :uint32) :void {.importc: "wgpuComputePassEncoderDispatchWorkgroups".}
proc dispatchWorkgroupsIndirect   *(computePassEncoder :ComputePassEncoder; indirectBuffer :Buffer; indirectOffset :uint64) :void {.importc:"wgpuComputePassEncoderDispatchWorkgroupsIndirect".}
proc beginPipelineStatisticsQuery *(computePassEncoder :ComputePassEncoder; querySet :QuerySet; queryIndex :uint32) :void {.importc:"wgpuComputePassEncoderBeginPipelineStatisticsQuery".}
proc endPipelineStatisticsQuery   *(computePassEncoder :ComputePassEncoder) :void {.importc:"wgpuComputePassEncoderEndPipelineStatisticsQuery".}
proc insertDebugMarker            *(computePassEncoder :ComputePassEncoder; markerLabel :cstring) :void {.importc:"wgpuComputePassEncoderInsertDebugMarker".}
proc popDebugGroup                *(computePassEncoder :ComputePassEncoder) :void {.importc:"wgpuComputePassEncoderPopDebugGroup".}
proc pushDebugGroup               *(computePassEncoder :ComputePassEncoder; groupLabel :cstring) :void {.importc:"wgpuComputePassEncoderPushDebugGroup".}

# Texture
proc create                *(texture :Texture; descriptor :ptr TextureViewDescriptor) :TextureView {.importc: "wgpuTextureCreateView".}
proc destroy               *(texture :Texture) :void {.importc: "wgpuTextureDestroy".}
proc getDepthOrArrayLayers *(texture :Texture) :uint32 {.importc: "wgpuTextureGetDepthOrArrayLayers".}
proc getDimension          *(texture :Texture) :TextureDimension {.importc: "wgpuTextureGetDimension".}
proc getFormat             *(texture :Texture) :TextureFormat {.importc: "wgpuTextureGetFormat".}
proc getHeight             *(texture :Texture) :uint32 {.importc: "wgpuTextureGetHeight".}
proc getMipLevelCount      *(texture :Texture) :uint32 {.importc: "wgpuTextureGetMipLevelCount".}
proc getSampleCount        *(texture :Texture) :uint32 {.importc: "wgpuTextureGetSampleCount".}
proc getUsage              *(texture :Texture) :TextureUsageFlags {.importc: "wgpuTextureGetUsage".}
proc getWidth              *(texture :Texture) :uint32 {.importc: "wgpuTextureGetWidth".}

# RenderBundle
proc draw                *(renderBundleEncoder :RenderBundleEncoder; vertexCount :uint32; instanceCount :uint32; firstVertex :uint32; firstInstance :uint32) :void {.importc:"wgpuRenderBundleEncoderDraw".}
proc draw                *(renderBundleEncoder :RenderBundleEncoder; indexCount :uint32; instanceCount :uint32; firstIndex :uint32; baseVertex :int32; firstInstance :uint32) :void {.importc:"wgpuRenderBundleEncoderDrawIndexed".}
proc drawIndirect        *(renderBundleEncoder :RenderBundleEncoder; indirectBuffer :Buffer; indirectOffset :uint64) :void {.importc:"wgpuRenderBundleEncoderDrawIndirect".}
proc drawIndexedIndirect *(renderBundleEncoder :RenderBundleEncoder; indirectBuffer :Buffer; indirectOffset :uint64) :void {.importc:"wgpuRenderBundleEncoderDrawIndexedIndirect".}
proc set                 *(renderBundleEncoder :RenderBundleEncoder; groupIndex :uint32; group :BindGroup; dynamicOffsetCount :csize_t; dynamicOffsets :ptr uint32) :void {.importc:"wgpuRenderBundleEncoderSetBindGroup".}
proc set                 *(renderBundleEncoder :RenderBundleEncoder; pipeline :RenderPipeline) :void {.importc:"wgpuRenderBundleEncoderSetPipeline".}
proc setVertexBuffer     *(renderBundleEncoder :RenderBundleEncoder; slot :uint32; buffer :Buffer; offset :uint64; size :uint64) :void {.importc:"wgpuRenderBundleEncoderSetVertexBuffer".}
proc setIndexBuffer      *(renderBundleEncoder :RenderBundleEncoder; buffer :Buffer; format :IndexFormat; offset :uint64; size :uint64) :void {.importc:"wgpuRenderBundleEncoderSetIndexBuffer".}
proc finish              *(renderBundleEncoder :RenderBundleEncoder; descriptor :ptr RenderBundleDescriptor): RenderBundle {.importc:"wgpuRenderBundleEncoderFinish".}
proc insertDebugMarker   *(renderBundleEncoder :RenderBundleEncoder; markerLabel :cstring) :void {.importc:"wgpuRenderBundleEncoderInsertDebugMarker".}
proc popDebugGroup       *(renderBundleEncoder :RenderBundleEncoder) :void {.importc:"wgpuRenderBundleEncoderPopDebugGroup".}
proc pushDebugGroup      *(renderBundleEncoder :RenderBundleEncoder; groupLabel :cstring) :void {.importc:"wgpuRenderBundleEncoderPushDebugGroup".}

# QuerySet
proc destroy *(querySet :QuerySet) :void {.importc: "wgpuQuerySetDestroy".}

# Resources: Reference Counting
proc reference *(device :Device) :void {.importc: "wgpuDeviceReference".}
proc reference *(instance :Instance) :void {.importc: "wgpuInstanceReference".}
proc reference *(adapter :Adapter) :void {.importc: "wgpuAdapterReference".}
proc reference *(bindGroup :BindGroup) :void {.importc: "wgpuBindGroupReference".}
proc reference *(bindGroupLayout :BindGroupLayout) :void {.importc: "wgpuBindGroupLayoutReference".}
proc reference *(buffer :Buffer) :void {.importc: "wgpuBufferReference".}
proc reference *(commandBuffer :CommandBuffer) :void {.importc: "wgpuCommandBufferReference".}
proc reference *(commandEncoder :CommandEncoder) :void {.importc: "wgpuCommandEncoderReference".}
proc reference *(renderPassEncoder :RenderPassEncoder) :void {.importc: "wgpuRenderPassEncoderReference".}
proc reference *(computePassEncoder :ComputePassEncoder) :void {.importc: "wgpuComputePassEncoderReference".}
proc reference *(renderBundleEncoder :RenderBundleEncoder) :void {.importc: "wgpuRenderBundleEncoderReference".}
proc reference *(computePipeline :ComputePipeline) :void {.importc: "wgpuComputePipelineReference".}
proc reference *(pipelineLayout :PipelineLayout) :void {.importc: "wgpuPipelineLayoutReference".}
proc reference *(querySet :QuerySet) :void {.importc: "wgpuQuerySetReference".}
proc reference *(renderBundle :RenderBundle) :void {.importc: "wgpuRenderBundleReference".}
proc reference *(renderPipeline :RenderPipeline) :void {.importc: "wgpuRenderPipelineReference".}
proc reference *(sampler :Sampler) :void {.importc: "wgpuSamplerReference".}
proc reference *(shaderModule :ShaderModule) :void {.importc: "wgpuShaderModuleReference".}
proc reference *(surface :Surface) :void {.importc: "wgpuSurfaceReference".}
proc reference *(swapChain :SwapChain) :void {.importc: "wgpuSwapChainReference".}
proc reference *(texture :Texture) :void {.importc: "wgpuTextureReference".}
proc reference *(textureView :TextureView) :void {.importc: "wgpuTextureViewReference".}
proc release   *(device :Device) :void {.importc: "wgpuDeviceRelease".}
proc release   *(instance :Instance) :void {.importc: "wgpuInstanceRelease".}
proc release   *(adapter :Adapter) :void {.importc: "wgpuAdapterRelease".}
proc release   *(bindGroup :BindGroup) :void {.importc: "wgpuBindGroupRelease".}
proc release   *(bindGroupLayout :BindGroupLayout) :void {.importc: "wgpuBindGroupLayoutRelease".}
proc release   *(buffer :Buffer) :void {.importc: "wgpuBufferRelease".}
proc release   *(commandBuffer :CommandBuffer) :void {.importc: "wgpuCommandBufferRelease".}
proc release   *(commandEncoder :CommandEncoder) :void {.importc: "wgpuCommandEncoderRelease".}
proc release   *(renderPassEncoder :RenderPassEncoder) :void {.importc: "wgpuRenderPassEncoderRelease".}
proc release   *(computePassEncoder :ComputePassEncoder) :void {.importc: "wgpuComputePassEncoderRelease".}
proc release   *(renderBundleEncoder :RenderBundleEncoder) :void {.importc: "wgpuRenderBundleEncoderRelease".}
proc release   *(computePipeline :ComputePipeline) :void {.importc: "wgpuComputePipelineRelease".}
proc release   *(pipelineLayout :PipelineLayout) :void {.importc: "wgpuPipelineLayoutRelease".}
proc release   *(querySet :QuerySet) :void {.importc: "wgpuQuerySetRelease".}
proc release   *(renderBundle :RenderBundle) :void {.importc: "wgpuRenderBundleRelease".}
proc release   *(renderPipeline :RenderPipeline) :void {.importc: "wgpuRenderPipelineRelease".}
proc release   *(sampler :Sampler) :void {.importc: "wgpuSamplerRelease".}
proc release   *(shaderModule :ShaderModule) :void {.importc: "wgpuShaderModuleRelease".}
proc release   *(surface :Surface) :void {.importc: "wgpuSurfaceRelease".}
proc release   *(swapChain :SwapChain) :void {.importc: "wgpuSwapChainRelease".}
proc release   *(texture :Texture) :void {.importc: "wgpuTextureRelease".}
proc release   *(textureView :TextureView) :void {.importc: "wgpuTextureViewRelease".}
#___________________
{.pop.} # << header: "webgpu-headers/webgpu.h"


#_______________________________________
# wgpu.h
#___________________
{.push header: "wgpu.h".}
# General
proc getVersion *() :uint32 {.importc: "wgpuGetVersion".}
proc free  *(p :pointer; size :csize_t; align :csize_t) :void {.importc: "wgpuFree".}
# Instance
proc generate *(instance :Instance; report :ptr GlobalReport) :void {.importc: "wgpuGenerateReport".}
# Queue
proc submitForIndex *(queue :Queue; commandCount :csize_t; commands :ptr CommandBuffer) :SubmissionIndex {.importc: "wgpuQueueSubmitForIndex".}
# Device
proc poll *(device :Device; wait :bool; wrappedSubmissionIndex :ptr WrappedSubmissionIndex) :bool {.importc: "wgpuDevicePoll".}
  ## Returns true if the queue is empty, or false if there are more queue submissions still in flight.
# Logging
proc set *(callback :LogCallback; userdata :pointer) :void {.importc: "wgpuSetLogCallback".}
proc set *(level :LogLevel) :void {.importc: "wgpuSetLogLevel".}
# Surface
proc get                      *(surface :Surface; adapter :Adapter; capabilities :ptr SurfaceCapabilities) :void {.importc: "wgpuSurfaceGetCapabilities".}
proc getSupportedFormats      *(surface :Surface; adapter :Adapter; count :ptr csize_t) :ptr TextureFormat {.importc:" wgpuSurfaceGetSupportedFormats".}
proc getSupportedPresentModes *(surface :Surface; adapter :Adapter; count :ptr csize_t) :ptr PresentMode {.importc: "wgpuSurfaceGetSupportedPresentModes".}
# RenderPass Encoder
proc setPushConstants              *(encoder :RenderPassEncoder; stages :ShaderStageFlags; offset :uint32, sizeBytes :uint32; data :pointer) :void {.importc: "wgpuRenderPassEncoderSetPushConstants".}
proc multiDrawIndirect             *(encoder :RenderPassEncoder; buffer :Buffer; offset :uint64; count :uint32) :void {.importc: "wgpuRenderPassEncoderMultiDrawIndirect".}
proc multiDrawIndirectCount        *(encoder :RenderPassEncoder; buffer :Buffer; offset :uint64; count_buffer :Buffer; count_buffer_offset :uint64; max_count :uint32) :void {.importc: "wgpuRenderPassEncoderMultiDrawIndirectCount".}
proc multiDrawIndexedIndirect      *(encoder :RenderPassEncoder; buffer :Buffer; offset :uint64; count :uint32) :void {.importc: "wgpuRenderPassEncoderMultiDrawIndexedIndirect".}
proc multiDrawIndexedIndirectCount *(encoder :RenderPassEncoder; buffer :Buffer; offset :uint64; count_buffer :Buffer; count_buffer_offset :uint64; max_count :uint32) :void {.importc: "wgpuRenderPassEncoderMultiDrawIndexedIndirectCount".}
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
proc setLabel*(bindGroup: BindGroup; label: cstring) :void {.importc: "wgpuBindGroupSetLabel".}
proc layoutSetLabel*(bindGroupLayout: BindGroupLayout; label: cstring) :void {.importc: "wgpuBindGroupLayoutSetLabel".}
# Buffer
proc setLabel*(buffer: Buffer; label: cstring) :void {.importc: "wgpuBufferSetLabel".}
# CommandBuffer
proc setLabel*(commandBuffer: CommandBuffer; label: cstring) :void {.importc: "wgpuCommandBufferSetLabel".}
proc setLabel*(commandEncoder: CommandEncoder; label: cstring) :void {.importc: "wgpuCommandEncoderSetLabel".}
# Compute
proc setLabel*(computePassEncoder: ComputePassEncoder; label: cstring) :void {.importc: "wgpuComputePassEncoderSetLabel".}
proc setLabel*(computePipeline: ComputePipeline; label: cstring) :void {.importc: "wgpuComputePipelineSetLabel".}
# Device
type Proc * = proc () {.cdecl.}
proc getProcAddress*(device: Device; procName: cstring): Proc {.importc: "wgpuGetProcAddress".}
proc setLabel*(device: Device; label: cstring) :void {.importc: "wgpuDeviceSetLabel".}
type CreateComputePipelineAsyncCallback* = proc (status: CreatePipelineAsyncStatus; pipeline: ComputePipeline; message: cstring; userdata: pointer) :void {.cdecl.}
proc createComputePipelineAsync*(device: Device; descriptor: ptr ComputePipelineDescriptor; callback: CreateComputePipelineAsyncCallback; userdata: pointer) :void {.importc: "wgpuDeviceCreateComputePipelineAsync".}
type CreateRenderPipelineAsyncCallback * = proc (status :CreatePipelineAsyncStatus; pipeline :RenderPipeline; message :cstring; userdata :pointer) :void {.cdecl.}
proc createRenderPipelineAsync *(device :Device; descriptor :ptr RenderPipelineDescriptor; callback :CreateRenderPipelineAsyncCallback; userdata :pointer) :void {.importc: "wgpuDeviceCreateRenderPipelineAsync".}
# Instance
proc processEvents*(instance: Instance) :void {.importc: "wgpuInstanceProcessEvents".}
# Pipeline
proc setLabel*(pipelineLayout: PipelineLayout; label: cstring) :void {.importc: "wgpuPipelineLayoutSetLabel".}
# QuerySet
proc getCount*(querySet: QuerySet): uint32 {.importc: "wgpuQuerySetGetCount".}
proc getType*(querySet: QuerySet): QueryType {.importc: "wgpuQuerySetGetType".}
proc setLabel*(querySet: QuerySet; label: cstring) :void {.importc: "wgpuQuerySetSetLabel".}
# Queue
proc setLabel*(queue: Queue; label: cstring) :void {.importc: "wgpuQueueSetLabel".}
# RenderBundle
proc setLabel*(renderBundle: RenderBundle; label: cstring) :void {.importc: "wgpuRenderBundleSetLabel".}
proc setLabel*(renderBundleEncoder: RenderBundleEncoder; label: cstring) :void {.importc: "wgpuRenderBundleEncoderSetLabel".}
# RenderPass
proc beginOcclusionQuery*(renderPassEncoder: RenderPassEncoder; queryIndex: uint32) :void {.importc: "wgpuRenderPassEncoderBeginOcclusionQuery".}
proc endOcclusionQuery*(renderPassEncoder: RenderPassEncoder) :void {.importc: "wgpuRenderPassEncoderEndOcclusionQuery".}
proc setLabel*(renderPassEncoder: RenderPassEncoder; label: cstring) :void {.importc: "wgpuRenderPassEncoderSetLabel".}
# RenderPipeline
proc setLabel*(renderPipeline: RenderPipeline; label: cstring) :void {.importc: "wgpuRenderPipelineSetLabel".}
# Sampler
proc setLabel*(sampler: Sampler; label: cstring) :void {.importc: "wgpuSamplerSetLabel".}
# ShaderModule
type CompilationInfoCallback* = proc (status: CompilationInfoRequestStatus; compilationInfo: ptr CompilationInfo; userdata: pointer) :void {.cdecl.}
proc getCompilationInfo*(shaderModule: ShaderModule; callback: CompilationInfoCallback; userdata: pointer) :void {.importc: "wgpuShaderModuleGetCompilationInfo".}
proc setLabel*(shaderModule: ShaderModule; label: cstring) :void {.importc: "wgpuShaderModuleSetLabel".}
# Texture
proc setLabel*(texture :Texture; label :cstring) :void {.importc: "wgpuTextureSetLabel".}
proc setLabel*(textureView :TextureView; label :cstring) :void {.importc: "wgpuTextureViewSetLabel".}
{.pop.} # << warning: unimplemented
{.pop.} # << header: "webgpu-headers/webgpu.h"
{.pop.} # << cdecl

##[
#_______________________________________
# webgpu.h new procs, currently unmapped in wgpu-native
#___________________
# Surface
proc configure          *(surface :Surface; config :ptr SurfaceConfiguration) :void {.importc: "wgpuSurfaceConfigure".}
proc unconfigure        *(surface :Surface) :void {.importc: "wgpuSurfaceUnconfigure".}
proc getCurrentTexture  *(surface :Surface; surfaceTexture :ptr SurfaceTexture) :void {.importc: "wgpuSurfaceGetCurrentTexture".}
proc present            *(surface :Surface) :void {.importc: "wgpuSurfacePresent".}
#___________________
# SurfaceCapabilities
proc freeMembers *(capabilities :SurfaceCapabilities) :void {.importc: "wgpuSurfaceCapabilitiesFreeMembers".}
#_______________________________________
]##

