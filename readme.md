# ngpu : Native WebGPU library in Nim
Rendering library, targeting the design concepts of the WebGPU API.
Don't be fooled by the `web` in the name.  
This project's target is native gpu usage.

## wgpu vs Dawn
The WebGPU API is currently tied to a division between wgpu and Dawn.  
This means that, with time, either one or the other might (or might not) fall out of use.  
In the end, the goal of this library is to use the same API concepts that those APIs use for rendering.  

This lib is currently using wgpu-native as its WebGPU backend.  
Dawn support might (or might not) be implemented in the future, depending on how the situation evolves.  

## Mandatory Disclaimers
This library goes beyond a raw wrapper, and takes assumptions on how rendering will be done.  
If you only want to access the wgpu wrapper, you can do `import ngpu/wgpu` instead.
If you don't like the naming convention used in the wrapper, then do `import ngpu/wgpu/raw`.

