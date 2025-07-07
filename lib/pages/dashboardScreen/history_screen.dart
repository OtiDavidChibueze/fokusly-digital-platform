import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/bar_graph/bar_graph.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/focus_list_tile.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/statistics_widget.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({super.key});

  // user today statistics
  final List<double> todayStatistics = [
    50.0,
    10.1,
    99.3,
    33.9,
    5.0,
    100.0,
    15.0,
  ];

  // user weekly statistics
  final List<double> weeklyStatistics = [
    100.0,
    54.1,
    32.3,
    22.9,
    44.0,
    25.0,
    88.0,
  ];

  // user monthly statistics
  final List<double> monthlyStatistic = [
    10.0,
    20.1,
    32.3,
    40.9,
    50.0,
    60.0,
    70.0,
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          VSpace(13),

          TextWidget(
            text: 'History',
            fontWeight: FontWeight.w700,
            fontSize: sp(24),
          ),

          VSpace(36),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: TextWidget(
                      text: 'Today',
                      fontWeight: FontWeight.w700,
                      fontSize: sp(16),
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),

                  Visibility(
                    visible: true,
                    child: MyContainer(
                      width: w(41),
                      height: h(4),
                      radius: 3,
                      color: Color.fromRGBO(6, 84, 91, 1),
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: TextWidget(
                      text: 'Week',
                      fontWeight: FontWeight.w700,
                      fontSize: sp(16),
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),

                  Visibility(
                    visible: false,
                    child: MyContainer(
                      width: w(41),
                      height: h(4),
                      radius: 3,
                      color: Color.fromRGBO(6, 84, 91, 1),
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: TextWidget(
                      text: 'Month',
                      fontWeight: FontWeight.w700,
                      fontSize: sp(16),
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),

                  Visibility(
                    visible: false,
                    child: MyContainer(
                      width: w(41),
                      height: h(4),
                      radius: 3,
                      color: Color.fromRGBO(6, 84, 91, 1),
                    ),
                  ),
                ],
              ),
            ],
          ),

          VSpace(16),

          StatisticsWidget(child: MyBarChart(statistics: todayStatistics)),

          VSpace(14),

          Align(
            alignment: Alignment.centerLeft,
            child: TextWidget(
              text: 'Recent Sessions',
              fontWeight: FontWeight.w700,
              fontSize: sp(16),
            ),
          ),

          VSpace(10),

          _buildRecentSessionTile(
            icon: 'lib/assets/images/svg/study.svg',
            title: 'Studying',
            subTitle: 'Duration',
            hour: '1hr 15m',
            date: 'Apr 12, 3:00PM',
          ),

          _buildRecentSessionTile(
            icon: 'lib/assets/images/svg/driving.svg',
            title: 'Driving',
            subTitle: 'Duration',
            hour: '3hr 15m',
            date: 'Apr 12, 3:00PM',
          ),

          _buildRecentSessionTile(
            icon: 'lib/assets/images/svg/bed.svg',
            title: 'Sleeping',
            subTitle: 'Duration',
            hour: '4hr 15m',
            date: 'Apr 12, 3:00PM',
          ),

          VSpace(7),
        ],
      ),
    );
  }
}

Widget _buildRecentSessionTile({
  required String icon,
  required String title,
  required String subTitle,
  required String hour,
  required String date,
}) => MyContainer(
  margin: EdgeInsets.only(bottom: h(28)),
  width: sw(100),
  boxShadow: [BoxShadow(blurRadius: 2, color: Color.fromRGBO(0, 0, 0, 0.06))],
  padding: EdgeInsets.only(
    top: h(13),
    bottom: h(13),
    left: w(26),
    right: w(20),
  ),
  child: FocusListTile(
    leading: SvgPicture.asset(
      icon,
      width: w(25),
      height: h(24),
      fit: BoxFit.cover,
    ),

    title: Padding(
      padding: EdgeInsets.only(left: w(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: title,
            fontWeight: FontWeight.w700,
            fontSize: sp(14),
            color: Color.fromRGBO(6, 84, 91, 1),
          ),

          TextWidget(
            text: subTitle,
            fontWeight: FontWeight.w400,
            fontSize: sp(14),
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ],
      ),
    ),

    trailing: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: hour,
          googleFonts: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            fontSize: sp(14),
            color: Color.fromRGBO(6, 84, 91, 1),
          ),
        ),

        TextWidget(
          text: date,
          googleFonts: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: sp(14),
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ],
    ),
  ),
);
