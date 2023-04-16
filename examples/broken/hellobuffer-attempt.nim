#:____________________________________________________
#  ngpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
# BROKEN : Attempt from chapter                  |
#   `First Buffer` in LearnWebGPU-C++ tutorial.  |
#________________________________________________|
# std dependencies
import std/strformat
import std/os
# External dependencies
from pkg/nglfw as glfw import nil
# Module dependencies
import ngpu as wgpu


#________________________________________________
# types.nim
#__________________
type Window * = object
  ct     *:glfw.Window
  w,h    *:int32
  title  *:string

#________________________________________________
# window.nim
#__________________
proc key (win :glfw.Window; key, code, action, mods :cint) :void {.cdecl.}=
  ## GLFW Keyboard Input Callback
  if (key == glfw.KeyEscape and action == glfw.Press):
    glfw.setWindowShouldClose(win, true.cint)
#__________________
proc close  (win :Window) :bool=  glfw.windowShouldClose(win.ct).bool
  ## Returns true when the GLFW window has been marked to be closed.
proc term   (win :Window) :void=  glfw.destroyWindow(win.ct); glfw.terminate()
  ## Terminates the GLFW window.
proc update (win :Window) :void=  glfw.pollEvents()
  ## Updates the window. Needs to be called each frame.
#__________________
proc init(win :var Window) :void=
  ## Initializes the window with GLFW.
  doAssert glfw.init().bool, "Failed to Initialize GLFW"
  glfw.windowHint(glfw.CLIENT_API, glfw.NO_API)
  win.ct = glfw.createWindow(win.w, win.h, win.title.cstring, nil, nil)
  doAssert win.ct != nil, "Failed to create GLFW window"
  discard glfw.setKeyCallback(win.ct, key)

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
# NEW : Queue Done Callback
when false:  # Disable compilation. Here for future reference. wgpuQueueOnSubmittedWorkDone is unimplemented by wgpu-native
  proc queueDoneCB (status :QueueWorkDoneStatus; userdata :pointer) :void {.cdecl.}=
    echo &"wgpu -> Queue Work: Finished with status: {$status}"
#_____________________________
# NEW : Buffer Related Callbacks
var bufferStorage :Buffer ## We store the return of the GPU callback in a global state variable, so the callback can access it
#_____________________________
proc buffer2MappedCB (status :BufferMapAsyncStatus; userdata :pointer) :void {.cdecl.}=
  ## Function called back when our Async Buffer Map happens
  bufferStorage = cast[wgpu.Buffer](userdata)
  echo &"wgpu -> buffer2 mapped with status: {$status}"
  if status != BufferMapAsyncStatus.success: return
  # Get a pointer to wherever the driver mapped the GPU memory to the RAM
  let data = cast[ptr UncheckedArray[uint8]](bufferStorage.getMappedRange(0,16))
  # Do something with the given data.            NOTE: stdout.write is just for formatting. This could be just `echo` instead
  stdout.write "wgpu -> Buffer2 Data = ["            # write to console, but don't add `\n` so everything is in the same line
  for num in 0..<16: stdout.write(&"{$data[num]}, ") # write each of the numbers stored in buffer data[] to console
  stdout.write " ]\n"                                # add a newline at the end
  # Unmap the buffer when we are done
  bufferStorage.unmap()
#________________________________________________

#________________________________________________
# state.nim
#__________________
var window = Window(
  ct: nil, title: "ngpu Tut",
  w:960, h:540,
  )

# WGPU state
var instance :wgpu.Instance= nil

#________________________________________________
# Entry Point
#__________________
proc run=
  #__________________
  # Init Window
  echo "Hello ngpu"
  window.init()

  #__________________
  # Set wgpu.Logging
  wgpu.setLogCallback(logCB, nil)
  wgpu.set LogLevel.warn
  #__________________
  # Init wgpu
  instance    = wgpu.createInstance(wgpu.InstanceDescriptor(nextInChain: nil).vaddr)
  var surface = instance.getSurface(window.ct)
  var adapter :wgpu.Adapter;  instance.requestAdapter(vaddr RequestAdapterOptions(
      nextInChain           : nil,
      compatibleSurface     : surface,
      powerPreference       : PowerPreference.highPerformance,
      forceFallbackAdapter  : false,
      ), # << RequestAdapterOptions
    adapterRequestCB, adapter.addr,
    ) # << instance.requestAdapter()
  echo ":: Adapter Features supported by this system: "
  for it in adapter.features(): echo ":  ",$it
  echo ":: Capabilities of the Surface supported by this system: "
  let (textureFormats, presentModes, alphaModes) = surface.capabilities(adapter)
  echo ":  Texture Formats:"
  for formt in textureFormats: echo ":  - ",$formt
  echo ":  Present Modes:"
  for prsnt in presentModes:   echo ":  - ",$prsnt
  echo ":  Alpha Modes:"
  for alpha in presentModes:   echo ":  - ",$alpha
  var device :wgpu.Device; adapter.requestDevice(vaddr DeviceDescriptor(
      nextInChain            : nil,
      label                  : "Hello Device",
      requiredFeaturesCount  : 0,
      requiredFeatures       : nil,
      requiredLimits         : nil,
      defaultQueue           : QueueDescriptor(
        nextInChain          : nil,
        label                : "Hello Default Queue"
        ), # << defaultQueue
      ), # << DeviceDescriptor
    deviceRequestCB, device.addr
    ) # << adapter.requestDevice()
  device.setUncapturedErrorCallback(errorCB, nil)
  device.setDeviceLostCallback(deviceLostCB, nil)

  #________________________________________________
  # NEW : Define the Buffer Objects
  #__________________________________
  # 1. First buffer, used to upload to the GPU
  var buffer1 = device.createBuffer(vaddr BufferDescriptor(
    nextInChain       : nil,
    label             : "Input buffer: Written from the CPU to the GPU".cstring,
    usage             : {BufferUsage.copyDst, BufferUsage.copySrc},
    size              : 16,
    mappedAtCreation  : false,
    )) # << device.createBuffer()
  # 2. Second buffer, with a `mapRead` flag so that we can map it later.
  #    This is the one stored globally for accessing it in the callback function
  var buffer2 = device.createBuffer(vaddr BufferDescriptor(
    nextInChain       : nil,
    label             : "Output buffer: Read back from the GPU by the CPU".cstring,
    usage             : {BufferUsage.copyDst, BufferUsage.mapRead},
    size              : 16,
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

