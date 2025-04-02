import 'package:flutter/cupertino.dart';
import 'package:peakmain_flutter/peakmain_flutter.dart';

class UiWidget extends StatefulWidget {
  const UiWidget({super.key});

  @override
  State<UiWidget> createState() => _UiWidgetState();
}

class _UiWidgetState extends State<UiWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("UI工具类"),
        SizedBox(
          width: 40,
          height: 24,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Text(
                '消息',
              ),
              const Positioned(
                child: PkBadge(count: "12",),
                right: 3,
                top: 3,
              )
            ],
          ),
        )
      ],
    );
  }
}
