import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:fokusly_digital_wellbeing_app/bar_graph/bar_data.dart';

class MyBarChart extends StatelessWidget {
  final List statistics;

  const MyBarChart({super.key, required this.statistics});

  @override
  Widget build(BuildContext context) {
    BarData mybarData = BarData(
      sunStat: statistics[0],
      monStat: statistics[1],
      tueStat: statistics[2],
      wedStat: statistics[3],
      thuStat: statistics[4],
      friStat: statistics[5],
      satStat: statistics[6],
    );

    mybarData.intiailizeBarData();

    return BarChart(
      BarChartData(
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: getBottomTitles,
            ),
          ),
        ),

        maxY: 100,
        minY: 0,
        barGroups: mybarData.barData
            .map(
              (data) => BarChartGroupData(
                x: data.x,
                barRods: [
                  BarChartRodData(
                    toY: data.y,
                    width: w(24),
                    borderRadius: BorderRadius.circular(sr(8)),
                    color: data.y >= 100
                        ? Color(0xFF06545B)
                        : Color(0xFFD6FFDE),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  Widget text;
  switch (value.toInt()) {
    case 0:
      text = Text('S', style: style);
      break;
    case 1:
      text = Text('M', style: style);
      break;
    case 2:
      text = Text('T', style: style);
      break;
    case 3:
      text = Text('W', style: style);
      break;
    case 4:
      text = Text('T', style: style);
      break;
    case 5:
      text = Text('F', style: style);
      break;
    case 6:
      text = Text('S', style: style);
      break;
    default:
      text = Text('', style: style);
      break;
  }

  return SideTitleWidget(meta: meta, child: text);
}
