# Renaming logic
Names that clash with nim keywords have been shortened, but start with a capital letter:  
- `end` is always `End`, even inside enums.
- `discard` is always `Discard`, even inside enums.
- `float`, `float32`, `uint`, `uint16` and `uint32` are...
  `Float`, `Float32`, `Uint`, `Uint16` and `Uint32` when they have no suffix
- `type` is always `typ` or `kind`.

Names that start with numbers are illegal in Nim, so these are changed:
- `1D`, `2D` and `3D` become `dim1D`, `dim2D`, `dim3D`
- `2DArray` and `CubeArray` become `array2D` and `arrayCube` for naming consistency.


Function names that contain a type differentiator have been shortened where possible:  
Things like `wgpuSomethingActionOnOtherthing` become `something.action(otherThing)`,  
unless there is no way to differentiate the action by its inputs  
_(eg: it only contains a set of ints, or doesn't take inputs)_  

Example1:
- from: `wgpuNameGetSomething(name)`
- to:   `getSomething()` which applied becomes `name.getSomething()`
- eg:   `wgpuDeviceGetQueue(device)` becomes `device.getQueue()`
Example2:
- from: `wgpuNameGetSomething(name, something)`
- to:   `get()` which applied becomes `name.get(something)`
- eg:   `wgpuDeviceGetLimits(device, limits)` becomes `device.get(limits)`

# Renaming disclaimer
Use `import wgpu` to access the normal wgpu wrapper.  
If you don't like the naming convention used:  
- `import wgpu/raw` to access the completely unmodified C names.  

