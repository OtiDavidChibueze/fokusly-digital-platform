import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class EndChallengePage extends StatelessWidget {
  const EndChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VSpace(24),

        Image.asset(
          'lib/assets/images/crown.png',
          width: w(226.4234),
          height: h(246),
          fit: BoxFit.cover,
        ),

        VSpace(15),

        TextWidget(
          text: 'Congratulation!',
          fontWeight: FontWeight.w700,
          fontSize: sp(32),
        ),

        VSpace(21),

        TextWidget(
          text: 'You completed the detox challenge',
          googleFonts: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: sp(14),
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),

        VSpace(21),

        TextWidget(
          text: 'You’ve earned \n5 points',
          fontWeight: FontWeight.w700,
          fontSize: sp(24),
          textAlign: TextAlign.center,
        ),

        VSpace(100),

        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/focusMode'),
          child: Container(
            width: w(298),
            padding: EdgeInsets.symmetric(vertical: h(10)),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(sr(50)),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(6, 84, 91, 1),
                  Color.fromRGBO(13, 178, 193, 1),
                ],
                begin: Alignment.bottomLeft,
              ),
            ),
            child: Center(
              child: TextWidget(
                text: 'Done',
                fontSize: sp(12),
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
