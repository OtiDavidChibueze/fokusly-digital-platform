import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/focus_list_tile.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/focus_timer_widget.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class FocusSessionPage3 extends StatelessWidget {
  final int? blockedAppsCount;

  const FocusSessionPage3({super.key, this.blockedAppsCount});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          VSpace(23),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  'lib/assets/images/svg/Arrow1.svg',
                  fit: BoxFit.cover,
                ),
              ),

              TextWidget(
                text: 'Start focus session',
                fontWeight: FontWeight.w700,
                fontSize: sp(24),
              ),

              GestureDetector(
                onTap: () {}, // todo -> add place to navigate

                child: SvgPicture.asset(
                  'lib/assets/images/svg/clock.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),

          VSpace(53),

          FocusTimerWidget(
            minute: "29",
            seconds: "59",
            secondColor: const Color.fromARGB(255, 212, 53, 42),
            onTap: () => Navigator.pushNamed(context, '/focusSessionPage5'),
            btnColor: Color.fromRGBO(6, 84, 91, 0.7),
          ), // todo -> navigate to end session page

          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Duration',
                    fontWeight: FontWeight.w400,
                    fontSize: sp(20),
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),

                  TextWidget(
                    text: '30 mins',
                    fontWeight: FontWeight.w400,
                    fontSize: sp(20),
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ],
              ),

              VSpace(21),

              Divider(thickness: 1, color: Color.fromRGBO(183, 181, 181, 0.3)),

              VSpace(22),

              FocusListTile(
                leading: SvgPicture.asset(
                  'lib/assets/images/svg/block.svg',
                  fit: BoxFit.cover,
                ),

                title: TextWidget(
                  text: 'Blocked Apps',
                  fontWeight: FontWeight.w400,
                  fontSize: sp(20),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),

                trailing: TextWidget(
                  text: '4 selected',
                  fontWeight: FontWeight.w400,
                  fontSize: sp(20),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),

              VSpace(9),

              Divider(thickness: 1, color: Color.fromRGBO(183, 181, 181, 0.3)),

              VSpace(8),

              // VSpace(10),
              FocusListTile(
                leading: SvgPicture.asset(
                  'lib/assets/images/svg/speaker.svg',
                  fit: BoxFit.cover,
                ),

                title: TextWidget(
                  text: 'Enable sound',
                  fontWeight: FontWeight.w400,
                  fontSize: sp(20),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),

                value: true,

                onChanged: (p0) {},

                onTap: () {},
              ),

              // VSpace(22),
              VSpace(57),

              // Divider(thickness: 1, color: Color.fromRGBO(183, 181, 181, 0.3)),

              // VSpace(31),
            ],
          ),
        ],
      ),
    );
  }
}
