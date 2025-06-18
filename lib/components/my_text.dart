import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? lineHeight;
  final double? letterSpacing;
  final TextAlign? textAlign;

  const TextWidget({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.lineHeight,
    this.letterSpacing,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Color(0xFF06545B),
        fontWeight: fontWeight,
        fontSize: fontSize ?? sp(24.0),
        height: lineHeight,

        letterSpacing: letterSpacing,
      ),
      textAlign: textAlign,
    );
  }
}
