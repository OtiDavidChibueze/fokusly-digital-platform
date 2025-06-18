import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double width;
  final double height;
  final Color? color;
  final double radius;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final AlignmentGeometry? alignment;
  final Function()? onTap;
  final EdgeInsetsGeometry? padding;

  const MyButton({
    super.key,
    required this.width,
    required this.height,
    this.color,
    required this.radius,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.alignment,
    required this.onTap,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? Color(0xFF06545B),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Align(
          alignment: alignment ?? Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: textColor ?? Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
