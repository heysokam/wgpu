#:____________________________________________________
#  ngpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
# std dependencies
import std/strformat
import std/os
# Module dependencies
import ngpu as wgpu


#__________________
# WGPU callbacks
proc adapterRequestCB *(status :RequestAdapterStatus; adapter :Adapter; message :cstring; userdata :pointer) :void {.cdecl.}=
  cast[ptr Adapter](userdata)[] = adapter  # *(WGPUAdapter*)userdata = received;
proc deviceRequestCB  *(status :RequestDeviceStatus; device :Device; message :cstring; userdata :pointer) :void {.cdecl.}=
  cast[ptr Device](userdata)[] = device  # *(WGPUAdapter*)userdata = received;
proc errorCB *(typ :ErrorType; message :cstring; userdata :pointer) :void {.cdecl.}=
  echo &"UNCAPTURED ERROR: ({$typ}): {$message}"
proc deviceLostCB *(reason :DeviceLostReason; message :cstring; userdata :pointer) :void {.cdecl.}=
  echo &"DEVICE LOST: ({$reason}): {$message}"
proc logCB *(level :LogLevel; message :cstring; userdata :pointer) :void {.cdecl.}=
  echo &"[{$level}] {$message}"
#________________________________________________


#________________________________________________
# Entry Point
#__________________
proc run=
  echo "Hello ngpu : Compute"
  #__________________
  # Intialize the data we will compute
  let numbers     = [1'u32, 2, 3, 4]  # array[4,int32]
  let numbersLen  = numbers.len
  let numbersSize = numbersLen*sizeof(numbers[0])

  #__________________
  # Set wgpu.Logging
  wgpu.setLogCallback(logCB, nil)
  wgpu.set LogLevel.warn

  #__________________
  # Init wgpu
  var instance = wgpu.createInstance(vaddr InstanceDescriptor(nextInChain: nil))
  var adapter :wgpu.Adapter; instance.requestAdapter(nil, adapterRequestCB, adapter.addr)
  var device :wgpu.Device; adapter.requestDevice(nil, deviceRequestCB, device.addr)
  device.setUncapturedErrorCallback(errorCB, nil)
  device.setDeviceLostCallback(deviceLostCB, nil)

  #__________________________________
  # 1. First buffer, used to upload to the GPU
  var buffer1 = device.createBuffer(vaddr BufferDescriptor(
    nextInChain       : nil,
    label             : "StagingBuffer".cstring,
    usage             : {BufferUsage.mapRead, BufferUsage.copyDst},
    size              : numbersSize,
    mappedAtCreation  : false,
    )) # << device.createBuffer()
  # 2. Second buffer, with a `mapRead` flag so that we can map it later.
  #    This is the one stored globally for accessing it in the callback function
  var buffer2 = device.createBuffer(vaddr BufferDescriptor(
    nextInChain       : nil,
    label             : "StorageBuffer".cstring,
    usage             : {BufferUsage.storage, BufferUsage.copyDst, BufferUsage.copySrc},
    size              : numbersSize,
    mappedAtCreation  : false,
    )) # << device.createBuffer()

  # 3. Get the queue, and set its WorkDone Callback
  var queue = device.getQueue()
  when false:  # Disable compilation. Here for future reference. wgpuQueueOnSubmittedWorkDone is unimplemented by wgpu-native
    queue.onSubmittedWorkDone(queueDoneCB, nil)

  # 4. Create a CPU-side data buffer, of size 16 bytes, filled with numbers 0..15
  var numbers :seq[uint8]
  for num in 0..<16: numbers.add num.uint8

  # 5. Copy the buffer from RAM to VRAM
  queue.writeBuffer(buffer1, 0, buffer1.addr, 16)

  # 6. Create the CommandEncoder, which is needed to do anything other than uploading data.
  var encoder = device.createCommandEncoder(vaddr CommandEncoderDescriptor(
    nextInChain  : nil,
    label        : "Hello Command Encoder",
    )) # << device.createCommandEncoder()

  # 7. Add a copy command to the encoder: Copy current state of buffer1 to buffer2
  encoder.copy(buffer1, 0, buffer2, 0, 16)

  # 8. Finalize the encoding operation.
  var cmdBuffer = encoder.finish(vaddr CommandBufferDescriptor(
    nextInChain : nil,
    label       : "Hello Command Buffer",
    )) # << encoder.finish()

  # 9. Submit the encoded CommandBuffer
  queue.submit(1, cmdBuffer.addr)

  # 10. Map our second buffer
  bufferStorage = buffer2
  buffer2.mapAsync({MapMode.read}, 0, 16, buffer2MappedCB, bufferStorage.addr)

  #__________________
  # Update loop
  while not window.close():
    # Input update from glfw
    window.update()
    ## Update the Queue with wgpu-native specific wgpuDevicePoll(...) proc
    discard device.poll(true, nil)
    #vaddr WrappedSubmissionIndex(
      # queue            : queue,
      # submissionIndex  : 0,   # TODO : What id goes here?
      # )) # << device.poll()
    ##
    # non wgpu-native specific alternative to device.poll(...) 
    # This submits an empty request to the Queue,
    #   which checks for asynch operations and calls their callbacks if needed
    # queue.submit(0,nil)

  #__________________
  # Terminate the GPU memory
  buffer1.destroy()
  buffer2.destroy()
  # Terminate the window
  window.term()
#__________________
when isMainModule: run()

