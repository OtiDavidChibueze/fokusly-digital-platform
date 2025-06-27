import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/focus_list_tile.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/focus_timer_widget.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class FocusSessionPage1 extends StatelessWidget {
  final int? blockedAppsCount;

  const FocusSessionPage1({super.key, this.blockedAppsCount});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          VSpace(22),

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

          VSpace(30),

          FocusTimerWidget(timer: '30:00', onTap: () {}),

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

              VSpace(18),

              FocusListTile(
                contentPadding: EdgeInsets.all(0),

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

              VSpace(13),

              Divider(thickness: 1, color: Color.fromRGBO(183, 181, 181, 0.3)),

              // VSpace(10),
              FocusListTile(
                contentPadding: EdgeInsets.all(0),

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
              VSpace(12),

              Divider(thickness: 1, color: Color.fromRGBO(183, 181, 181, 0.3)),

              // VSpace(20),
              VSpace(10),

              FocusListTile(
                contentPadding: EdgeInsets.all(0),

                leading: TextWidget(
                  text: 'Change Focus',
                  fontWeight: FontWeight.w400,
                  fontSize: sp(20),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),

                trailing: Padding(
                  padding: EdgeInsets.only(right: w(20)),
                  child: GestureDetector(
                    onTap: () {}, // todo -> add place to navigate

                    child: SvgPicture.asset(
                      'lib/assets/images/svg/arrow2.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                value: true,

                onChanged: (p0) {},

                onTap: () {},
              ),

              // VSpace(21),
              VSpace(10),

              Divider(thickness: 1, color: Color.fromRGBO(183, 181, 181, 0.3)),

              VSpace(31),
            ],
          ),
        ],
      ),
    );
  }
}
