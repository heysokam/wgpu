![wgpu](./doc/res/gh_banner.png)
# wgpu wrapper for Nim

> **WARNING**: This repository has been archived as of _Dec.2023_  
> It is not recommended, but feel free to fork it and update whatever you need.  
> It is **strongly** recommended to follow the [alternative guidelines](#recommended-alternative), instead of forking or using the library as it currenly is.

**Reasons for archival: Overview**
1. wgpu/trunk Upstream moves too fast
2. Moving to Vulkan _(personal)_
3. GC none issues _(personal)_
> See the [Reasons for archival of this repository](#reasons-for-archival) section for an explanation of each reason.
## Version Warning
At the time of archival of this repository, the library was already very behind in versions and breaking changes from upstream.  
Version 17 introduced the removal of Swapchain objects, and the project never fully solved that problem.  
Version 18 is already released, and this library has not been updated. The pending changes were already quite extensive from an overview.

As such, it is **strongly** recommended to not fork this repository, but rather to create a new clean repository and follow the [alternative guidelines](#recommended-alternative) instead.  
Should take you a couple of hours to do this if you know what you are doing, or a couple of days in worst case scenario if you get really stuck and need help from someone on Nim's Discord.

Most of the work is already done, and its mostly a matter of copy/pasting and patching small things.  

## Recommended alternative:
Use futhark for wrapping instead.  
It works a LOT better for wrapping `wgpu-native`, at least until the webgpu spec development is stabilized.

### How to wrap wgpu with futhark
This library provides an automatic buildsystem that can be combined with [futhark](https://github.com/PMunch/futhark) to create a statically linked and auto-generated wrapper.  

Your main source of reference should be [wgpu/raw.nim](./src/wgpu/raw.nim) file, which does exactly this already.  
The raw api file imports the [wgpu/compile.nim](./src/wgpu/compile.nim) file, which takes care of calling cargo and building+linking to the resulting `.a` output file that the `wgpu-native` buildsystem compiles.  

Feel free to copy/paste those files into a new repository, and use/modify them as you need. The license is MIT after all.
With those two files in place, you should be more than close to having a fully working and statically linked wrapper.  

All that you would need after that is to automate the process of updating the wgpu-native repository directly form the `compile.nim` file if you so desire.  
That way you will always be certain that changes from upstream, if there are any, are always downloaded on every build command.  

### Why futhark, instead of manual wrapping
The main reason is because wgpu/webgpu are currently _(dec.2023)_ in active development and implement breaking changes very often.  

The most recent change I remember was the removal of Swapchains altogether, with no ability to keep up with those changes without relying on `git diff`s and going over what was changed line by line, and blind-guessing if you are doing the right thing or not.  
Another painful one was the addition to anotation macros to the whole wegbpu-native header file. They didn't change behavior, but they created a massive diff file that was very painful to port manually.  

Futhark will let you keep up with all of these upstream wgpu-native/trunk changes without any extra effort.  
You lose the shorter name aliases, but the loss is definitely worth it.   

---
## wgpu for Nim
Handmade wgpu-native wrapper, with an automated buildsystem.  

## How to
1. Install requirements: `rust`, `git`, `nim`  
2. Install the bindings with `nimble install https://github.com/heysokam/wgpu`, or add them to your project's nimble file  
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
```md
# Requirements  (manually installed by the user)
nim   # For compiling the wrapper
rust  # For compiling wgpu-native
```

### Static Linking
This library is compiled automatically and linked statically when importing.  
This is the default and preferred behaviour of this wrapper.  


## Disclaimers and Other Info
### About function/types names
All names have been shortened, with extensive use of name overloads.  
The goal was removing the need for C style `WGPUCrazyLongAndRepetitive_Names` everywhere.  
See the [renaming](./doc/rename.md) doc file for more details.  

_note: There is a pure C names wrapper available @[wgpu/raw](./src/wgpu/raw.nim)_  

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
The buildsystem of this lib depends on cargo and git, which is not standard or common behavior for nim.  
Those apps will be called automatically when you build your project.  
See the [Buildsystem](./doc/buildsystem.md) file for info about why.  

---

## Reasons for archival
### 1. wgpu/trunk Upstream moves too fast
Manually keeping up with wgpu upstream generates too much work, due to unnecessary debugging of segfaults and weird errors caused by manually wrapping a moving API.
If you are considering using wgpu with nim, use Futhark instead. See the [alternative](#recommended-alternative) section.

### 2. Moving to Vulkan
After getting over the intial mandatory struggle of Vulkan learning, I found that Vulkan meets my personal requirements better.  
When I started this wrapper I was not experienced enough to tackle it. But now I feel more confident to switch to Vulkan, and make it my main graphics API.

### 3. GC none neverending issues
> _Important:_  
> _This reason is very personal, and it is exclusively about using Nim in a manual-memory-management context._  
> _Nim is great as it is, and the GC performance is so optimized that it's barely noticeable that it is there._  
> _That's why I still think Nim is the best language for projects where a GC'ed workflow makes more sense._  

Nim with `--mm:none` was always my ideal language.  
But its clear that the GC:none feature (albeit niche) is only provided as a sidekick, and not really maintained as a core feature.  

I tried to make Nim behave correctly with `--mm:none` for months and months.  
It takes an absurd amount of unnecessary effort to get it to a basic default state.  

And I'm not talking about the lack of GC removing half of the nim/std library because of nim's extensive use of seq/string in its stdlib.  
I'm talking about features that shouldn't even be allowed to exist at all in a gc:none context _(eg: exceptions, dynamically allocated types, etc etc)_  

After all of that effort, and seeing how futile it was, I gave up on `--mm:none` completely.  
It would take a big amount of effort patching nim itself so that these issues are no longer there.  
And, sadly, based on experience, I'm not confident in my ability to communicate with Nim's leadership to do such work myself.  

This setback led me to consider other alternatives, including Zig or Pure C.  
But, in the end, I decided that from now on I will be programming with my [MinC](https://github.com/heysokam/minc) source-to-source language/compiler instead.  

As such, I will be deprecating most of my `n*dk` libraries.  
And I will be creating my engine's devkit with MinC instead.  
