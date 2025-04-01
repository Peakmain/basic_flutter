import 'package:flutter/cupertino.dart';

/**
 * author ：Peakmain
 * createTime：2025/4/1
 * mail:2726449200@qq.com
 * describe：工具类
 */
class SizeUtils {
  ///屏幕的宽度
  static getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  ///屏幕的高度
  static getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
