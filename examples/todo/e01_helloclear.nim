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
# Example Extensions
import ./extras  # In a real app, these should be coming from external libraries


#________________________________________________
# window.nim
#__________________
proc key (win :glfw.Window; key, code, action, mods :cint) :void {.cdecl.}=
  ## GLFW Keyboard Input Callback
  if (key == glfw.KeyEscape and action == glfw.Press):
    glfw.setWindowShouldClose(win, true)

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
  window.init(key)

  #__________________
  # Set wgpu.Logging
  wgpu.set(logCB, nil)
  wgpu.set LogLevel_warn
  #__________________
  # Init wgpu
  # 1. Create the Instance
  instance = wgpu.create(vaddr wgpu.InstanceDescriptor(nextInChain: nil))
  doAssert instance != nil, "Could not initialize wgpu"

  # 2 Create the Surface
  var surface = instance.getSurface(window.ct)

  # 3. Create the Adapter
  var adapter :wgpu.Adapter; instance.request(vaddr RequestAdapterOptions(
      nextInChain           : nil,
      compatibleSurface     : surface,
      powerPreference       : PowerPreference_highPerformance,
      backendType           : BackendType_undefined,
      forceFallbackAdapter  : false,
      ), # << RequestAdapterOptions( ... )
    callback = adapterRequestCB,
    userdata = adapter.addr,
    ) # << instance.request( ... )

  # 4. Report the Adapter Features + Capabilities
  #[
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
  ]#

  # 5. Create the Device
  var device :wgpu.Device; adapter.request(vaddr DeviceDescriptor(
      nextInChain            : nil,
      label                  : "Hello Device",
      requiredFeaturesCount  : 0,
      requiredFeatures       : nil,
      requiredLimits         : nil,
      defaultQueue           : QueueDescriptor(
        nextInChain          : nil,
        label                : "Hello Default Queue"
        ), # << defaultQueue
      deviceLostCallback     : deviceLostCB,
      deviceLostUserdata     : nil,
      ), # << DeviceDescriptor( ... )
    callback = deviceRequestCB,
    userdata = device.addr,
    ) # << adapter.request( ... )
  device.set(errorCB, nil)

  # 6. Get the device queue
  var queue = device.getQueue()


  # 7. Configure the Surface  (replaces SwapChain creation entirely)
  # 7.1 Get the SurfaceCapabilities
  var caps :SurfaceCapabilities
  surface.ct.get(adapter, caps.addr)  # wgpuSurfaceGetCapabilities
  # 7.2 Get the initial window size
  var width  :i32= 0
  var height :i32= 0
  window.ct.getSize(addr width, addr height)


  #[
  # _. Create the SwapChain
  var config = SwapChainDescriptor(
    nextInChain        : cast[ptr ChainedStruct](vaddr SwapChainDescriptorExtras(
      chain            : ChainedStruct(
        next           : nil,
        sType          : SType_swapChainDescriptorExtras as SType,
        ), # << chain
      alphaMode        : CompositeAlphaMode_auto,
      viewFormatCount  : 0,
      viewFormats      : nil,
      )), # << nextInChain
    label              : nil,
    usage              : TextureUsage_renderAttachment.ord,
    format             : surface.getPreferredFormat(adapter),
    width              : 0,
    height             : 0,
    presentMode        : PresentMode_fifo,
    ) # << config (aka SwapChain Descriptor)
  glfw.getWindowSize(window.ct, config.width.iaddr, config.height.iaddr)
  echo &":: Initial window size: {config.width} x {config.height}"
  var swapChain = device.create(surface, config.addr)
  ]#

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
      loadOp                : LoadOp_clear,
      storeOp               : StoreOp_store,
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
    nextTexture.release()  # Required by wgpu-native. Not standard WebGPU
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

