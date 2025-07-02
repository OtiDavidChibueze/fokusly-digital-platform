import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  final double radius;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final AlignmentGeometry? alignment;
  final Function()? onTap;
  final EdgeInsetsGeometry? padding;
  final BoxBorder? border;
  final TextStyle? googleFonts;
  // final Gradient? gradient;

  const MyButton({
    super.key,
    this.width,
    this.height,
    this.color,
    required this.radius,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.alignment,
    required this.onTap,
    this.padding,
    this.border,
    this.googleFonts,
    // this.gradient,
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
          // gradient: gradient,
          color: color ?? Color(0xFF06545B),
          borderRadius: BorderRadius.circular(radius),
          border: border,
        ),
        child: Align(
          alignment: alignment ?? Alignment.center,
          child: Text(
            text,
            style:
                googleFonts ??
                TextStyle(
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
