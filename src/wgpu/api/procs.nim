#:________________________________________________________
#  wgpu-nim  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:________________________________________________________
import ./types
#_______________________________________
# webgpu.h
#___________________
# Instance
proc createInstance *(descriptor :ptr InstanceDescriptor) :Instance {.cdecl, importc: "wgpuCreateInstance", header: "webgpu.h".}
proc createSurface  *(instance :Instance; descriptor :ptr SurfaceDescriptor) :Surface {.cdecl, importc:"wgpuInstanceCreateSurface", header: "webgpu.h".}
type RequestAdapterCallback * = proc (status :RequestAdapterStatus; adapter :Adapter; message :cstring; userdata :pointer) :void {.cdecl.}
proc requestAdapter *(instance :Instance; options :ptr RequestAdapterOptions; callback :RequestAdapterCallback; userdata :pointer) :void {.cdecl, importc:"wgpuInstanceRequestAdapter", header: "webgpu.h".}
# Adapter
proc enumerateFeatures *(adapter :Adapter; features :ptr Feature) :csize_t {.cdecl, importc:"wgpuAdapterEnumerateFeatures", header: "webgpu.h".}
type RequestDeviceCallback * = proc (status :RequestDeviceStatus; device :Device; message :cstring; userdata :pointer) :void {.cdecl.}
proc requestDevice     *(adapter :Adapter; descriptor :ptr DeviceDescriptor; callback :RequestDeviceCallback; userdata :pointer) :void {.cdecl, importc:"wgpuAdapterRequestDevice", header: "webgpu.h".}
# Device
type ErrorCallback * = proc (typ :ErrorType; message :cstring; userdata :pointer) :void {.cdecl.}
proc setUncapturedErrorCallback  *(device :Device; callback :ErrorCallback; userdata :pointer) :void {.cdecl, importc:"wgpuDeviceSetUncapturedErrorCallback", header: "webgpu.h".}
type DeviceLostCallback * = proc (reason :DeviceLostReason; message :cstring; userdata :pointer) :void {.cdecl.}
proc setDeviceLostCallback     *(device :Device; callback :DeviceLostCallback; userdata :pointer) :void {.cdecl, importc:"wgpuDeviceSetDeviceLostCallback", header: "webgpu.h".}
proc createShaderModule        *(device :Device; descriptor :ptr ShaderModuleDescriptor) :ShaderModule {.cdecl, importc:"wgpuDeviceCreateShaderModule", header: "webgpu.h".}
proc createRenderPipeline      *(device :Device; descriptor :ptr RenderPipelineDescriptor): RenderPipeline {.cdecl, importc:"wgpuDeviceCreateRenderPipeline", header: "webgpu.h".}
type CreateRenderPipelineAsyncCallback * = proc (status :CreatePipelineAsyncStatus; pipeline :RenderPipeline; message :cstring; userdata :pointer) :void {.cdecl.}
proc createRenderPipelineAsync *(device :Device; descriptor :ptr RenderPipelineDescriptor; callback :CreateRenderPipelineAsyncCallback; userdata :pointer) {.cdecl, importc:"wgpuDeviceCreateRenderPipelineAsync", header: "webgpu.h".}
proc createSwapChain           *(device :Device; surface :Surface; descriptor :ptr SwapChainDescriptor) :SwapChain {.cdecl, importc:"wgpuDeviceCreateSwapChain", header: "webgpu.h".}
proc createCommandEncoder      *(device :Device; descriptor :ptr CommandEncoderDescriptor) :CommandEncoder {.cdecl, importc:"wgpuDeviceCreateCommandEncoder", header: "webgpu.h".}
proc getQueue                  *(device :Device) :Queue {.cdecl, importc: "wgpuDeviceGetQueue", header: "webgpu.h".}
# Surface
proc getPreferredFormat *(surface :Surface; adapter :Adapter) :TextureFormat {.cdecl, importc:"wgpuSurfaceGetPreferredFormat", header: "webgpu.h".}
# SwapChain
proc getCurrentTextureView *(swapChain :SwapChain) :TextureView {.cdecl, importc: "wgpuSwapChainGetCurrentTextureView", header: "webgpu.h".}
proc present               *(swapChain :SwapChain) :void {.cdecl, importc: "wgpuSwapChainPresent", header: "webgpu.h".}
# RenderPass Encoder
proc setPipeline *(renderPassEncoder :RenderPassEncoder; pipeline :RenderPipeline) :void {.cdecl, importc:"wgpuRenderPassEncoderSetPipeline", header: "webgpu.h".}
proc draw        *(renderPassEncoder :RenderPassEncoder; vertexCount :uint32; instanceCount :uint32; firstVertex :uint32; firstInstance :uint32) :void {.cdecl, importc:"wgpuRenderPassEncoderDraw", header: "webgpu.h".}
proc End         *(renderPassEncoder :RenderPassEncoder) :void {.cdecl, importc: "wgpuRenderPassEncoderEnd", header: "webgpu.h".}
# Command Encoder
proc begin  *(commandEncoder :CommandEncoder; descriptor :ptr RenderPassDescriptor) :RenderPassEncoder {.cdecl, importc:"wgpuCommandEncoderBeginRenderPass", header: "webgpu.h".}
proc finish *(commandEncoder :CommandEncoder; descriptor :ptr CommandBufferDescriptor) :CommandBuffer {.cdecl, importc:"wgpuCommandEncoderFinish", header: "webgpu.h".}
proc submit *(queue :Queue; commandCount :uint32; commands :ptr CommandBuffer) :void {.cdecl, importc:"wgpuQueueSubmit", header: "webgpu.h".}

# type BufferMapCallback* = proc (status: BufferMapAsyncStatus; userdata: pointer) {.cdecl.}
# type CompilationInfoCallback* = proc (status: CompilationInfoRequestStatus; compilationInfo: ptr CompilationInfo; userdata: pointer) {.cdecl.}
# type CreateComputePipelineAsyncCallback* = proc (status: CreatePipelineAsyncStatus; pipeline: ComputePipeline; message: cstring; userdata: pointer) {.cdecl.}
# type Proc* = proc () {.cdecl.}
# type QueueWorkDoneCallback* = proc (status: QueueWorkDoneStatus; userdata: pointer) {.cdecl.}

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
