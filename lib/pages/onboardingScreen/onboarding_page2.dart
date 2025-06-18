import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

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
              padding: EdgeInsets.symmetric(horizontal: w(36)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: 'Start focus Session',
                    color: Color.fromRGBO(44, 152, 162, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: sp(32),
                  ),

                  VSpace(32),

                  Align(
                    alignment: Alignment.bottomLeft,
                    child: TextWidget(
                      text: 'AI-Based Time\n Suggestion',
                      color: Color.fromRGBO(6, 84, 91, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: sp(20),
                    ),
                  ),

                  VSpace(17),

                  Align(
                    alignment: Alignment.bottomLeft,
                    child: TextWidget(
                      text: 'Digital Detox &\n Gamification',
                      color: Color.fromRGBO(6, 84, 91, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: sp(20),
                    ),
                  ),

                  VSpace(6),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: w(20)),
              child: Column(
                children: [
                  Image.asset(
                    'lib/assets/images/image_2.png',
                    width: w(336),
                    height: h(363),
                  ),

                  VSpace(30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: w(10),
                          vertical: h(10),
                        ),
                        child: TextButton(
                          onPressed: () => Navigator.pushNamedAndRemoveUntil(
                            context,
                            '/home',
                            (route) => false,
                          ),
                          child: TextWidget(
                            text: 'Skip',
                            color: Color.fromRGBO(44, 152, 162, 1),
                            fontSize: sp(16),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),

                      SvgPicture.asset(
                        'lib/assets/images/svg/Group3.svg',
                        width: w(74),
                        height: h(12),
                      ),

                      MyButton(
                        width: w(77),
                        height: h(24),
                        color: Color.fromRGBO(44, 152, 162, 1),
                        radius: sr(5),
                        text: 'Next',
                        fontSize: sp(16),
                        fontWeight: FontWeight.w400,
                        onTap: () =>
                            Navigator.pushNamed(context, '/onboarding3'),
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
