import 'package:fokusly_digital_wellbeing_app/bar_graph/individual_bar.dart';

class BarData {
  final double sunStat;
  final double monStat;
  final double tueStat;
  final double wedStat;
  final double thuStat;
  final double friStat;
  final double satStat;

  BarData({
    required this.sunStat,
    required this.monStat,
    required this.tueStat,
    required this.wedStat,
    required this.thuStat,
    required this.friStat,
    required this.satStat,
  });

  List<IndividualBar> barData = [];

  void intiailizeBarData() {
    barData = [
      IndividualBar(x: 0, y: sunStat),
      IndividualBar(x: 1, y: monStat),
      IndividualBar(x: 2, y: tueStat),
      IndividualBar(x: 3, y: wedStat),
      IndividualBar(x: 4, y: thuStat),
      IndividualBar(x: 5, y: friStat),
      IndividualBar(x: 6, y: satStat),
    ];
  }
}
