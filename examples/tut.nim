#:________________________________________________________
#  wgpu-nim  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:________________________________________________________
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
  if (key == glfw.KEY_ESCAPE and action == glfw.PRESS):
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


#________________________________________________
# state.nim
#__________________
var window = Window(
  ct: nil, title: "wgpu-nim Tut",
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
  echo "Hello wgpu-nim"
  window.init()

  #__________________
  # Init wgpu
  instance    = wgpu.createInstance(wgpu.InstanceDescriptor(nextInChain: nil).vaddr)
  var surface = instance.getSurface(window.ct)
  var adapter :wgpu.Adapter;  instance.requestAdapter(nil, adapterRequestCB, adapter.addr)
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
  var device :wgpu.Device; adapter.requestDevice(nil, deviceRequestCB, device.addr)
  device.setUncapturedErrorCallback(errorCB, nil)
  device.setDeviceLostCallback(deviceLostCB, nil)
  var shaderSource    = readWgsl getAppDir()/"triangle.wgsl"
  let shader          = device.createShaderModule(shaderSource.addr)
  let swapchainFormat = surface.getPreferredFormat(adapter)
  let pipeline        = device.createRenderPipeline(vaddr RenderPipelineDescriptor(
    nextInChain               : nil,
    label                     : "Render pipeline".cstring,
    layout                    : nil,
    vertex                    : VertexState(
      module                  : shader,
      entryPoint              : "vs_main".cstring,
      constantCount           : 0,
      constants               : nil,
      bufferCount             : 0,
      buffers                 : nil,
      ), # << vertex
    primitive                 : PrimitiveState(
      nextInChain             : nil,
      topology                : PrimitiveTopology.triangleList,
      stripIndexFormat        : IndexFormat.undefined,
      frontFace               : FrontFace.ccw,
      cullMode                : CullMode.none,
      ), # << primitive
    depthStencil              : nil,
    multisample               : MultisampleState(
      nextInChain             : nil,
      count                   : 1,
      mask                    : uint32.high,
      alphaToCoverageEnabled  : false,
      ), # << multisample
    fragment                  : vaddr FragmentState(
      nextInChain             : nil,
      module                  : shader,
      entryPoint              : "fs_main".cstring,
      constantCount           : 0,
      constants               : nil,
      targetCount             : 1,
      targets                 : vaddr ColorTargetState(
        nextInChain           : nil,
        format                : swapchainFormat,
        blend                 : vaddr BlendState(
          alpha               : BlendComponent(
            operation         : BlendOperation.Add,
            srcFactor         : BlendFactor.one,
            dstFactor         : BlendFactor.zero,
            ), # << alpha
          color               : BlendComponent(
            operation         : BlendOperation.Add,
            srcFactor         : BlendFactor.one,
            dstFactor         : BlendFactor.zero,
            ), # << color
          ), # << blend
        writeMask             : ColorWriteMask.all,
        ), # << targets
      ), # << fragment
    )) # << pipeline

  #__________________
  # Update loop
  while not window.close():
    window.update()

  #__________________
  # Terminate
  window.term()
#__________________
when isMainModule: run()

