#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:____________________________________________________
# Compilation system for linking to wgpu headers  |
#_________________________________________________|


#_________________________________________________
# Pass cflag -I to the compiler to include the header folders
#_____________________________
{.passC: "-I./src/wgpu/C/wgpu-native/ffi".}
{.passC: "-I./src/wgpu/C/wgpu-native/ffi/webgpu-header".}


#_________________________________________________
# Pass ldflag to link to the folder where the libs are output
#_____________________________
when not defined(clang):  # clang doesn't support `:` in `-l:libname.a`
  when defined(debug):  {.passL: "-L./src/wgpu/C/wgpu-native/target/debug".}
  else:                 {.passL: "-L./src/wgpu/C/wgpu-native/target/release".}


#_________________________________________________
# Link to the static library
#_____________________________
# Linux+Mac
when defined(unix):       # Both Linux and Mac
  when defined(clang):    # clang doesn't support `:` in `-l:libname.a`
    when defined(debug):  {.passL: "-l./src/wgpu/C/wgpu-native/target/debug/libwgpu_native.a".}
    else:                 {.passL: "-l./src/wgpu/C/wgpu-native/target/release/libwgpu_native.a".}
  elif defined(gcc):      {.passL: "-l:libwgpu_native.a".}  # Use `:` with gcc
  else:                   {.error: "Compilers currently supported are gcc and clang".}
#_____________________________
# Windows
elif defined(windows):
  when not defined(gcc):  {.warning: "Mingw is the only compiler currently supported on Windows. clang will break, and vcc is untested".}
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
  {.passL: "-l:wgpu_native.lib".}  # Will break with clang on windows. Unknown with vcc
#_____________________________
# Other
else:  {.error: "Supported platforms are currently Windows and Unix (Linux+Mac are the only ones tested)".}

