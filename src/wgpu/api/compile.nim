{.passC: "-I./src/wgpu/api/C" .}  # Pass cflag -I to the compiler to include folder ./C

when defined(debug):  {.passL: "-L./wgpu-native/target/debug".}
else:                 {.passL: "-L./wgpu-native/target/release".}

when defined(linux):
  {.passL: "-l:libwgpu_native.a".}
elif defined(windows):
  {.link: "user32.lib".}
  {.link: "userenv.lib".}
  {.link: "ws2_32.lib".}
  {.link: "dwmapi.lib".}
  {.link: "dbghelp.lib".}
  {.link: "d3dcompiler.lib".}
  {.link: "d3d12.lib".}
  {.link: "d3d11.lib".}
  {.link: "dxgi.lib".}
  {.link: "bcrypt.lib".}
  {.link: "advapi32.lib".}
  {.passL: "-l:wgpu_native.lib".}
else:
  {.error: "platform not yet supported".}

