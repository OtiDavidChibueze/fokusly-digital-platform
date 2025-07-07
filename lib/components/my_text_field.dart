import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

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
  final Color borderColor;
  final TextCapitalization textCapitalization;
  final Color fillColor;
  final EdgeInsetsGeometry? contentPadding;
  final ActionPane? endActionPane;
  final bool enabled;

  const MyTextField({
    super.key,
    this.width,
    this.height,
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
    this.borderColor = const Color(0xFF06545B),
    this.textCapitalization = TextCapitalization.none,
    this.fillColor = Colors.transparent,
    this.contentPadding,
    this.endActionPane,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: endActionPane,
      child: TextField(
        textCapitalization: textCapitalization,
        obscureText: obscureText,
        controller: controller,
        keyboardType: textInputType,
        style: textStyle ?? TextStyle(color: Color(0xFF06545B)),
        cursorColor: cursorColor ?? Color(0xFF06545B),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: .5),
            borderRadius: BorderRadius.circular(sr(15)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: .5),
            borderRadius: BorderRadius.circular(sr(15)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: .5),
            borderRadius: BorderRadius.circular(sr(15)),
          ),
          fillColor: fillColor,
          filled: true,
          enabled: enabled,
          contentPadding: contentPadding,
          hintText: hintText,
          hintStyle: hintStyle ?? TextStyle(color: Color(0xFF06545B)),
        ),
      ),
    );
  }
}
