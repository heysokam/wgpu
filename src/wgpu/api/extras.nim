#:________________________________________________________
#  wgpu-nim  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:________________________________________________________
# Extra utilities specific to wgpu-nim  |
#_______________________________________|
# std dependencies
import std/strformat
import std/strutils
import std/sequtils
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
        window    : xwindow.uint32,
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

#_______________________________________
# Hardware Information
#___________________
proc features *(adapter :Adapter) :seq[Feature]=
  ## Returns the features supported by the adapter as a seq[Feature]
  ## Note: id is represented as a hex number in the wgpu headers
  let count    = adapter.enumerateFeatures(nil).int
  var features = newSeqWith[Feature](count, Feature 0)
  discard adapter.enumerateFeatures(features[0].addr)
  result = features
#___________________
proc capabilities *(surface :Surface; adapter :Adapter
  ) :tuple[textureFormats:seq[TextureFormat], presentModes:seq[PresentMode], alphaModes:seq[CompositeAlphaMode]]=
  ## Returns the capabilities supported by the surface as a tuple of (seq[textureFormats], seq[presentModes], seq[alphaModes])
  var caps = SurfaceCapabilities()
  surface.getCapabilities(adapter, caps.addr)
  var formats       = newSeqWith[TextureFormat](caps.formatCount.int, TextureFormat 0)
  var presents      = newSeqWith[PresentMode](caps.presentModeCount.int, PresentMode 0)
  var alphas        = newSeqWith[CompositeAlphaMode](caps.alphaModeCount.int, CompositeAlphaMode 0)
  caps.formats      = formats[0].addr
  caps.presentModes = presents[0].addr
  caps.alphaModes   = alphas[0].addr
  surface.getCapabilities(adapter, caps.addr)
  result = (formats, presents, alphas)

#_______________________________________
# Shader loading
#___________________
proc readWgsl *(file :string) :ShaderModuleDescriptor=
  ## Reads the given `.wgsl` shader file, and returns a ShaderModuleDescriptor for it.
  var descriptor         = new ShaderModuleWGSLDescriptor
  descriptor.chain.next  = nil
  descriptor.chain.sType = SType.shaderModuleWGSLDescriptor
  descriptor.code        = file.readFile.cstring
  result = ShaderModuleDescriptor(
    nextInChain: cast[ptr ChainedStruct](descriptor.addr),
    label:       nil,
    )

