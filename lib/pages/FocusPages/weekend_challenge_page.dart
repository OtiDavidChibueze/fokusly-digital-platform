import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class WeekendChallengePage extends StatelessWidget {
  const WeekendChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          VSpace(21),

          MyContainer(
            padding: EdgeInsets.symmetric(
              horizontal: w(35.3571),
              vertical: h(35.3571),
            ),
            radius: 100,
            color: Colors.transparent,
            border: Border.all(
              width: w(10),
              color: Color.fromRGBO(6, 84, 91, 1),
            ),
            child: SvgPicture.asset(
              'lib/assets/images/svg/plug.svg',
              fit: BoxFit.cover,
              width: w(64.2857),
              height: h(64.2857),
            ),
          ),

          VSpace(28),

          TextWidget(
            text: 'Weekend Unplug',
            fontWeight: FontWeight.w700,
            fontSize: sp(32),
          ),

          VSpace(13),

          TextWidget(
            text: 'Two days- screen free',
            googleFonts: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: sp(14),
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),

          TextWidget(
            text:
                'Challenge yourself to take a break from screen during the weekend.',
            googleFonts: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: sp(14),
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
            textAlign: TextAlign.center,
          ),

          VSpace(24),

          Divider(color: Color.fromRGBO(0, 0, 0, 0.04), thickness: 1),

          VSpace(16),

          Row(
            children: [
              TextWidget(
                text: 'Details:',
                fontWeight: FontWeight.w700,
                fontSize: sp(20),
                color: Color.fromRGBO(0, 0, 0, 1),
              ),

              HSpace(16),

              TextWidget(
                text: 'Saturday and sunday:',
                googleFonts: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: sp(14),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ],
          ),

          VSpace(16),

          Row(
            children: [
              TextWidget(
                text: 'Goals:',
                fontWeight: FontWeight.w700,
                fontSize: sp(20),
                color: Color.fromRGBO(0, 0, 0, 1),
              ),

              HSpace(16),

              TextWidget(
                text: 'Take a break from digital devices',
                googleFonts: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: sp(14),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ],
          ),

          VSpace(16),

          Row(
            children: [
              TextWidget(
                text: 'Outcomes:',
                fontWeight: FontWeight.w700,
                fontSize: sp(20),
                color: Color.fromRGBO(0, 0, 0, 1),
              ),

              HSpace(16),

              TextWidget(
                text: 'Be present in the moment',
                googleFonts: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: sp(14),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ],
          ),

          VSpace(16),

          Divider(color: Color.fromRGBO(0, 0, 0, 0.04), thickness: 1),

          VSpace(29),

          MyButton(
            padding: EdgeInsets.symmetric(vertical: h(10)),
            width: w(298),
            radius: 50,
            text: 'Start Unplug',
            onTap: () => Navigator.pushNamed(context, '/appBlocker2'),
            fontSize: sp(12),
            fontWeight: FontWeight.w400,
          ),

          VSpace(31),
        ],
      ),
    );
  }
}
