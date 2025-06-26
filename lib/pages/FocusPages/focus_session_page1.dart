import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class FocusSessionPage1 extends StatelessWidget {
  const FocusSessionPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VSpace(13),

        TextWidget(
          text: 'Focus Session',
          color: Color.fromRGBO(6, 84, 91, 1),
          fontSize: sp(24),
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}
