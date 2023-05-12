#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
# Note:                                      |
#   This file is just a reference !!         |
# In a real app, everything in this file     |
# should be imported from libraries instead  |
#____________________________________________|
import std/strformat
import std/math
import pkg/vmath ; export vmath
from   pkg/nglfw as glfw import nil

#________________________________________________
# types.nim
#_____________________________
# Types to hold the texture data.
#   Note: In a real app this should be a treeform/pixie.Image object instead
type Color8 * = object
  r*,g*,b*,a* :uint8
type Pixels * = seq[Color8]
proc color8 *(c :uint8) :Color8=  Color8(r:c, g:c, b:c, a:255)

# Other types:
type Window * = object
  ct     *:glfw.Window
  w*,h*   :int32
  title  *:string

type Mesh * = object
  pos    *:seq[Vec3]
  color  *:seq[Vec4]
  uv     *:seq[Vec2]
  norm   *:seq[Vec3]
  inds   *:seq[UVec3]

# Input types:
type Cursor * = object
  pos*, chg* :DVec2
type Inputs * = object
  fw*,bw*,lf*,rt* :bool
  cursor*         :Cursor

#________________________________________________
# mesh.nim
#__________________
type Attr *{.pure.}= enum pos, color, uv, norm
  ## Attribute location ids for the shader
converter toInt *(attr :Attr) :uint32=  uint32( attr.ord )
  ## Automatically convert to int when required, without needing to add `.ord` everywhere.
converter toCsize *(n :SomeUnsignedInt) :csize_t=  n.csize_t
  ## Automatically convert unsigned integers to csize_t when required, without needing to specify with `.csize_t`.
func vertCount *(m :Mesh) :uint32=  uint32( m.pos.len )
  ## Returns the mesh vertex count, based on the number of vertex positions.
func indsCount *(m :Mesh) :uint32=  uint32( m.inds.len * 3)
  ## Returns the mesh index count, based on the indices data. Assumes meshes are triangulated (aka 3 vertex per entry).
func size *[T](n :T)      :uint64=  uint64( sizeof(n) )
  ## Returns the size in bytes of the given type. Alias for sizeof()
func size *[T](v :seq[T]) :uint64=  uint64( v.len * sizeof(v[0]) )
  ## Returns the size in bytes of the given seq
func size *(m :Mesh) :uint64=
  ## Returns the size in bytes of the given mesh
  for attr in m.fields:
    if attr.len > 0:  result += attr.size   # Do not add empty seq

#_______________________________________
# wgpu : Coordinate Systems
#_____________________________
# NDC: normalized device coordinates
#   +X right, +Y up, +Z forward
#   (-1.0, -1.0) is the bottom-left corner
#   x,y : range[-1.0..1.0] inclusive
#   z   : range[ 0.0..1.0] inclusive
# Vertices out of this range will not introduce any errors, but will be clipped.
#_______________________________________
# Framebuffer Coordinates:
# - Start from the top-left corner of the render targets.
# - Each unit corresponds exactly to a pixel.
# - +Y-axis is down
# Window/present Coordinates:         Both match Framebuffer coordinates.
# Viewport and Fragment Coordinates:  origin(0, 0) is at the top-left corner
# Texture Coordinates:                UV origin(0, 0) is the first texel (the lowest byte) in texture memory.
# Matrices:                           Column major storage, you specify columns in matrix constructors
#_______________________________________
# Differences from OpenGL:
# 1. 3x3 matrices are padded to 4x4 
# 2. +Z is forward, instead of backwards (away from the screen)
# 3. Depth range of NDC is 0..1, instead of -1..1
#_______________________________________

# std/math : Extensions
const Epsilon :float32= 0.0001
template `/` *(a,b :uint64) :float32=  a.float32 / b.float32
proc clamp *(n :var SomeFloat; lo,hi :SomeFloat) :void=
  ## Restricts the given number to be between low and high.
  if n < lo: n = lo  elif n > hi: n = hi

#__________________________________________________
# vmath : Extend
#_____________________________
# Vectors: Constructors
proc vec2  *(x,y :SomeNumber)     :Vec2=   result[0] = x.float32; result[1] = y.float32
proc vec3  *(x,y,z :SomeNumber)   :Vec3=   result[0] = x.float32; result[1] = y.float32; result[2] = z.float32
proc vec4  *(x,y,z,w :SomeNumber) :Vec4=   result[0] = x.float32; result[1] = y.float32; result[2] = z.float32; result[3] = w.float32
proc dvec2 *(x,y :SomeNumber)     :DVec2=  result[0] = x.float64; result[1] = y.float64
proc dvec3 *(x,y,z :SomeNumber)   :DVec3=  result[0] = x.float64; result[1] = y.float64; result[2] = z.float64
proc dvec4 *(x,y,z,w :SomeNumber) :DVec4=  result[0] = x.float64; result[1] = y.float64; result[2] = z.float64; result[3] = w.float64
proc uvec3 *(x,y,z :SomeNumber)   :UVec3=  result[0] = x.uint32;  result[1] = y.uint32;  result[2] = z.uint32
proc `<`   *[T](v1,v2 :GVec2[T])  :bool=   v1.length < v2.length
# Matrices: Constructors
proc mat4  *[T](m :GMat4[T]) :Mat4=  mat4( m[0,0],m[0,1],m[0,2],m[0,3],   m[1,0],m[1,1],m[1,2],m[1,3],   m[2,0],m[2,1],m[2,2],m[2,3],  m[3,0],m[3,1],m[3,2],m[3,3] )

#_______________________________________
# wgpu : Matrices
#_____________________________
const wgpuMat4 = dmat4(
  ## Conversion matrix from OpenGL's Z[-1..1] to WebGPU's Z[0..1]
  1.0, 0.0, 0.0, 0.0,
  0.0, 1.0, 0.0, 0.0,
  0.0, 0.0, 0.5, 0.0,
  0.0, 0.0, 0.5, 1.0,
  )
const glMat4 = dmat4(
  ## Conversion matrix from WebGPU's Z[0..1] to OpenGL's Z[-1..1]
  1.0, 0.0,  0.0, 0.0,
  0.0, 1.0,  0.0, 0.0,
  0.0, 0.0,  2.0, 0.0,
  0.0, 0.0, -1.0, 1.0,
  )
proc toWgpu *[T](proj :GMat4[T]) :GMat4[T]=  proj*wgpuMat4
  ## Converts an OpenGL.projection to a WebGPU.projection matrix
proc toGL   *[T](proj :GMat4[T]) :GMat4[T]=  proj*glMat4
  ## Converts a WebGPU.projection to an OpenGL.projection matrix

#_______________________________________
# vmath : Transforms
#_____________________________
proc angles *[T](m :GMat4[T]) :GVec3[T]=
  ## Return pitch, yaw and roll of a matrix.
  ## Assumes OpenGL (+X.right, +Y.up, +Z.back) coordinate system
  let pitch = arctan2(-m[2,0], sqrt(m[2,1]^2 + m[2,2]^2))
  let yaw   = arctan2( m[2,1], m[2,2])
  let roll  = arctan2( m[1,0], m[0,0])
  gvec3[T](pitch, yaw, roll)
#_____________________________
template pitch *[T](v :GVec3[T]) :T=  v.x
template yaw   *[T](v :GVec3[T]) :T=  v.y
template roll  *[T](v :GVec3[T]) :T=  v.z
#_____________________________
proc forward*[T](a: GMat4[T]): GVec3[T] {.inline.} =
  ## Vector facing +Z.
  result.x = a[2, 0]
  result.y = a[2, 1]
  result.z = a[2, 2]

proc back*[T](a: GMat4[T]): GVec3[T] {.inline.} =
  ## Vector facing -Z.
  -a.forward()

proc left*[T](a: GMat4[T]): GVec3[T] {.inline.} =
  ## Vector facing +X.
  result.x = a[0, 0]
  result.y = a[0, 1]
  result.z = a[0, 2]

proc right*[T](a: GMat4[T]): GVec3[T] {.inline.} =
  ## Vector facing -X.
  -a.left()

proc up*[T](a: GMat4[T]): GVec3[T] {.inline.} =
  ## Vector facing +Y.
  result.x = a[1, 0]
  result.y = a[1, 1]
  result.z = a[1, 2]

proc down*[T](a: GMat4[T]): GVec3[T] {.inline.} =
  ## Vector facing -X.
  -a.up()

proc fromAngles*[T](a :GVec3[T]) :GMat4[T]=
  ## Takes a vector containing Euler angles and returns a matrix.
  rotateY(a.y) * rotateX(a.x) * rotateZ(a.z)


#__________________________________________________
# Camera
#____________________
type Camera * = object
  # Note: pos/rot/up should be a Transform instead.
  pos   *:DVec3    ## Position / Origin point of the camera
  rot   *:DVec3    ## X/Y/Z angles of rotation (pitch, yaw, roll)
  up    *:DVec3    ## Up direction for the camera (in world space)
  fov   *:float64  ## fov Y angle in degrees (vmath format)
  near  *:float64  ## Nearest  distance that the camera can see
  far   *:float64  ## Farthest distance that the camera can see

const SafePitch = Tau-Epsilon

#____________________
proc new *(_ :typedesc[Camera]; origin, target, up :DVec3; fov, near, far :float64) :Camera=
  result.rot  = origin.lookAt(target, up).angles
  result.pos  = origin
  result.up   = up
  result.fov  = fov
  result.near = near
  result.far  = far 
#____________________
proc init *(cam :var Camera; origin, target, up :DVec3; fov, near, far :float64) :void=
  cam = Camera.new(origin, target, up, fov, near, far)
#__________________________________________________
proc reset *(cam :var Camera; pos :DVec3) :void=
  cam.pos    = pos
  let target = dvec3(0,0,0)
  let up     = dvec3(0,1,0)
  cam.rot    = cam.pos.lookAt(target, up).angles

#____________________
proc view  *(cam :Camera) :DMat4=  inverse(cam.pos.translate * cam.rot.fromAngles)
proc dir   *(cam :Camera) :DVec3=  cam.view.forward
proc right *(cam :Camera) :DVec3=  cam.view.left

#____________________
proc proj *(cam :Camera; ratio :float64) :DMat4=
  perspective(cam.fov, ratio, cam.near, cam.far).toWgpu

#____________________
proc move *(cam :var Camera; vel :DVec3) :void=
  cam.pos = cam.pos + vel
#____________________
proc rotate *(cam :var Camera; chg :DVec2) :void=
  const scale = TAU * 0.00005
  cam.rot.x += chg.y * -scale  # Y movement = Rotation around X
  cam.rot.y += chg.x * -scale  # X movement = Rotation around Y
  cam.rot.x.clamp(-SafePitch, SafePitch) # Clamp vertical rotation to never reach the top or bottom

