import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class OnboardingListTile extends StatelessWidget {
  final bool value;
  final void Function(bool?) onChanged;
  final String text;

  const OnboardingListTile({
    super.key,
    required this.value,
    required this.onChanged,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          side: BorderSide(
            color: Color.from(alpha: 1, red: 0.173, green: 0.596, blue: 0.635),
            width: w(3),
          ),
          activeColor: Color.fromRGBO(6, 84, 91, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(sr(7)),
          ),
        ),

        //! gap error
        // HSpace(13),
        TextWidget(
          text: text,
          color: Color.fromRGBO(6, 84, 91, 1),
          fontWeight: FontWeight.w700,
          fontSize: sp(16),
        ),

        VSpace(12),
      ],
    );
  }
}
