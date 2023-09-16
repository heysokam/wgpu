#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  :
#:____________________________________________________
when not defined(nimble):
  import ../../confy/src/confy
else:
  import confy

#________________________________________
# Build tasks
#___________________
template example *(name :untyped; descr,file :static string)=
  ## Custom examples alias (per project)
  const deps :seq[string]= @[
  "https://github.com/heysokam/nglfw", ## For window creation. GLFW bindings, without dynamic libraries required
  "vmath",                             ## Vector math library.
  ] # Examples: Build Requirements
  example name, descr, file, deps, true, true

# Build the examples binaries
example wip,       "Example WIP: Builds the current wip example.",  "wip"
example hello,     "Example 00:  hellowindow.",                     "e00_hellowgpu"
example clear,     "Example 01:  helloclear.",                      "e01_helloclear"
example triangle,  "Example 02:  hellotriangle.",                   "e02_hellotriangle"
example buffer,    "Example 03:  hellobuffer.",                     "e03_hellobuffer"
example compute,   "Example 04:  hellocompute.",                    "e04_hellocompute"
example triangle2, "Example 05:  simple buffered triangle.",        "e05_trianglebuffered1"
example triangle3, "Example 06:  multi-buffered triangle.",         "e06_trianglebuffered2"
example triangle4, "Example 07:  indexed multi-buffered triangle.", "e07_trianglebuffered3"
example uniform,   "Example 08:  single uniform.",                  "e08_hellouniform"
example struct,    "Example 09:  uniform struct.",                  "e09_uniformstruct"
# example dynamic,   "Example 10:  uniform struct.",                  "e10_dynamicuniform"
example texture,   "Example 11:  simple byte texture.",             "e11_hellotexture"
example texture2,  "Example 12:  sampled byte texture.",            "e12_sampledtexture"
example depth,     "Example 13:  simple depth buffer attachment.",  "e13_hellodepth"
example camera,    "Example 14:  simple 3D camera controller.",     "e14_hellocamera"
example uvs,       "Example 15:  cube textured using its UVs.",     "e15_cubetextured"
example instance,  "Example 16:  cube instanced 100 times.",        "e16_cubeinstanced"
example multimesh, "Example 17:  multi-mesh. cubes + pyramid.",     "e17_multimesh"


##[ TODO ]#____________________________________________________
#___________________
keyword "nc", "Builds+Run the current nim project, using confy.", package.name
keyword "ex", "Builds+Run the example app, using confy.", "wgpu"/"example"
#___________________
# Build the demo apps
task app1, "App 01: Builds the Framebuffer app.": runExample "app_framebuffer"
#___________________
# Reference Task
task lib, "Reference-only: Builds the wgpu-native library in both release and debug modes":
  # Note: This is automatically done by the buildsystem, without running this task. Only here for reference.
  exec "nimble git"
  withDir wgpuDir:
    exec "make lib-native"
    exec "make lib-native-release"
    # Fix the static linking mess of clang+mac
    when defined(macosx):
      let rlsDir = "./target/release"
      let dbgDir = "./target/debug"
      let file   = "libwgpu_native.a"
      if fileExists( rlsDir/file ):  cpFile rlsDir/file, rlsDir/"libwgpu_native_static.a"
      if fileExists( dbgDir/file ):  cpFile dbgDir/file, dbgDir/"libwgpu_native_static.a"
]##
