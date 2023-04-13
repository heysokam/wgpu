#:________________________________________________________
#  wgpu-nim  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:________________________________________________________
# Extra utilities specific to wgpu-nim  |
#_______________________________________|
# External dependencies
from pkg/nglfw as glfw import nil
# API module dependencies
import ./procs
import ./types


#_______________________________________
# Helpers
#___________________
template vaddr *(val :auto) :untyped=
  ## Returns the `addr` of anything, through a temp val.
  ## Useful when the objects have not been created yet.
  let temp = val; temp.unsafeAddr


#_______________________________________
# Native Surface: Creation
#___________________
when defined(linux) and not defined(wayland):
  # X11 context creation
  proc getSurfaceX11 *(instance :Instance; win :glfw.Window) :Surface=
    let xdisplay = glfw.getX11Display()
    let xwindow  = glfw.getX11Window(win)
    result = instance.createSurface(vaddr SurfaceDescriptor(
      label       : nil,
      nextInChain : cast[ptr ChainedStruct](vaddr SurfaceDescriptorFromXlibWindow(
        chain     : ChainedStruct(
          next    : nil,
          sType   : SType.surfaceDescriptorFromXlibWindow,
          ), # << chain
        display   : cast[pointer](xdisplay),
        window    : xwindow.uint,
        )), # << nextInChain
      )) # << createSurface
#_______________________________________
# Native Surface: Create for any system
#___________________
proc getSurface *(instance :Instance; win :glfw.Window) :Surface=
  ## Gets the surface of the window for the given wgpu instance.
  ## Returns the appropriate native surface based on the system.
  when defined(linux) and not defined(wayland):
    result = instance.getSurfaceX11(win)

