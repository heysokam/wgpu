#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
# Note: In a real app                                 |__________
# everything in this file should be from treeform/vmath instead  |
#________________________________________________________________|


#_______________________________________
# Vectors
#_____________________________
type Vec2 * = object
  x*,y* :float32
type Vec3 * = object
  x*,y*,z* :float32
type Vec4 * = object
  x*,y*,z*,w* :float32
type UVec3 * = object
  x*,y*,z* :uint32
proc vec2  *(x,y :SomeNumber)     :Vec2=   Vec2(x:x.float32, y:y.float32)
proc vec3  *(x,y,z :SomeNumber)   :Vec3=   Vec3(x:x.float32, y:y.float32, z:z.float32)
proc vec4  *(x,y,z,w :SomeNumber) :Vec4=   Vec4(x:x.float32, y:y.float32, z:z.float32, w:w.float32)
proc uvec3 *(x,y,z :SomeNumber)   :UVec3=  UVec3(x:x.uint32, y:y.uint32, z:z.uint32)


#_______________________________________
# Matrices
#_____________________________

