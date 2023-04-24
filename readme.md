# wgpu wrapper for Nim
Handmade wgpu wrapper, with an automated buildsystem.  

Use `import wgpu` to access the wgpu bindings.  
If you want a 3D rendering library, consider using `heysokam/ngpu` instead,  
which is built using this exact same API.  


## Current state and todo
- [ ] Linux suppport 
  - [x] Partial  _see the `./examples` folder_
  - [ ] Complete
- [ ] Windows support
- [ ] Mac support

For better reference, see:
- The [examples](./examples) folder, for what the library can currently do.  
- The [todo.nim](src/wgpu/todo.nim) file, for an overview of whats left of `webgpu.h` to wrap.  


## Build Info
### Requirements
```md
nim, nimble  # For compiling the wrapper
rust, cargo  # For compiling wgpu-native
glfw         # For window creation with GLFW3
```

### Static Linking
This library is compiled automatically and linked statically when importing.  
This is the default and preferred behaviour of this wrapper.  

### Dynamic Linking
The `wgpu-native` buildsystem creates a set of dynamic libraries during compilation by default.  
You could customize the buildsystem for your project, so that it is linked dynamically if you so prefer.  
Having both options available is wanted, but not a priority.  
Feel free to send a PR with a better buildsystem configuration to allow both options if you require it before its done.  


## Disclaimers and Bindings Info
### About bindings generation
This wrapper is handmade.  
Some parts of the wrapper were initially generated by a script,  
but they have all been heavily edited and renamed manually line by line.  

### About function/types names
All names have been shortened, with extensive use of name overloads.  
The goal was removing the need for C style `WGPUCrazyLongAndRepetitive_Names` everywhere.  

#### Renaming logic
Names that clash with nim keywords have been shortened, but start with a capital letter:  
- `end` is always `End`, even inside enums.
- `discard` is always `Discard`, even inside enums.
- `float32` is `Float32` when it has no suffix

Function names that contain a type differentiator have been shortened where possible:  
Example1:
- from: `wgpuNameGetSomething(name)`
- to:   `getSomething()` which applied becomes `name.getSomething()`
- eg:   `wgpuDeviceGetQueue(device)` becomes `device.getQueue()`
Example2:
- from: `wgpuNameGetSomething(name, something)`
- to:   `get()` which applied becomes `name.get(something)`
- eg:   `wgpuDeviceGetLimits(device, limits)` becomes `device.get(limits)`

#### Renaming disclaimer
Use `import wgpu` to access the normal wgpu wrapper.  
If you don't like the naming convention used:  
- `import wgpu/raw` to access the completely unmodified C names.  

