import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: sw(100),
        height: sh(100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(sr(20)),
          color: Color.fromRGBO(214, 255, 222, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w(46)),
              child: TextWidget(
                text: 'Welcome to \nFokusly',
                color: Color.fromRGBO(44, 152, 162, 1),
                fontWeight: FontWeight.w700,
                textAlign: TextAlign.center,
                fontSize: sp(32),
              ),
            ),

            VSpace(9),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: w(66)),
              child: TextWidget(
                text:
                    'Designed to help you reclaim your time, and live with intention',
                fontSize: sp(20),
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(6, 84, 91, 1),
                textAlign: TextAlign.center,
              ),
            ),

            VSpace(43),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: w(20)),
              child: Column(
                children: [
                  Image.asset(
                    'lib/assets/images/image_1.png',
                    width: w(335),
                    height: h(343),
                  ),

                  VSpace(40),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(
                        'lib/assets/images/svg/Group2.svg',
                        width: w(74),
                        height: h(12),
                      ),

                      HSpace(54),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: w(10),
                          vertical: h(10),
                        ),
                        child: MyButton(
                          width: w(77),
                          height: h(24),
                          color: Color.fromRGBO(44, 152, 162, 1),
                          radius: sr(5),
                          text: 'Next',
                          fontSize: sp(16),
                          fontWeight: FontWeight.w400,
                          onTap: () =>
                              Navigator.pushNamed(context, '/onboarding2'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
