import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final Color? backgroungColor;
  final BoxBorder? border;
  final double radius;
  final Color? cursorColor;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final String hintText;

  const MyTextField({
    super.key,
    required this.width,
    required this.height,
    this.padding,
    this.backgroungColor,
    this.border,
    required this.radius,
    this.cursorColor,
    this.textStyle,
    this.hintStyle,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroungColor ?? Colors.transparent,
        border: border,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: TextField(
        style: textStyle ?? TextStyle(color: Color(0xFF06545B)),
        cursorColor: cursorColor ?? Color(0xFF06545B),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: hintStyle ?? TextStyle(color: Color(0xFF06545B)),
        ),
      ),
    );
  }
}
