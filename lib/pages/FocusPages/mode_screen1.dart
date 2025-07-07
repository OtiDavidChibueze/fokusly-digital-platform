import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';

import 'package:fokusly_digital_wellbeing_app/components/utils/focus_list_tile.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class ModeScreen1 extends StatelessWidget {
  const ModeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          VSpace(13),

          Center(
            child: TextWidget(
              text: 'Bed Time',
              color: Color.fromRGBO(6, 84, 91, 1),
              fontSize: sp(24),
              fontWeight: FontWeight.w700,
            ),
          ),

          VSpace(29),

          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(sr(6)),
            child: Image.asset(
              'lib/assets/images/bedTime.png',
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
                    text: '7h:30m',
                    googleFonts: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: sp(20),
                    ),
                  ),

                  TextWidget(
                    text: 'Until wake-up',
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: sp(14),
                  ),

                  VSpace(25),

                  TextWidget(
                    text: 'Unplug, relax, and prepare for deep sleep',
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: sp(16),
                  ),

                  VSpace(26),

                  MyContainer(
                    padding: EdgeInsets.symmetric(
                      horizontal: w(30),
                      vertical: h(20),
                    ),
                    color: Color.fromRGBO(214, 255, 222, 1),
                    child: TextWidget(
                      text: 'Avoid screen time, 30 mins before bed',
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

              Divider(thickness: 1, color: Color.fromRGBO(0, 0, 0, 0.04)),

              VSpace(14),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Your sleep schedule',
                    fontWeight: FontWeight.w700,
                    fontSize: sp(14),
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right: w(20)),
                    child: GestureDetector(
                      onTap: () {}, //todo -> Edit schedule
                      child: SvgPicture.asset(
                        'lib/assets/images/svg/edit.svg',
                        fit: BoxFit.cover,
                        width: w(18),
                        height: h(18),
                      ),
                    ),
                  ),
                ],
              ),

              VSpace(14),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: w(9),
                    vertical: h(9),
                  ),
                  child: TextWidget(
                    text: '10:30 PM - 7:30 AM',
                    googleFonts: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: sp(14),
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
              ),

              VSpace(14),

              Divider(thickness: 1, color: Color.fromRGBO(0, 0, 0, 0.04)),

              VSpace(26),

              FocusListTile(
                title: TextWidget(
                  text: 'Do not disturb',
                  fontWeight: FontWeight.w400,
                  fontSize: sp(16),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                onChanged: (p0) {},
                value: false,
                onTap: () {},
              ),

              VSpace(27),

              Divider(thickness: 1, color: Color.fromRGBO(0, 0, 0, 0.04)),

              VSpace(26),

              FocusListTile(
                title: TextWidget(
                  text: 'Wake up alarm',
                  fontWeight: FontWeight.w400,
                  fontSize: sp(16),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                onChanged: (p0) {},
                value: false,
                onTap: () {},
              ),

              VSpace(27),

              Divider(thickness: 1, color: Color.fromRGBO(0, 0, 0, 0.04)),

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
                onTap: () => Navigator.pushNamed(context, '/appBlockerPage1'),
                fontSize: sp(15),
                width: w(298),
                fontWeight: FontWeight.w700,
              ),

              VSpace(36),
            ],
          ),
        ],
      ),
    );
  }
}
