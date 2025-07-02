import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class MyContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final Color color;
  final double? radius;
  final Widget? child;
  final DecorationImage? image;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry? margin;
  final BoxBorder? border;

  const MyContainer({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.color = Colors.white,
    this.radius,
    this.child,
    this.image,
    this.boxShadow,
    this.margin,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        boxShadow: boxShadow,
        color: color,
        border: border,
        borderRadius: BorderRadius.circular(sr(radius ?? 10.0)),
        image: image,
      ),
      child: child,
    );
  }
}
