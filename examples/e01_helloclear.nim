#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
# Most minimal swapchain setup possible.          |
# No shaders. Just clears the screen to a color.  |
#_________________________________________________|
# std dependencies
import std/strformat
import std/os
# External dependencies
from pkg/nglfw as glfw import nil
# Module dependencies
import wgpu


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
# state.nim
#__________________
var window = Window(
  ct: nil, title: "wgpu Tut",
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
  echo "Hello wgpu"
  window.init()

  #__________________
  # Set wgpu.Logging
  wgpu.setLogCallback(logCB, nil)
  wgpu.set LogLevel.warn
  #__________________
  # Init wgpu
  # 1. Create the Instance
  instance    = wgpu.create(wgpu.InstanceDescriptor(nextInChain: nil).vaddr)
  doAssert instance != nil, "Could not initialize wgpu"
  # 2. Create the Surface and Adapter
  var surface = instance.getSurface(window.ct)
  var adapterOpts = RequestAdapterOptions(
    nextInChain           : nil,
    compatibleSurface     : surface,
    powerPreference       : PowerPreference.highPerformance,
    forceFallbackAdapter  : false,
    )
  var adapter :wgpu.Adapter;  instance.requestAdapter(adapterOpts.addr, adapterRequestCB, adapter.addr)
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
  var deviceDesc = DeviceDescriptor(
    nextInChain            : nil,
    label                  : "Hello Device",
    requiredFeaturesCount  : 0,
    requiredFeatures       : nil,
    requiredLimits         : nil,
    defaultQueue           : QueueDescriptor(
      nextInChain          : nil,
      label                : "Hello Default Queue"
      ), # << defaultQueue
    ) # << deviceDesc
  var device :wgpu.Device; adapter.requestDevice(deviceDesc.addr, deviceRequestCB, device.addr)
  device.setUncapturedErrorCallback(errorCB, nil)
  device.setDeviceLostCallback(deviceLostCB, nil)
  # 3. Create the SwapChain
  var config = SwapChainDescriptor(
    nextInChain        : cast[ptr ChainedStruct](vaddr SwapChainDescriptorExtras(
      chain            : ChainedStruct(
        next           : nil,
        sType          : SType.swapChainDescriptorExtras,
        ), # << chain
      alphaMode        : CompositeAlphaMode.auto,
      viewFormatCount  : 0,
      viewFormats      : nil,
      )), # << nextInChain
    label              : nil,
    usage              : {TextureUsage.renderAttachment},
    format             : surface.getPreferredFormat(adapter),
    width              : 0,
    height             : 0,
    presentMode        : PresentMode.fifo,
    ) # << config (aka SwapChain Descriptor)
  glfw.getWindowSize(window.ct, config.width.iaddr, config.height.iaddr)
  echo &":: Initial window size: {config.width} x {config.height}"
  var swapChain = device.create(surface, config.addr)
  # 4. Get the device queue
  var queue  = device.getQueue()

  #__________________
  # Update loop
  while not window.close():
    # Input update from glfw
    window.update()
    # 5. Get the swapChain TextureView.
    var nextTexture :TextureView= nil
    for attempt in 0..<2:  # Attempt to get the texture view twice. It is a fallible operation by the spec, so we make 2x checks.
      var prevWidth  = config.width
      var prevHeight = config.height
      glfw.getWindowSize(window.ct, config.width.iaddr, config.height.iaddr)
      # 5.2 Create a new swapchain if the window was resized
      if prevWidth != config.width or prevHeight != config.height:
        swapChain = device.create(surface, config.addr)
      nextTexture = swapChain.getCurrentTextureView()
      if attempt == 0 and nextTexture == nil:
        echo "WRN: swapChain.getCurrentTextureView() failed; attempting to create a new swap chain..."
        config.width  = 0
        config.height = 0
        continue  # Skip to the next step
      break       # Exit attempts. We are either at the second attempt, or the texture already works
    doAssert nextTexture != nil, "ERR:: Cannot acquire next swap chain texture"
    # 6. Create the Command Encoder
    var encoderDesc = CommandEncoderDescriptor(
      nextInChain  : nil,
      label        : "Command Encoder",
      )
    var encoder = device.create(encoderDesc.addr)
    # 7. Create the RenderPass
    var renderPassAttch = RenderPassColorAttachment(
      view                  : nextTexture,
      resolveTarget         : nil,
      loadOp                : LoadOp.clear,
      storeOp               : StoreOp.store,
      clearValue            : Color(r:1.0, g:0.0, b:0.0, a:1.0),  # WGPU Color, but similar to chroma/color
      ) # << renderPassAttch
    var renderPassDesc = RenderPassDescriptor(
      nextInChain             : nil,
      label                   : nil,
      colorAttachmentCount    : 1,
      colorAttachments        : renderPassAttch.addr,
      depthStencilAttachment  : nil,
      occlusionQuerySet       : nil,
      timestampWriteCount     : 0,
      timestampWrites         : nil,
      ) # << renderPassDesc
    var renderPass = encoder.begin(renderPassDesc.addr)
    # 8. Draw into the texture with the given settings, and finalize the pass.
    renderPass.End()
    nextTexture.drop()  # Required by wgpu-native. Not standard WebGPU
    # 9. Submit the Rendering Queue
    var cmdBufferDesc = CommandBufferDescriptor(
      nextInChain : nil,
      label       : "Hello Command Buffer",
      )
    var cmdBuffer = encoder.finish(cmdBufferDesc.addr)
    queue.submit(1, cmdBuffer.addr)
    # 10. Present the next swapchain texture on the screen.
    swapChain.present()  # like gl.swapBuffers()

  #__________________
  # Terminate
  window.term()
#__________________
when isMainModule: run()

