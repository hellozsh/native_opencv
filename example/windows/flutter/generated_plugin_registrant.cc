//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <desktop_multi_window/desktop_multi_window_plugin.h>
#include <menubar/menubar_plugin.h>
#include <native_opencv/native_opencv_plugin.h>
#include <window_size/window_size_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  DesktopMultiWindowPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("DesktopMultiWindowPlugin"));
  MenubarPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("MenubarPlugin"));
  NativeOpencvPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("NativeOpencvPlugin"));
  WindowSizePluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("WindowSizePlugin"));
}
