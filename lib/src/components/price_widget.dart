import 'package:flutter/cupertino.dart';

/**
 * author ：Peakmain
 * createTime：2025/4/1
 * mail:2726449200@qq.com
 * describe：人民币符号
 */
class PriceWidget extends StatelessWidget {
  final String? price;

  //字体颜色
  final Color? color;

  //人民币符号字号
  final double symbolFontSize;

  //价格整数部分字号
  final double integerFontSize;

  //价格小数部分字号
  final double decimalFontSize;

  //粗体
  final FontWeight fontWeight;

  const PriceWidget(
      {super.key,
      this.price,
      this.color = const Color(0xFFCF4444),
      this.symbolFontSize = 9,
      this.integerFontSize = 13,
      this.decimalFontSize = 10,
      this.fontWeight = FontWeight.normal});

  _splitPriceString(String? price) {
    if (price == null || price == '') {
      price = "0.00";
    }
    if(!price.contains(".")){
      price="$price.00";
    }
    return price.split(".");
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "¥",
          style: TextStyle(
              color: color, fontSize: symbolFontSize, fontWeight: fontWeight),
          //第一个字符后面所有字符
          children: [
            TextSpan(
              text: _splitPriceString(price)[0],
              style: TextStyle(fontSize: integerFontSize),
            ),
            TextSpan(
              text: ".${_splitPriceString(price)[1]}",
              style: TextStyle(fontSize: decimalFontSize),
            ),
          ]),
    );
  }
}
