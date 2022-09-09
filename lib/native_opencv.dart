library native_opencv;


import 'dart:developer';
import 'dart:ffi' as ffi;
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';

part 'src/constant/constant.dart';



// Getting a library that holds needed symbols
ffi.DynamicLibrary _openDynamicLibrary() {
  if (Platform.isAndroid) {
    return ffi.DynamicLibrary.open('libnative_opencv.so');
  } else if (Platform.isWindows) {
    return ffi.DynamicLibrary.open("native_opencv_plugin.dll");
  }

  return ffi.DynamicLibrary.process();
}

ffi.DynamicLibrary _lib = _openDynamicLibrary();


// Looking for the functions
final _VersionFunc _version = _lib
    .lookup<ffi.NativeFunction<_version_func>>('version')
    .asFunction();
final _ProcessImageFunc _processImage = _lib
    .lookup<ffi.NativeFunction<_process_image_func>>('process_image')
    .asFunction();
final _enhanceFunc _enhance = _lib
    .lookup<ffi.NativeFunction<_enhance_func>>('enhance')
    .asFunction();
final _adjustBrightnessContrastFunc _adjustBrightnessContrast = _lib
    .lookup<ffi.NativeFunction<_adjust_brightness_contrast_func>>('adjustBrightnessContrast')
    .asFunction();
final _drawLinesAddChromosomesFunc _drawLinesAddChromosomes = _lib
    .lookup<ffi.NativeFunction<_draw_lines_add_chromosomes_func>>('draw_lines_add_chromosomes')
    .asFunction();

String opencvVersion() {
  return _version().toDartString();
  // return Utf8.fromUtf8(_version());
}

void processImage(String inputPath, String outputPath) {
  _processImage(inputPath.toNativeUtf8(), outputPath.toNativeUtf8());
  // _processImage(Utf8.toUtf8(inputPath), Utf8.toUtf8(outputPath));
}

void enhance(String inputPath, String outputPath, double num) {
  _enhance(inputPath.toNativeUtf8(), outputPath.toNativeUtf8(), num);
}

//对比度和亮度调节 第一个变量是亮度，第二个变量是对比度
void adjustBrightnessContrast(String inputPath, String outputPath, double brightness, double contrast) {
  log('================= adjust_brightness_contrast');
   _adjustBrightnessContrast(inputPath.toNativeUtf8(), outputPath.toNativeUtf8(), brightness, contrast);
}

// 画线添加染色体
void drawLinesAddChromosomes(String inputPath, String outputPath, List points) {
  _drawLinesAddChromosomes(inputPath.toNativeUtf8(), outputPath.toNativeUtf8());
}