import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/focus_list_tile.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class FocusSessionPage4 extends StatelessWidget {
  FocusSessionPage4({super.key});

  final List _focus = [
    ['lib/assets/images/svg/bed.svg', 'Bed time'],
    ['lib/assets/images/svg/driving.svg', 'Driving'],
    ['lib/assets/images/svg/study.svg', 'Study'],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
              ),
            ),

            HSpace(63),

            TextWidget(
              text: 'Change Focus',
              fontWeight: FontWeight.w700,
              fontSize: sp(24),
            ),
          ],
        ),

        VSpace(65),

        ListView.builder(
          shrinkWrap: true,
          itemCount: _focus.length,
          itemBuilder: (context, index) {
            // VSpace(62);

            return FocusListTile(
              leading: SvgPicture.asset(
                _focus[index][0],
                width: w(24),
                fit: BoxFit.cover,
              ),

              contentPadding: EdgeInsets.only(left: w(5), bottom: h(30)),

              title: Padding(
                padding: EdgeInsets.only(left: w(16)),
                child: TextWidget(
                  text: _focus[index][1],
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: sp(16),
                ),
              ),

              trailing: SizedBox(),
            );
          },
        ),

        ListTile(
          contentPadding: EdgeInsets.all(0),

          leading: GestureDetector(
            onTap: () {}, // todo -> do something
            child: SvgPicture.asset(
              'lib/assets/images/svg/addFocus.svg',
              width: w(42),
              fit: BoxFit.cover,
            ),
          ),

          title: Padding(
            padding: EdgeInsets.only(left: w(6)),

            child: TextWidget(
              text: 'Customize',
              color: Color.fromRGBO(0, 0, 0, 1),
              fontWeight: FontWeight.w400,
              fontSize: sp(16),
            ),
          ),
        ),
      ],
    );
  }
}
