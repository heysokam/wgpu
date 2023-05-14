# wgpu wrapper for Nim
Handmade wgpu-native wrapper, with an automated buildsystem.  

If you want a 3D rendering library, consider using `heysokam/ngpu` instead,  
which is built using this exact same API.  

## How to
1. Install requirements: `rust`, `cmake`, `git`, `nim`  
2. Install the bindings with `nimble install https://github.com/heysokam/wgpu`  
3. Use `import wgpu` to access the wgpu bindings.  

See the [examples](./examples) folder for how wgpu implementations work.  
Note: Each example is incrementally more complex than the previous one.  
They follow the structure of [Learn WebGPU C++](https://eliemichel.github.io/LearnWebGPU/), which I highly recommend for learning the API.  
It's the best newbie-friendly tutorial out there for wgpu, and it doesn't require knowing TypeScript or Rust.  

## Current state and todo
- [x] Full Wrapper for wgpu-native v0.16
- [x] Linux suppport
- [ ] Windows support
- [x] Mac support
- [ ] Web support (wasm with emscripten) (note: low prio)

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


## Disclaimers and Other Info
### About function/types names
All names have been shortened, with extensive use of name overloads.  
The goal was removing the need for C style `WGPUCrazyLongAndRepetitive_Names` everywhere.  
See the [renaming](./doc/rename.md) doc file for more details.  

### About bindings generation
This wrapper is handmade.  
Some parts of the wrapper were initially generated by a script,  
but they have all been heavily edited and renamed manually line by line.  

### Dynamic Linking
Static linking is preferred.
Dynamic linking support might or might not get implemented in the future.  
But the `wgpu-native` buildsystem creates a set of dynamic libraries during compilation by default.  
See the [Dynamic Linking](./doc/dynamic.md) file for more info.

### About the buildsystem
The buildsystem of this lib depends on cargo, git and cmake, which is not standard or common behavior for nim.  
Those apps will be called automatically when you build your project.  
See the [Buildsystem](./doc/buildsystem.md) file for info about why.  

