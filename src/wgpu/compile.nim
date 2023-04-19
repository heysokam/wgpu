#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
# Compilation system for linking to wgpu headers  |
#_________________________________________________|

# Pass cflag -I to the compiler to include the header folders
{.passC: "-I./src/wgpu/C/wgpu-native/ffi".}
{.passC: "-I./src/wgpu/C/wgpu-native/ffi/webgpu-header".}

# Pass ldflag to link to the folder where the libs are output
when defined(debug):  {.passL: "-L./src/wgpu/C/wgpu-native/target/debug".}
else:                 {.passL: "-L./src/wgpu/C/wgpu-native/target/release".}

# Link to the static library
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

