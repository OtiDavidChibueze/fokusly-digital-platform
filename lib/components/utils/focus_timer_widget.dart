import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class FocusTimerWidget extends StatelessWidget {
  final String minute;
  final String seconds;
  final Color? secondColor;

  final dynamic Function() onTap;
  final Color? btnColor;

  const FocusTimerWidget({
    super.key,
    required this.onTap,
    this.btnColor,
    required this.minute,
    required this.seconds,
    this.secondColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.translate(
          offset: Offset(0, 0),
          child: Image.asset('lib/assets/images/counter_circle.png'),
        ),

        Transform.translate(
          offset: Offset(100, -120),
          child: Row(
            children: [
              TextWidget(
                text: minute,
                fontWeight: FontWeight.w700,
                fontSize: 48,
              ),
              TextWidget(text: ":", fontWeight: FontWeight.w700, fontSize: 48),
              TextWidget(
                text: seconds,
                fontWeight: FontWeight.w700,
                fontSize: 48,
                color: secondColor,
              ),
            ],
          ),
        ),

        VSpace(44),

        Transform.translate(
          offset: Offset(0, -120),
          child: MyButton(
            padding: EdgeInsets.symmetric(horizontal: 55, vertical: 17),
            width: 159,
            radius: 40,
            text: 'Start',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            onTap: onTap,
            color: btnColor,
          ),
        ),
      ],
    );
  }
}
