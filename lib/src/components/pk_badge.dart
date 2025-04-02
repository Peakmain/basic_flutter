import 'package:flutter/cupertino.dart';

class PkBadge extends StatefulWidget {
  const PkBadge({super.key, this.count, this.color, this.textColor});

  ///红点的数量
  final String? count;

  /// 红点颜色
  final Color? color;

  /// 文字颜色
  final Color? textColor;

  @override
  State<PkBadge> createState() => _PkBadgeState();
}

class _PkBadgeState extends State<PkBadge> {
  String badgeNum = "";

  ///更新红点数量
  void updateBadgeNum(String? newCount) {
    if (newCount == null) return;
    setState(() {
      badgeNum = newCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    updateBadgeNum(widget.count);
    return Container(
      height: 12,
      width: 16,
      decoration: BoxDecoration(
          color: widget.color ?? const Color(0xFFA5534D),
          borderRadius: BorderRadius.circular(2)),
      child: Center(
        child: Text(
          badgeNum,
          style: TextStyle(
              fontSize: 8, color: widget.textColor ?? Color(0xFFFFFFFF)),
        ),
      ),
    );
  }
}
