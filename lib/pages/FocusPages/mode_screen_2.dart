import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/schedule.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class ModeScreen2 extends StatelessWidget {
  const ModeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        VSpace(13),

        Center(
          child: TextWidget(
            text: 'Driving Time',
            color: Color.fromRGBO(6, 84, 91, 1),
            fontSize: sp(24),
            fontWeight: FontWeight.w700,
          ),
        ),

        VSpace(29),

        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(sr(6)),
          child: Image.asset(
            'lib/assets/images/driving.png',
            fit: BoxFit.cover,
            width: sw(100),
            height: h(183),
          ),
        ),

        VSpace(18),

        Column(
          children: [
            Column(
              children: [
                TextWidget(
                  text: 'Focus time: 1h:15m',
                  googleFonts: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: sp(20),
                  ),
                ),

                VSpace(10),

                MyContainer(
                  //! error at padding horizontal: 70
                  padding: EdgeInsets.symmetric(
                    horizontal: w(70),
                    vertical: h(20),
                  ),
                  color: Color.fromRGBO(214, 255, 222, 1),
                  child: TextWidget(
                    text: 'Stay focused on the way!',
                    googleFonts: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: sp(14),
                      color: Color.fromRGBO(6, 84, 91, 1),
                    ),
                  ),
                ),
              ],
            ),

            VSpace(18.21),

            ScheduleTile(
              scheduleName: 'Your driving Schedule',
              scheduleTime: '10:15 PM - 11:15 AM',
            ),

            VSpace(33),

            MyButton(
              padding: EdgeInsets.only(
                left: w(20),
                top: h(10),
                right: w(10),
                bottom: h(10),
              ),
              radius: 50,
              text: 'Begin Sleep Session',
              onTap: () => Navigator.pushNamed(context, '/appBlockerPage'),
            ),

            VSpace(36),
          ],
        ),
      ],
    );
  }
}
