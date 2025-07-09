import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class ProgressTracker extends StatelessWidget {
  final String title;
  final double progress;

  const ProgressTracker({
    super.key,
    required this.title,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Task Title
        Expanded(
          child: TextWidget(
            text: title,
            fontWeight: FontWeight.w400,
            fontSize: sp(13),
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),

        // Progress Circle
        SizedBox(
          width: w(24),
          height: h(24),
          child: CircularProgressIndicator(
            value: progress,
            strokeWidth: 2.5,
            backgroundColor: Color.fromRGBO(214, 255, 222, 1),
            valueColor: AlwaysStoppedAnimation<Color>(
              Color.fromRGBO(6, 84, 91, 1),
            ),
          ),
        ),
      ],
    );
  }
}
