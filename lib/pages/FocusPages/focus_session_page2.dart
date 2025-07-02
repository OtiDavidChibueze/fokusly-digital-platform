import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class FocusSessionPage2 extends StatelessWidget {
  const FocusSessionPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VSpace(23),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(
                'lib/assets/images/svg/Arrow1.svg',
                fit: BoxFit.cover,
                width: w(22),
              ),
            ),

            HSpace(78),

            TextWidget(
              text: 'Reschedule',
              color: Color.fromRGBO(6, 84, 91, 1),
              fontSize: sp(24),
              fontWeight: FontWeight.w700,
            ),
          ],
        ),

        VSpace(80),
        MyContainer(
          padding: EdgeInsets.symmetric(horizontal: w(15)),
          color: Color.fromRGBO(214, 255, 222, 1),
          radius: 5,
          width: sw(100),
          child: Column(
            children: [
              VSpace(34),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Your driving schedule',
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: sp(14),
                  ),

                  GestureDetector(
                    onTap: () {}, //todo -> Edit schedule time
                    child: SvgPicture.asset(
                      'lib/assets/images/svg/edit.svg',
                      fit: BoxFit.cover,
                      width: w(18),
                    ),
                  ),
                ],
              ),

              VSpace(13),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: w(9),
                    vertical: h(7),
                  ),
                  child: TextWidget(
                    text: '10:15 PM - 11: 15 PM',
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: sp(14),
                  ),
                ),
              ),

              VSpace(34),
            ],
          ),
        ),

        Spacer(),

        MyButton(
          fontWeight: FontWeight.w700,
          radius: 50,
          text: 'Save Changes',
          onTap: () => Navigator.pushNamed(context, '/focusSessionPage3'),
          width: w(298),
          padding: EdgeInsets.only(
            left: w(20),
            top: h(10),
            right: w(10),
            bottom: h(10),
          ),
        ),

        VSpace(136),
      ],
    );
  }
}
