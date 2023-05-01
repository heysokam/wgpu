#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
# Tests that wgpu loaded correctly.                 |
# Creates a wgpu.Instance and prints its address.   |
# Creates a window that remains open until closed.  |
#___________________________________________________|
# External dependencies
from pkg/nglfw as glfw import nil
# wgpu dependencies
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
proc init (win :var Window) :void=
  ## Initializes the window with GLFW.
  doAssert glfw.init().bool, "Failed to Initialize GLFW"
  glfw.windowHint(glfw.CLIENT_API, glfw.NO_API)
  win.ct = glfw.createWindow(win.w, win.h, win.title, nil, nil)
  doAssert win.ct != nil, "Failed to create GLFW window"
  discard glfw.setKeyCallback(win.ct, key)

#__________________
template getAddr [T](val :T) :string=  cast[ByteAddress](val.addr).repr
  ## Returns the string representation of an address.
  ## Only for readability. Not required by the app.

#________________________________________________
# state.nim
#__________________
var window = Window(
  ct: nil, title: "wgpu | Hello wgpu",
  w:960, h:540,
  )


#________________________________________________
# Entry Point
#__________________
proc run=
  echo "Hello wgpu"
  window.init()
  var descriptor = wgpu.InstanceDescriptor(nextInChain: nil)
  var instance   = wgpu.create(descriptor.addr)
  doAssert instance != nil, "Couldn't create the wgpu-native instance."
  echo "wgpu works | Press Escape to close the window."
  echo "           | descriptor address is: ", descriptor.getAddr()
  echo "           | instance   address is: ", instance.getAddr()
  while not window.close():
    window.update()
  window.term()
#__________________
when isMainModule: run()

