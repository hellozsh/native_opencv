import 'dart:io';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:window_size/window_size.dart';
import 'package:native_opencv/native_opencv.dart';
import 'app/routes/app_pages.dart';
import 'package:f_logs/f_logs.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('染色体分析系统');
    setWindowMaxSize(const Size(1920, 1080));
    setWindowMinSize(const Size(720, 600));
  }

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

init() {
  /// Configuration example 1
//  LogsConfig config = LogsConfig()
//    ..isDebuggable = true
//    ..isDevelopmentDebuggingEnabled = true
//    ..customClosingDivider = "|"
//    ..customOpeningDivider = "|"
//    ..csvDelimiter = ", "
//    ..isLogsEnabled = true
//    ..encryptionEnabled = false
//    ..encryptionKey = "123"
//    ..formatType = FormatType.FORMAT_CURLY
//    ..logLevelsEnabled = [LogLevel.INFO, LogLevel.ERROR]
//    ..dataLogTypes = [
//      DataLogType.DEVICE.toString(),
//      DataLogType.NETWORK.toString(),
//      "Zubair"
//    ]
//    ..stackTraceFormatter = CustomFormatter.formatStackTrace
//    ..timestampFormat = TimestampFormat.TIME_FORMAT_FULL_1;

  /// Configuration example 2
//  LogsConfig config = FLog.getDefaultConfigurations()
//    ..isDevelopmentDebuggingEnabled = true
//    ..timestampFormat = TimestampFormat.TIME_FORMAT_FULL_2;

  /// Configuration example 3 Format Custom
  LogsConfig config = FLog.getDefaultConfigurations()
    ..isDevelopmentDebuggingEnabled = true
    ..timestampFormat = TimestampFormat.TIME_FORMAT_FULL_3
    ..formatType = FormatType.FORMAT_CUSTOM
    ..fieldOrderFormatCustom = [
      FieldName.TIMESTAMP,
      FieldName.LOG_LEVEL,
      FieldName.CLASSNAME,
      FieldName.METHOD_NAME,
      FieldName.TEXT,
      FieldName.EXCEPTION,
      FieldName.STACKTRACE
    ]
    ..customOpeningDivider = "{"
    ..customClosingDivider = "}";

  FLog.applyConfigurations(config);
}
