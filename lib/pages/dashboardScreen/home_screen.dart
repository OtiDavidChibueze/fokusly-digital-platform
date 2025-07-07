import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/bar_graph/bar_graph.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/focus_list_tile.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/statistics_widget.dart';
import 'package:fokusly_digital_wellbeing_app/provider/bottom_nav_provider.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  //* user weekly statistics
  final List<double> weeklyStatistics = [
    100.0,
    54.1,
    32.3,
    22.9,
    44.0,
    25.0,
    88.0,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VSpace(25),

        Row(
          spacing: 8,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(sr(50)),
              child: Image.asset(
                'lib/assets/images/ninja.png',
                width: w(44),
                height: h(44),
                fit: BoxFit.cover,
              ),
            ),

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
            MyButton(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: w(23),
                vertical: h(13),
              ),
              radius: 13,
              text: 'Start Focus Session',
              fontSize: sp(14),
              textColor: Color.fromRGBO(255, 255, 255, 1),

              onTap: () => context.read<BottomNavProvider>().setIndex(1),
            ),

            MyButton(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: w(23),
                vertical: h(13),
              ),
              radius: 13,
              text: 'Start Challenge',
              fontWeight: FontWeight.w400,
              fontSize: sp(14),
              color: Colors.transparent,
              onTap: () {
                context.read<BottomNavProvider>().triggerChallengeStart();
                context.read<BottomNavProvider>().setIndex(
                  1,
                ); // Go to Focus tab,
              },
              border: Border.all(color: Color.fromRGBO(6, 84, 91, 1)),
              textColor: Colors.black,
            ),
          ],
        ),

        VSpace(29),

        Expanded(
          child: ListView(
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
                    VSpace(25),

                    SvgPicture.asset(
                      'lib/assets/images/svg/quote.svg',
                      fit: BoxFit.cover,
                      width: w(37),
                      height: h(36),
                    ),

                    VSpace(8),

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

              VSpace(10),

              StatisticsWidget(child: MyBarChart(statistics: weeklyStatistics)),

              VSpace(18),

              MyContainer(
                radius: 13,
                padding: EdgeInsets.only(
                  top: h(10),
                  right: w(65),
                  bottom: h(19),
                  left: w(65),
                ),
                child: Column(
                  children: [
                    TextWidget(
                      text: 'Blocked Apps',
                      fontWeight: FontWeight.w400,
                      fontSize: sp(15),
                    ),

                    VSpace(17),

                    SvgPicture.asset(
                      'lib/assets/images/svg/Frame34.svg',
                      fit: BoxFit.cover,
                      width: w(201),
                      height: h(30),
                    ),
                  ],
                ),
              ),

              VSpace(10),
            ],
          ),
        ),
      ],
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
