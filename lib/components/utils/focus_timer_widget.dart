import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class FocusTimerWidget extends StatelessWidget {
  final String timer;
  final dynamic Function() onTap;

  const FocusTimerWidget({super.key, required this.timer, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.translate(
          offset: Offset(0, 0),
          child: Image.asset('lib/assets/images/counter_circle.png'),
        ),

        Transform.translate(
          offset: Offset(0, -120),
          child: Column(
            children: [
              TextWidget(
                text: timer,
                fontWeight: FontWeight.w700,
                fontSize: 48,
              ),

              VSpace(53),

              MyButton(
                padding: EdgeInsets.symmetric(horizontal: 55, vertical: 17),
                width: 159,
                radius: 40,
                text: 'Start',
                fontWeight: FontWeight.w700,
                fontSize: 20,
                onTap: onTap,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
