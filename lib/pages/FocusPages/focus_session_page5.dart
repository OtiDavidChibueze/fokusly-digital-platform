import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/focus_list_tile.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class FocusSessionPage5 extends StatelessWidget {
  const FocusSessionPage5({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          VSpace(24),

          SvgPicture.asset(
            'lib/assets/images/svg/great.svg',
            fit: BoxFit.cover,
            width: w(143),
          ),

          VSpace(21),

          TextWidget(
            text: 'Great Job !',
            fontWeight: FontWeight.w700,
            fontSize: sp(24),
            color: Color.fromRGBO(0, 0, 0, 1),
          ),

          VSpace(37),

          Divider(color: Color.fromRGBO(183, 181, 181, 0.3), thickness: 1),

          VSpace(39),

          FocusListTile(
            leading: SvgPicture.asset(
              'lib/assets/images/svg/clock.svg',
              width: w(18),
            ),

            title: TextWidget(
              text: 'Duration',
              fontWeight: FontWeight.w400,
              fontSize: sp(20),
              color: Color.fromRGBO(0, 0, 0, 1),
            ),

            trailing: TextWidget(
              text: '30 mins',
              fontWeight: FontWeight.w400,
              fontSize: sp(20),
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),

          VSpace(21),

          Divider(thickness: 1, color: Color.fromRGBO(183, 181, 181, 0.3)),

          VSpace(38),

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

          VSpace(33),

          Divider(thickness: 1, color: Color.fromRGBO(183, 181, 181, 0.3)),

          VSpace(17),

          FocusListTile(
            leading: SvgPicture.asset('lib/assets/images/svg/bed.svg'),

            title: TextWidget(
              text: 'Bed Time',
              fontWeight: FontWeight.w400,
              fontSize: sp(20),
              color: Color.fromRGBO(0, 0, 0, 1),
            ),

            trailing: SizedBox(),
          ),

          VSpace(33),

          Divider(thickness: 1, color: Color.fromRGBO(183, 181, 181, 0.3)),

          VSpace(59),

          GestureDetector(
            onTap: () => Navigator.pushNamed(context, './detoxPage1'),

            child: Container(
              width: w(172),
              padding: EdgeInsets.symmetric(horizontal: w(55), vertical: h(17)),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(sr(50)),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(6, 84, 91, 1),
                    Color.fromRGBO(13, 178, 193, 1),
                  ],
                  begin: Alignment.bottomLeft,
                ),
              ),
              child: Center(
                child: TextWidget(
                  text: 'Finish',
                  fontSize: sp(20),
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          VSpace(59),
        ],
      ),
    );
  }
}
