import 'package:flutter/cupertino.dart';

class UtilsWidget extends StatefulWidget {
  const UtilsWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _UtilsWidgetState();
  }

}

class _UtilsWidgetState extends State<UtilsWidget> {
  @override
  Widget build(BuildContext context) {
    return Text("工具类组件");
  }
}