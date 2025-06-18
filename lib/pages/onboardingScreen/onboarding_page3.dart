import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/onboarding_list_tile.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class OnboardingPage3 extends StatefulWidget {
  const OnboardingPage3({super.key});

  @override
  State<OnboardingPage3> createState() => _OnboardingPage3State();
}

class _OnboardingPage3State extends State<OnboardingPage3> {
  final List<List<dynamic>> goals = [
    ['Study Better', false],
    ['Reduce Social Media', false],
    ['Improve Sleep', false],
    ['Increase Productivity', false],
  ];

  void _toggleSwitch(bool? value, int index) {
    setState(() {
      goals[index][1] = !goals[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: sw(100),
        height: sh(100),
        decoration: BoxDecoration(
          color: Color.fromRGBO(214, 255, 222, 1),
          borderRadius: BorderRadius.circular(sr(20)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: h(34)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "What's your focus \ngoal?",
                    color: Color.fromRGBO(44, 152, 162, 1),
                    fontSize: sp(32),
                    fontWeight: FontWeight.w700,
                  ),

                  VSpace(12),

                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: goals.length,
                    itemBuilder: (context, index) {
                      return OnboardingListTile(
                        text: goals[index][0],
                        value: goals[index][1],
                        onChanged: (value) => _toggleSwitch(value, index),
                      );
                    },
                  ),

                  VSpace(9),
                ],
              ),
            ),

            Image.asset(
              'lib/assets/images/image_3.png',
              width: w(269),
              height: h(343),
            ),

            VSpace(10),

            MyButton(
              padding: EdgeInsets.symmetric(horizontal: w(10), vertical: h(10)),
              width: w(335),
              height: h(54),
              radius: sr(13),
              text: 'Get Started',
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                context,
                '/home',
                (route) => false,
              ),
              fontWeight: FontWeight.w700,
              fontSize: sp(16),
            ),
          ],
        ),
      ),
    );
  }
}
