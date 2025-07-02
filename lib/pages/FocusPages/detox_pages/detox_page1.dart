import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class DetoxPage1 extends StatelessWidget {
  const DetoxPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'lib/assets/images/crown.png',
            fit: BoxFit.cover,
            width: w(263),
            height: h(285.739),
          ),

          TextWidget(
            text: 'Break your phone habit',
            fontWeight: FontWeight.w700,
            fontSize: sp(24),
          ),

          VSpace(13),

          TextWidget(
            text: 'Stay off distracting apps and take a beak from your phone',
            fontSize: sp(14),
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(0, 0, 0, 1),
            textAlign: TextAlign.center,
          ),

          VSpace(27),

          MyButton(
            padding: EdgeInsets.symmetric(vertical: h(10)),
            radius: 50,
            text: 'Start challenge',
            onTap: () => Navigator.pushNamed(context, '/appBlockerPage2'),
            width: w(298),
            fontSize: w(12),
            fontWeight: FontWeight.w400,
          ),

          VSpace(34),

          Divider(color: Color.fromRGBO(176, 172, 172, 0.28), thickness: 1),

          VSpace(16),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: 'Duration',
                fontWeight: FontWeight.w700,
                fontSize: sp(24),
              ),
              VSpace(42),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildDuration(
                    duration: '1 day',
                    isActive: true,
                    onTap: () {},
                  ),
                  _buildDuration(
                    duration: '2 day',
                    isActive: false,
                    onTap: () {},
                  ),
                  _buildDuration(
                    duration: '1 day',
                    isActive: false,
                    onTap: () {},
                  ),
                ],
              ),

              VSpace(38),

              Divider(color: Color.fromRGBO(176, 172, 172, 0.28), thickness: 1),

              VSpace(44),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildDuration({
  required String duration,
  required bool isActive,
  required void Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap, // todo -> do something
    child: MyContainer(
      padding: EdgeInsets.symmetric(horizontal: w(32), vertical: h(7)),
      radius: 18,
      border: isActive
          ? null
          : Border.all(color: Color.fromRGBO(6, 84, 91, 1), width: w(1)),
      width: w(103),
      color: isActive ? Color.fromRGBO(6, 84, 91, 1) : Colors.transparent,
      child: Center(
        child: TextWidget(
          text: duration,
          fontWeight: FontWeight.w400,
          fontSize: sp(16),
          color: isActive ? Colors.white : Color.fromRGBO(6, 84, 91, 1),
        ),
      ),
    ),
  );
}
