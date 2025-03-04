import 'package:flutter/foundation.dart';

class LogUtils {
  static const String _levelV = 'v';
  static const String _levelD = 'd';
  static const String _levelI = 'i';
  static const String _levelW = 'w';
  static const String _levelE = 'e';

  static void v([String tag = "LogUtils", String msg = ""]) {
    customPrint(_levelV, tag, msg);
  }
  static void d([String tag = "LogUtils", String msg = ""]) {
    customPrint(_levelD, tag, msg);
  }
  static void i([String tag = "LogUtils", String msg = ""]) {
    customPrint(_levelI, tag, msg);
  }
  static void w([String tag = "LogUtils", String msg = ""]) {
    customPrint(_levelW, tag, msg);
  }
  static void e([String tag = "LogUtils", String msg = ""]) {
    customPrint(_levelE, tag, msg);
  }

  static void customPrint(String level, String tag, String msg) {
    if (kDebugMode) {
      print('[$level] $tag ==> $msg');
    }
  }
}
