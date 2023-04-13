#:________________________________________________________
#  wgpu-nim  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:________________________________________________________
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


  #__________________
  # Update loop
  while not window.close():
    window.update()

  #__________________
  # Terminate
  window.term()
#__________________
when isMainModule: run()

