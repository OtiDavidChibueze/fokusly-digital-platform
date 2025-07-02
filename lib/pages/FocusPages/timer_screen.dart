import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VSpace(36),

        TextWidget(
          text: "You're all set!",
          fontWeight: FontWeight.w700,
          fontSize: sp(24),
        ),

        VSpace(12),

        TextWidget(
          text:
              'Start the timer, and your distracting apps will be blocked until the detox ends.',
          textAlign: TextAlign.center,
          fontWeight: FontWeight.w400,
          fontSize: sp(14),
          color: Color.fromRGBO(0, 0, 0, 1),
        ),

        VSpace(36),

        SvgPicture.asset('lib/assets/images/svg/timer.svg', fit: BoxFit.cover),

        VSpace(24),

        Divider(color: Color.fromRGBO(0, 0, 0, 0.04), thickness: 1),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: 'Set timer',
              fontWeight: FontWeight.w700,
              fontSize: sp(16),
              color: Color.fromRGBO(0, 0, 0, 1),
            ),

            SvgPicture.asset(
              'lib/assets/images/svg/edit.svg',
              fit: BoxFit.cover,
            ),
          ],
        ),

        VSpace(15),

        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: w(9), vertical: h(7)),
            child: TextWidget(
              text: '10:15 PM - 11:15 PM',
              googleFonts: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: sp(14),
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
        ),

        VSpace(20),

        Divider(color: Color.fromRGBO(0, 0, 0, 0.04), thickness: 1),

        VSpace(52),

        MyButton(
          padding: EdgeInsets.symmetric(vertical: h(10)),
          radius: 50,
          text: 'Done',
          onTap: () => Navigator.pushNamed(context, '/detoxPage2'),
          fontWeight: FontWeight.w400,
          fontSize: sp(12),
          textColor: Color.fromRGBO(255, 255, 255, 1),
          width: w(298),
        ),

        VSpace(18),

        TextWidget(
          text: 'Apps will be blocked for 1 hour',
          googleFonts: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: sp(14),
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ],
    );
  }
}
