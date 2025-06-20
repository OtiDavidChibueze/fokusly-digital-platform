import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class MyContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final Color color;
  final double? radius;
  final Widget child;

  const MyContainer({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.color = Colors.white,
    this.radius,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(sr(radius ?? 10.0)),
      ),
      child: child,
    );
  }
}
