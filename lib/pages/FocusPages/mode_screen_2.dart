import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/focus_list_tile.dart';

import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class ModeScreen2 extends StatelessWidget {
  const ModeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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

              Divider(thickness: 1, color: Color.fromRGBO(0, 0, 0, 0.04)),

              VSpace(14),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Your driving schedule',
                    fontWeight: FontWeight.w700,
                    fontSize: sp(14),
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right: w(20)),
                    child: GestureDetector(
                      onTap: () {}, //todo -> Edit schedule time
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

              VSpace(13),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: w(9),
                    vertical: h(9),
                  ),
                  child: TextWidget(
                    text: '10:15 AM - 11:15 PM',
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

              VSpace(22),

              FocusListTile(
                contentPadding: EdgeInsets.all(0),

                title: TextWidget(
                  text: 'Block Apps',
                  fontWeight: FontWeight.w400,
                  fontSize: sp(16),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                onChanged: (p0) {},
                value: false,
                onTap: () {},
              ),

              VSpace(22),

              Divider(thickness: 1, color: Color.fromRGBO(0, 0, 0, 0.04)),

              VSpace(26),

              FocusListTile(
                contentPadding: EdgeInsets.all(0),

                title: TextWidget(
                  text: 'Do not distrub',
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
                contentPadding: EdgeInsets.all(0),

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
                onTap: () => Navigator.pushNamed(context, '/appBlockerPage'),
              ),

              VSpace(36),
            ],
          ),
        ],
      ),
    );
  }
}
