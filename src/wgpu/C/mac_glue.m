//:________________________________________________________
//  wgpu-nim  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
//:________________________________________________________
// Mac Glue code implementation.       |
// See ./mac_glue.h for more details.  |
//_____________________________________|
#include "./mac_glue.h"

id macGetMetalLayer(GLFWwindow* window) {
  id metal_layer = NULL;
  NSWindow* ns_window = glfwGetCocoaWindow(window);
  [ns_window.contentView setWantsLayer:YES];
  metal_layer = [CAMetalLayer layer];
  [ns_window.contentView setLayer:metal_layer];
  return metal_layer;
}

