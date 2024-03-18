![wgpu](./doc/res/gh_banner.png)
# wgpu bindings for Nim
## How to
1. Install requirements: `rust`, `git`, `nim`  
2. Install the bindings with `nimble install https://github.com/heysokam/wgpu`, or add them to your project's nimble file  
3. Use `import wgpu` to access the wgpu bindings.  

I highly recommend to follow [Learn WebGPU C++](https://eliemichel.github.io/LearnWebGPU/) for learning the API.  
It's the best newbie-friendly tutorial out there for wgpu, and it doesn't require knowing TypeScript or Rust.  
_As a reference, it is easier to follow than the infamous Learn OpenGL, in my opinion._  

## Current state and todo
- [ ] Wrapper for wgpu-native latest
- [ ] Linux suppport
- [ ] Windows support
- [ ] Mac support
- [ ] Web support (wasm with emscripten)  
      _(note: not planned. send a PR if you figure it out)_

## Build Info
```md
# Requirements  (manually installed by the user)
nim   # For compiling the wrapper
rust  # For compiling wgpu-native
nglfw # For using the `wgpu/extras` features provided by the lib
```

### Static Linking
This library is compiled automatically and linked statically when importing.  
> _Dynamic linking will not be implemented._  


## Disclaimers and Other Info
### About bindings generation
This wrapper is auto-generated with Futhark.  
Most names are renamed with a Callback function for ergonomics.  
See the @[gen/cfg](./gen/cfg.nim) file for a detailed list for renaming rules.

### About the buildsystem
The buildsystem of this lib depends on cargo and git.  
They will be called automatically when you build your project.  
