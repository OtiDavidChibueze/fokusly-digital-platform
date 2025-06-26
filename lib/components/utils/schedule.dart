import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleTile extends StatelessWidget {
  final String scheduleName;
  final String scheduleTime;
  final void Function()? onTap;

  const ScheduleTile({
    super.key,
    required this.scheduleName,
    this.onTap,
    required this.scheduleTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(thickness: 1, color: Color.fromRGBO(0, 0, 0, 0.04)),

        VSpace(14),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: scheduleName,
              fontWeight: FontWeight.w700,
              fontSize: sp(14),
              color: Color.fromRGBO(0, 0, 0, 1),
            ),

            GestureDetector(
              onTap: onTap, //todo -> Edit schedule
              child: SvgPicture.asset(
                'lib/assets/images/svg/edit.svg',
                fit: BoxFit.cover,
                width: w(18),
                height: h(18),
              ),
            ),
          ],
        ),

        VSpace(22),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: w(9), vertical: h(9)),
          child: TextWidget(
            text: scheduleTime,
            googleFonts: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: sp(14),
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        ),

        VSpace(14),

        Divider(thickness: 1, color: Color.fromRGBO(0, 0, 0, 0.04)),

        VSpace(26),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: 'Do not disturb',
              fontWeight: FontWeight.w400,
              fontSize: sp(16),
            ),

            CupertinoSwitch(value: false, onChanged: (value) {}),
          ],
        ),

        VSpace(27),

        Divider(thickness: 1, color: Color.fromRGBO(0, 0, 0, 0.04)),

        VSpace(26),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: 'Wake up alarm',
              fontWeight: FontWeight.w400,
              fontSize: sp(16),
            ),

            CupertinoSwitch(value: false, onChanged: (value) {}),
          ],
        ),

        VSpace(27),

        Divider(thickness: 1, color: Color.fromRGBO(0, 0, 0, 0.04)),
      ],
    );
  }
}
