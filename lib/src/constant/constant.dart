part of native_opencv;
/*
 * 描述: 
 * 创建者: zhousuhua
 * 邮箱: zhousuhua@xinzhili.cn
 * 日期: 2022/9/837 6:08 下午
 */


class MyPoint extends Struct {
  @Double()
  external double x;

  @Double()
  external double y;

  MyPoint(x, y);
}


// class MyStruct extends Struct {
//   @Float()
//   external double a;
//
//   @Float()
//   external double b;
//
//   external Pointer<Void> c;
//
//   MyStruct(a, b, c);
// }

// C function signatures
typedef _version_func = ffi.Pointer<Utf8> Function();
typedef _process_image_func = ffi.Void Function(ffi.Pointer<Utf8>, ffi.Pointer<Utf8>);
typedef _enhance_func = ffi.Void Function(ffi.Pointer<Utf8>, ffi.Pointer<Utf8>, ffi.Double);
typedef _adjust_brightness_contrast_func = ffi.Void Function(ffi.Pointer<Utf8>, ffi.Pointer<Utf8>, ffi.Double, ffi.Double);
// typedef _adjust_brightness_contrast_func = ffi.Void Function(ffi.Pointer<Utf8>, ffi.Pointer<Utf8>); // ffi.Double, ffi.Double
typedef _draw_lines_add_chromosomes_func = ffi.Void Function(ffi.Pointer<Utf8>, ffi.Pointer<Utf8>, ffi.Pointer<MyPoint>, ffi.Uint32); //

// Dart function signatures
typedef _VersionFunc = ffi.Pointer<Utf8> Function();
typedef _ProcessImageFunc = void Function(ffi.Pointer<Utf8>, ffi.Pointer<Utf8>);
typedef _enhanceFunc = void Function(ffi.Pointer<Utf8>, ffi.Pointer<Utf8>, double);
typedef _adjustBrightnessContrastFunc = void Function(ffi.Pointer<Utf8>, ffi.Pointer<Utf8>, double, double);
typedef _drawLinesAddChromosomesFunc = void Function(ffi.Pointer<Utf8>, ffi.Pointer<Utf8>, ffi.Pointer<MyPoint>, int);



