import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class StatisticsWidget extends StatelessWidget {
  final Widget child;

  const StatisticsWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      padding: EdgeInsets.symmetric(horizontal: w(10), vertical: h(10)),
      child: Column(
        children: [
          TextWidget(
            text: 'Statistics',
            fontWeight: FontWeight.w700,
            fontSize: sp(18),
          ),

          //* VSpace(5),
          SizedBox(
            height: h(147),
            width: sw(100),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: w(10), vertical: h(10)),
              child: child,
            ),
          ),

          VSpace(19),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                text: 'Average',
                fontWeight: FontWeight.w400,
                fontSize: sp(14),
                color: Colors.black,
              ),

              HSpace(7),

              TextWidget(
                text: '8h 30m',
                fontWeight: FontWeight.w700,
                fontSize: sp(14),
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
