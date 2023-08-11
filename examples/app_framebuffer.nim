#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
# Simplest framebuffer possible          |
# Takes an array of bytes                |
# and draws it to a fullscreen triangle  |
#________________________________________|
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
    glfw.setWindowShouldClose(win, true)
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
  echo &"[wgpu: {$level}] {$message}"

# Triangle shader
const shaderCode = """
@vertex fn vert(
    @builtin(vertex_index) aID :u32
  ) ->@builtin(position) vec4<f32> {
  switch i32(aID) {  // Fullscreen Triangle
    case 0:  { return vec4<f32>(-1.0,-1.0, 0.0, 1.0); }  // bot-left
    case 1:  { return vec4<f32>( 3.0,-1.0, 0.0, 1.0); }  // bot-right
    case 2:  { return vec4<f32>(-1.0, 3.0, 0.0, 1.0); }  // top-left
    default: { return vec4<f32>(); }                     // Ignore
  }
}

// @group(0) @binding(1) var fbPixels  :texture_2d<f32>;
// @group(0) @binding(2) var fbSampler :sampler;

@fragment fn frag() ->@location(0) vec4<f32> {
  return vec4<f32>(1.0, 0.0, 0.0, 1.0);
}
"""

#________________________________________________
# state.nim
#__________________
var window = Window(
  ct: nil, title: "Framebuffer App",
  w:960, h:540,
  )

#________________________________________________
# Entry Point
#__________________
proc run=
  #__________________
  # Init Window
  echo &":: Initializing {window.title}"
  window.init()

  #__________________
  # Set wgpu.Logging
  wgpu.set(logCB, nil)
  wgpu.set LogLevel.warn
  #__________________
  # Init wgpu
  var instance     = wgpu.create(vaddr InstanceDescriptor())
  var surface      = instance.getSurface(window.ct)
  var adapterOpts  = RequestAdapterOptions(
    compatibleSurface : surface,
    powerPreference   : PowerPreference.highPerformance,
    backendType       : BackendType.undefined,
    )
  var adapter :wgpu.Adapter;  instance.request(adapterOpts.addr, adapterRequestCB, adapter.addr)
  var deviceDesc = DeviceDescriptor(
    label              : "Framebuffer Device".cstring,
    defaultQueue       : QueueDescriptor(label: "Framebuffer Queue".cstring)
    deviceLostCallback : deviceLostCB,
    deviceLostUserdata : nil,
    )
  var device :wgpu.Device; adapter.request(deviceDesc.addr, deviceRequestCB, device.addr)
  device.set(errorCB, nil)
  var shaderDesc      = shaderCode.wgslToDescriptor(label = "FramebufferShader")
  let shader          = device.create(shaderDesc.addr)
  let swapchainFormat = surface.getPreferredFormat(adapter)
  let pipeline        = device.create(vaddr RenderPipelineDescriptor(
    label             : "Render pipeline".cstring,
    vertex            : VertexState(
      module          : shader,
      entryPoint      : "vert".cstring,
      ), # << vertex
    primitive         : PrimitiveState(topology: PrimitiveTopology.triangleList),
    multisample       : MultisampleState(
      count           : 1,
      mask            : uint32.high,
      ), # << multisample
    fragment          : vaddr FragmentState(
      module          : shader,
      entryPoint      : "frag".cstring,
      targetCount     : 1,
      targets         : vaddr ColorTargetState(
        format        : swapchainFormat,
        blend         : vaddr BlendState(
          alpha       : BlendComponent(
            operation : BlendOperation.Add,
            srcFactor : BlendFactor.one,
            dstFactor : BlendFactor.zero,
            ), # << alpha
          color       : BlendComponent(
            operation : BlendOperation.Add,
            srcFactor : BlendFactor.one,
            dstFactor : BlendFactor.zero,
            ), # << color
          ), # << blend
        writeMask     : ColorWriteMask.all,
        ), # << targets
      ), # << fragment
    )) # << pipeline

  var config = SwapChainDescriptor(
    nextInChain : cast[ptr ChainedStruct](vaddr SwapChainDescriptorExtras(
      chain     : ChainedStruct(sType: SType.swapChainDescriptorExtras),
      alphaMode : CompositeAlphaMode.auto,
      )), # << nextInChain
    usage       : {TextureUsage.renderAttachment},
    format      : swapchainFormat,
    presentMode : PresentMode.fifo,
    ) # << config (aka SwapChain Descriptor)
  glfw.getWindowSize(window.ct, config.width.iaddr, config.height.iaddr)
  echo &":: Initial window size: {config.width} x {config.height}"
  var swapChain = device.create(surface, config.addr)

  #__________________
  # Update loop
  while not window.close():
    var nextTexture :TextureView= nil
    for attempt in 0..<2:  # Attempt to create the swapchain twice
      var prevWidth  = config.width
      var prevHeight = config.height
      glfw.getWindowSize(window.ct, config.width.iaddr, config.height.iaddr)
      if prevWidth != config.width or prevHeight != config.height:  # Window size changed, recreate the swapchain
        swapChain = device.create(surface, config.addr)
      nextTexture = swapChain.getCurrentTextureView()
      if attempt == 0 and nextTexture == nil:
        echo "WRN: swapChain.getCurrentTextureView() failed; attempting to create a new swap chain..."
        config.width  = 0
        config.height = 0
        continue  # Skip to the next step
      break       # Exit attempts. We are either at the second attempt, or the texture already works
    doAssert nextTexture != nil, "ERR:: Cannot acquire next swap chain texture"
    var encoder = device.create(vaddr CommandEncoderDescriptor(label: "Framebuffer Command Encoder".cstring))
    var renderPass = encoder.begin(vaddr RenderPassDescriptor(
      colorAttachmentCount : 1,
      colorAttachments     : vaddr RenderPassColorAttachment(
        view               : nextTexture,
        loadOp             : LoadOp.clear,
        storeOp            : StoreOp.store,
        clearValue         : Color(r:0.1, g:0.1, b:0.1, a:1.0),  # WGPU Color, but similar to chroma/color
        ), # << colorAttachments
      )) # << renderPass
    # Draw into the texture with the given settings
    renderPass.set(pipeline)
    renderPass.draw(3,1,0,0)  # vertexCount, instanceCount, firstVertex, firstInstance
    renderPass.End()
    nextTexture.release()
    # Submit the Rendering Queue, and present it to the surface
    var queue     = device.getQueue()
    var cmdBuffer = encoder.finish(vaddr CommandBufferDescriptor())
    queue.submit(1, cmdBuffer.addr)
    swapChain.present()  # like gl.swapBuffers()
    # Input update from glfw
    window.update()

  #__________________
  # Terminate
  window.term()
#__________________
when isMainModule: run()

