import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:flutter/material.dart';

class PercentageCounterWidget extends StatelessWidget {
  final int height, percent, radius;
  final Color backgroundColor, progressColor;

  const PercentageCounterWidget({
    super.key,
    this.height = 8,
    this.percent = 10,
    this.radius = 20,
    this.backgroundColor = const Color.fromRGBO(3, 108, 118, 0.72),
    this.progressColor = const Color.fromRGBO(6, 84, 91, 1),
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate the width based on the available space
        double progressWidth = (constraints.maxWidth * (percent / 100)).clamp(
          0,
          constraints.maxWidth,
        );

        return Container(
          height: h(height.toDouble()),
          width: constraints.maxWidth,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(sr(radius.toDouble())),
          ),
          child: Stack(
            children: [
              Container(
                height: h(height.toDouble()),
                width: progressWidth,
                decoration: BoxDecoration(
                  color: progressColor,
                  borderRadius: BorderRadius.circular(sr(radius.toDouble())),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
