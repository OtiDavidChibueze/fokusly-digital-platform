import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: w(22)),
      child: Column(
        children: [
          VSpace(25),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(sr(100)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(sr(50)),
                  child: Image.asset(
                    'lib/assets/images/image_3.png',
                    width: w(44),
                    height: h(44),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              HSpace(8),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: 'Good morning, David👋',
                    googleFonts: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: sp(24),
                    ),
                  ),

                  // VSpace(5),
                  TextWidget(
                    text: 'Ready to start focusing?',
                    googleFonts: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 0.62),
                      fontSize: sp(14),
                    ),
                  ),
                ],
              ),
            ],
          ),

          VSpace(36),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              //! padding error from ui left and right 29
              MyButton(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: w(23),
                  vertical: h(13),
                ),
                radius: 13,
                text: 'Start Focus Session',
                fontSize: 14,
                textColor: Color.fromRGBO(255, 255, 255, 1),

                onTap: () {}, //? Navigate to Focus mode hub
              ),

              //! padding error from ui left and right 49
              MyButton(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: w(23),
                  vertical: h(13),
                ),
                radius: 13,
                text: 'Start Challenge',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.transparent,
                onTap: () {}, //? Naviagte to Detox challenge,
                border: Border.all(color: Color.fromRGBO(6, 84, 91, 1)),
                textColor: Colors.black,
              ),
            ],
          ),

          VSpace(29),

          ListView(
            shrinkWrap: true,
            children: [
              MyContainer(
                padding: EdgeInsetsGeometry.symmetric(vertical: h(10)),
                child: Column(
                  children: [
                    TextWidget(
                      text: "Today's Focus",
                      fontWeight: FontWeight.w700,
                      fontSize: sp(18),
                    ),

                    _buildFocusTile(
                      focus: 'Stay odd social  media',
                      hours: '5 hrs',
                    ),
                    _buildFocusTile(focus: 'Write a Proposal', hours: '5 hrs'),
                  ],
                ),
              ),

              VSpace(8),

              MyContainer(
                padding: EdgeInsets.only(top: h(10), bottom: h(29)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // TODO -> add double quote design
                    TextWidget(
                      text: 'Mindful Reminder',
                      googleFonts: GoogleFonts.roboto(
                        fontSize: sp(18),
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF06545B),
                      ),
                    ),

                    // VSpace(8),
                    TextWidget(
                      text: 'Progress is built one session at a time',
                      color: Color.fromRGBO(0, 0, 0, 0.62),
                      fontSize: sp(16),
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildFocusTile({required focus, required hours}) {
  return Column(
    children: [
      Divider(color: Color.fromRGBO(0, 0, 0, 0.04), thickness: 1),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: w(34.5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                TextWidget(
                  text: "•   ",
                  fontSize: sp(16),
                  fontWeight: FontWeight.w400,
                ),

                TextWidget(
                  text: focus,
                  fontSize: sp(16),
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),

            TextWidget(
              text: '($hours)',
              fontSize: sp(16),
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    ],
  );
}
