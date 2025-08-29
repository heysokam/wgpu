> **Warning**:  
> _This repository is **Permanently Archived** and won't receive any updates._  
>
> _At the time of archiving, the library was well maintained and worked correctly._  
> _Please fork away and maintain your own fixes/changes._  

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
- [x] Wrapper for wgpu-native latest
- [x] Rename system
  - [x] Raw api access  _(for those who don't like the renames)_
  - [x] Shortened `camelCase` for Function names
- [x] Linux suppport
- [x] Mac support
- [ ] Windows support
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
> _Dynamic linking is not supported in the automated builder (and not planned),_  
> _but will work if you provide support for it in your buildsystem._  


## Disclaimers and Other Info
### About bindings generation
This wrapper is auto-generated with Futhark.  
Most names are renamed with a Callback function for ergonomics.  

See the @[gen/cfg](./gen/cfg.nim) file for a detailed list for renaming rules.  
Use the raw api @[wgpu/raw](./src/wgpu/raw.nim) for access to the verbatim C names.  
Use the api @[wgpu](./src/wgpu.nim) for access to the standard Nim-mified names and extras.  

### About the buildsystem
The buildsystem of this lib depends on cargo and git.  
They will be called automatically when you build your project.  
