# Dynamic Linking with wgpu-native
If you require dynamic linking, you could customize the buildsystem for your project.

To achieve this, avoid the line `include wgpu/compile` in the file `wgpu.nim`, by doing:  
```nim
import wgpu/procs
import wgpu/types
import wgpu/extras

# Same as `import wgpu`, but without the compile.nim file
```
and you will be free of static linking.  

You will need to implement your own system for calling the wgpu-native buildsystem,  
and find a way to make the compiler link your binary with the resulting dynamic library file (`.so`, `.dll`, etc).  
eg. `{.passL: "path/to/the/dynamicLibfile.dll".}`, or add the flag in your nim config somewhere.  
You might (or might not) need the proc types defined in `wgpu/dynamic.nim`. It is fully untested. Please open an issue to discuss about it if you figure out how the dynamic linking setup should work.  

