# TODO


#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
# std dependencies
import std/strformat
import std/os
# External dependencies
from   pkg/nglfw as glfw import nil
import vmath  # for Vector types
# Module dependencies
import wgpu


#________________________________________________
# types.nim
#__________________
type Window * = object
  ct     *:glfw.Window
  w,h    *:int32
  title  *:string
type Mesh * = object
  pos    *:seq[Vec3]
  color  *:seq[Vec4]
  # uv     *:seq[Vec2]
  # norm   *:seq[Vec3]
#________________________________________________
# mesh.nim
#__________________
type Attr *{.pure.}= enum pos, color
  ## Attribute location ids for the shader
converter toInt *(attr :Attr) :int=  attr.ord
  ## Automatically convert to int when required, without needing to add `.ord` everywhere.
template vertCount *(m :Mesh) :int=  m.pos.len
  ## Returns the mesh vertex count, based on the number of vertex positions.
template size *[T](v :seq[T]) :int=  v.len * sizeof(v[0])
  ## Returns the size in bytes of the given seq
proc size *(m :Mesh) :int=
  for attr in mesh.fields:
    if attr.len < 1: continue  # Do not add empty seq
    result += attr.size


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
  echo &"wgpu: ADAPTER requested with status: {$status}"
proc deviceRequestCB  *(status :RequestDeviceStatus; device :Device; message :cstring; userdata :pointer) :void {.cdecl.}=
  cast[ptr Device](userdata)[] = device  # *(WGPUAdapter*)userdata = received;
  echo &"wgpu: DEVICE requested with status: {$status}"
  if status != RequestDeviceStatus.success: echo &"    : {$message}"
proc errorCB *(typ :ErrorType; message :cstring; userdata :pointer) :void {.cdecl.}=
  echo &"wgpu: UNCAPTURED ERROR: ({$typ}): {$message}"
proc deviceLostCB *(reason :DeviceLostReason; message :cstring; userdata :pointer) :void {.cdecl.}=
  echo &"wgpu: DEVICE LOST: ({$reason}): {$message}"
proc logCB *(level :LogLevel; message :cstring; userdata :pointer) :void {.cdecl.}=
  echo &"[{$level}] {$message}"

# Triangle shader
const shaderCode = """
struct VertIn {
  @builtin(vertex_index) id :u32,
  @location(0) pos   :vec3<f32>,
  @location(1) color :vec4<f32>,
}
struct VertOut {
  @builtin(position) pos   :vec4<f32>,
  @location(0)       color :vec4<f32>,
}
@vertex fn vert(in :VertIn) ->VertOut {
  var out   :VertOut;
  out.pos   = vec4<f32>(in.pos, 1.0);
  out.color = in.color;  // Forward color attribute to the fragment shader
}

@fragment fn frag(in :VertOut) ->@location(0) vec4<f32> {
  return vec4<f32>(in.color);
}
"""

# This example will use a deinterleaved vertex attribute buffer.
# A simpler to understand version could be achieved by using an ArrayOfStructs format, which would interleave the data for each vertex
# eg:   const triangle =  @[  Vertex( pos:vec3(0,0,0), color:vec4(1,1,1,1) ),  Vertex(...),  etc ...  ]
# This would create a simpler setup for the vertex buffers. But this example uses a deinterleaved buffer instead.
const triangle = Mesh(
  pos: @[#  x    y    z
    vec3( -0.5, -0.5, 0.0 ),  # v0
    vec3(  0.5, -0.5, 0.0 ),  # v1
    vec3(  0.0,  0.5, 0.0 ),  # v2
    ] # << pos
  color: @[#r   g    b    a
    vec4( 1.0, 0.0, 0.0, 1.0 ),  # v0
    vec4( 0.0, 1.0, 0.0, 1.0 ),  # v1
    vec4( 0.0, 0.0, 1.0, 1.0 ),  # v2
    ] # << color
  ) # << Mesh()
doAssert triangle.pos.len == triangle.color.len, "All attributes must contain the same amount of vertex"

#________________________________________________
# state.nim
#__________________
var window = Window(
  ct: nil, title: "wgpu Tut",
  w:960, h:540,
  )

#________________________________________________
# Entry Point
#__________________
proc run=
  #__________________
  # Init Window
  echo "Hello Buffered Triangle"
  window.init()

  #__________________
  # Set wgpu.Logging
  wgpu.setLogCallback(logCB, nil)
  wgpu.set LogLevel.warn
  #__________________
  # Init wgpu
  var instanceDesc = InstanceDescriptor(nextInChain: nil)
  var instance     = createInstance(instanceDesc.addr)
  var surface      = instance.getSurface(window.ct)
  var adapterOpts  = RequestAdapterOptions(
    nextInChain           : nil,
    compatibleSurface     : surface,
    powerPreference       : PowerPreference.highPerformance,
    forceFallbackAdapter  : false,
    )
  var adapter :wgpu.Adapter;  instance.requestAdapter(adapterOpts.addr, adapterRequestCB, adapter.addr)
  doAssert adapter != nil, "wgpu.Adapter could not be requested."
  #__________________________________
  # NEW:
  # 1. Set the limits that we require for this example
  var requiredLimits = RequiredLimits(
    nextInChain           : nil,
    limits                : Limits.new(  # With custom `new` proc because some required defaults are not 0
      maxVertexAttributes = 2,
      maxVertexBuffers    = 2,
      ), # << limits
    ) # << requiredLimits

  # 2. Create the device descriptor, with our custom limits
  var deviceDesc = DeviceDescriptor(
    nextInChain              : nil,
    label                    : "Hello Device",
    requiredFeaturesCount    : 0,
    requiredFeatures         : nil,
    requiredLimits           : requiredLimits.addr,  # <-- Added for this example, the rest is the same
    defaultQueue             : QueueDescriptor(
      nextInChain            : nil,
      label                  : "Hello Default Queue"
      ), # << defaultQueue
    ) # << deviceDesc
  var device :wgpu.Device; adapter.requestDevice(deviceDesc.addr, deviceRequestCB, device.addr)
  doAssert device != nil, "wgpu.Device could not be requested."
  device.setUncapturedErrorCallback(errorCB, nil)
  device.setDeviceLostCallback(deviceLostCB, nil)

  # 3. Read the vertex attributes and buffers limits of the system
  echo ":: Supported limits:   (after setting RequiredLimits)"
  var supportedLimits :SupportedLimits
  discard adapter.get(supportedLimits.addr)
  echo ": adapter.maxVertexAttributes: ",supportedLimits.limits.maxVertexAttributes
  discard device.get(supportedLimits.addr)
  echo ": device.maxVertexAttributes:  ",supportedLimits.limits.maxVertexAttributes
  # When setting the required limits to 0 (unlimited), my system says:
  # > adapter.maxVertexAttributes: 32
  # > device.maxVertexAttributes:  16

  # OLD: Get the queue, so we can add commands to it
  var queue = device.getQueue()

  # OLD: Create the shader and swapchain. Nothing changed
  var shaderDesc      = shaderCode.wgslToDescriptor(label = "TriangleShader")
  let shader          = device.create(shaderDesc.addr)
  let swapchainFormat = surface.getPreferredFormat(adapter)
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
    format             : swapchainFormat,
    width              : 0,
    height             : 0,
    presentMode        : PresentMode.fifo,
    ) # << config (aka SwapChain Descriptor)
  glfw.getWindowSize(window.ct, config.width.iaddr, config.height.iaddr)
  echo &":: Initial window size: {config.width} x {config.height}"
  var swapChain = device.create(surface, config.addr)

  # NEW:
  # 4. Create and upload the vertex attribute buffers
  var triangleLayout :seq[VertexBufferLayout]
  var triangleAttr   :seq[VertexAttribute]
  var triangleBuffer = device.create(vaddr BufferDescriptor(
    nextInChain       : nil,
    label             : "Triangle Vertex buffer".cstring,
    usage             : {BufferUsage.copyDst, BufferUsage.vertex},
    size              : triangle.size,
    mappedAtCreation  : false,
    )) # << device.createBuffer()

  # 4.1. Positions
  triangleLayout.add VertexBufferLayout(
    arrayStride       : triangle.pos.size,
    stepMode          : VertexStepMode.vertex,
    attributeCount    : 1,
      attributes      : vaddr VertexAttribute(
      format          : VertexFormat.float32x3,
      offset          : 0,
      shaderLocation  : Attr.pos,
      ) # << posAttr
    ) # << posLayout
  # Write triangle.position at triangleBuffer offset 0
  queue.writeBuffer(triangleBuffer, 0, triangle.pos[0].addr, triangle.pos.size)

  # 4.2. Colors
  triangleLayout.add VertexBufferLayout(
    arrayStride       : triangle.color.size,
    stepMode          : VertexStepMode.vertex,
    attributeCount    : 1,
    attributes        : vaddr VertexAttribute(
      format          : VertexFormat.float32x4,
      offset          : 0,
      shaderLocation  : Attr.color,
      ) # << colorAttr
    ) # << colorLayout
  # Write triangle.color at triangleBuffer offset = triangle.pos.size
  queue.writeBuffer(triangleBuffer, triangle.pos.size, triangle.color[0].addr, triangle.color.size)

  # 5. Create the PipelineLayout
  var layout = device.create(vaddr PipelineLayoutDescriptor(
    nextInChain          : nil,
    label                : "Hello PipelineLayout".cstring,
    bindGroupLayoutCount : 0,
    bindGroupLayouts     : nil,
    )) # << device.createPipelineLayout()

  # 6. Configure the pipeline
  #    Only the buffer inputs and the `layout` field have changed.
  let pipeline = device.create(vaddr RenderPipelineDescriptor(
    nextInChain               : nil,
    label                     : "Render pipeline".cstring,
    layout                    : layout,       # <--- This changed
    vertex                    : VertexState(
      module                  : shader,
      entryPoint              : "vert".cstring,
      constantCount           : 0,
      constants               : nil,
      bufferCount             : triangleLayout.len,     # <--- This changed
      buffers                 : triangleLayout[0].addr, # <--- This changed
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
      entryPoint              : "frag".cstring,
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
    var encoder = device.create(vaddr CommandEncoderDescriptor(
      nextInChain  : nil,
      label        : "Command Encoder",
      ))
    var renderPass = encoder.begin(vaddr RenderPassDescriptor(
      nextInChain             : nil,
      label                   : nil,
      colorAttachmentCount    : 1,
      colorAttachments        : vaddr RenderPassColorAttachment(
        view                  : nextTexture,
        resolveTarget         : nil,
        loadOp                : LoadOp.clear,
        storeOp               : StoreOp.store,
        clearValue            : Color(r:0.1, g:0.1, b:0.1, a:1.0),  # WGPU Color, but similar to chroma/color
        ), # << colorAttachments
      depthStencilAttachment  : nil,
      occlusionQuerySet       : nil,
      timestampWriteCount     : 0,
      timestampWrites         : nil,
      )) # << renderPass
    # Draw into the texture with the given settings
    renderPass.setPipeline(pipeline)
    # NEW:
    # Set the vertex buffer in the RenderPass
    renderPass.setVertexBuffer(0, triangleBuffer, 0, triangle.size)
    renderPass.draw(triangle.vertexCount, 1,0,0)  # vertexCount, instanceCount, firstVertex, firstInstance
    # OLD: Continue as before
    renderPass.End()
    nextTexture.drop()
    # Submit the Rendering Queue, and present it to the surface
    var cmdBuffer = encoder.finish(vaddr CommandBufferDescriptor(
      nextInChain : nil,
      label       : "Hello Command Buffer".cstring,
      )) # << encoder.finish()
    queue.submit(1, cmdBuffer.addr)
    swapChain.present()  # like gl.swapBuffers()
    # Input update from glfw
    window.update()

  #__________________
  # Terminate
  window.term()

#__________________
when isMainModule: run()

