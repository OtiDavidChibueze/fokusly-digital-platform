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
  final TextInputType textInputType;
  final TextEditingController? controller;
  final bool obscureText;
  final TextCapitalization textCapitalization;

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
    required this.textInputType,
    this.controller,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
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
        textCapitalization: textCapitalization,
        obscureText: obscureText,
        controller: controller,
        keyboardType: textInputType,
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
