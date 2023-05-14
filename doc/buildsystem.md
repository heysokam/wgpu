# Buildsystem Non-standard Requirements
The buildsystem of this lib depends on cargo, git and cmake, which is not standard or common behavior for nim.  
Those apps will be called automatically when you build your project.  

This "concern" has been raised before, but `wgpu-native` is a Rust-based library.  
I see no other way of solving the buildsystem in a user-friendly way...  
without offloading the weight of the entire buildsystem on every single user of the bindings (which is very unintuitive).  

That's the reason why this "not standard" solution has been chosen.  

