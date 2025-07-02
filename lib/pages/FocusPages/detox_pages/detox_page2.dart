import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/components/percentage_counter.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/focus_list_tile.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class DetoxPage2 extends StatelessWidget {
  const DetoxPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VSpace(43),

          MyContainer(
            radius: 5,
            width: w(335),
            color: Color.fromRGBO(214, 255, 222, 1),
            child: Padding(
              padding: EdgeInsets.only(left: w(15), right: w(31)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VSpace(14),

                  TextWidget(
                    text: 'Detox Challenge',
                    fontWeight: FontWeight.w700,
                    fontSize: sp(20),
                  ),

                  VSpace(12),

                  PercentageCounterWidget(percent: 40, radius: 23, height: 14),

                  VSpace(12),

                  TextWidget(
                    text: '2 of 5 days completed',
                    googleFonts: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: sp(16),
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),

                  VSpace(13),
                ],
              ),
            ),
          ),

          VSpace(45),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStreakWidget(text: 'Your Streak', day: 2),

              Transform.rotate(
                angle: 1.5708,
                child: Container(
                  width: w(68),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: BoxBorder.all(width: 1),
                  ),
                ),
              ),

              _buildStreakWidget(text: 'Longest Streak', day: 4),
            ],
          ),

          VSpace(35),

          TextWidget(
            text: 'All Challenges',
            fontWeight: FontWeight.w700,
            fontSize: sp(20),
          ),

          VSpace(15),

          MyContainer(
            radius: 5,
            color: Color.fromRGBO(255, 255, 255, 1),
            border: Border.all(color: Color.fromRGBO(6, 84, 91, 1), width: 1),
            child: Padding(
              padding: EdgeInsets.only(right: w(16), left: w(14)),
              child: FocusListTile(
                leading: SvgPicture.asset('lib/assets/images/svg/cup.svg'),

                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'Detox Challenge',
                      fontWeight: FontWeight.w700,
                      fontSize: sp(14),
                    ),

                    TextWidget(
                      text: '5-days screen time detox',
                      googleFonts: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: sp(14),
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ],
                ),

                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'lib/assets/images/svg/check.svg',
                      fit: BoxFit.cover,
                    ),

                    TextWidget(
                      text: 'Active',
                      googleFonts: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: sp(14),
                        color: Color.fromRGBO(6, 84, 91, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          VSpace(28),

          MyContainer(
            radius: 5,
            color: Color.fromRGBO(255, 255, 255, 1),
            border: Border.all(color: Color.fromRGBO(6, 84, 91, 1), width: 1),
            child: Padding(
              padding: EdgeInsets.only(right: w(16), left: w(14)),
              child: FocusListTile(
                leading: MyContainer(
                  width: w(42),
                  height: h(42),
                  radius: 100,
                  color: Colors.transparent,
                  border: Border.all(
                    width: w(3),
                    color: Color.fromRGBO(6, 84, 91, 1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: w(9),
                      vertical: h(9),
                    ),
                    child: SvgPicture.asset(
                      'lib/assets/images/svg/plug.svg',
                      fit: BoxFit.cover,
                      width: w(20),
                      height: h(20),
                    ),
                  ),
                ),

                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'Weekend Unplug',
                      fontWeight: FontWeight.w700,
                      fontSize: sp(14),
                    ),

                    TextWidget(
                      text: 'Two screen-free days',
                      googleFonts: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: sp(14),
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ],
                ),

                trailing: MyButton(
                  width: w(110),
                  height: h(39),
                  padding: EdgeInsets.symmetric(
                    // horizontal: w(14),
                    // vertical: h(12),
                  ),
                  radius: 10,
                  text: 'Start Challenge',
                  onTap: () =>
                      Navigator.pushNamed(context, '/weekendChallenge'),
                  googleFonts: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: sp(12),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
          ),

          VSpace(28),

          MyContainer(
            radius: 5,
            color: Color.fromRGBO(255, 255, 255, 1),
            border: Border.all(color: Color.fromRGBO(6, 84, 91, 1), width: 1),
            child: Padding(
              padding: EdgeInsets.only(
                right: w(16),
                left: w(14),
                top: h(18.63),
                bottom: h(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildChallengeWidget(text: 'Points today', point: 22),

                  Transform.rotate(
                    angle: 1.5708,
                    child: Container(
                      width: w(68),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 0.14),
                        border: BoxBorder.all(width: 1),
                      ),
                    ),
                  ),

                  _buildChallengeWidget(text: 'Blocked Apps', point: 4),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildStreakWidget({required String text, required int day}) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    TextWidget(
      text: text,
      googleFonts: GoogleFonts.roboto(
        fontWeight: FontWeight.w600,
        fontSize: sp(16),
        color: Color.fromRGBO(6, 84, 91, 1),
      ),
    ),

    VSpace(9),

    Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        TextWidget(
          text: day.toString(),
          googleFonts: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: sp(24),
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),

        TextWidget(
          text: 'Days',
          googleFonts: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: sp(14),
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ],
    ),
  ],
);

Widget _buildChallengeWidget({required String text, required int point}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: text,
          googleFonts: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: sp(16),
            color: Color.fromRGBO(6, 84, 91, 1),
          ),
        ),

        TextWidget(
          text: point.toString(),
          googleFonts: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: sp(24),
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ],
    );
