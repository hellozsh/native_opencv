//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <desktop_multi_window/desktop_multi_window_plugin.h>
#include <menubar/menubar_plugin.h>
#include <native_opencv/native_opencv_plugin.h>
#include <window_size/window_size_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) desktop_multi_window_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DesktopMultiWindowPlugin");
  desktop_multi_window_plugin_register_with_registrar(desktop_multi_window_registrar);
  g_autoptr(FlPluginRegistrar) menubar_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "MenubarPlugin");
  menubar_plugin_register_with_registrar(menubar_registrar);
  g_autoptr(FlPluginRegistrar) native_opencv_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "NativeOpencvPlugin");
  native_opencv_plugin_register_with_registrar(native_opencv_registrar);
  g_autoptr(FlPluginRegistrar) window_size_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "WindowSizePlugin");
  window_size_plugin_register_with_registrar(window_size_registrar);
}
