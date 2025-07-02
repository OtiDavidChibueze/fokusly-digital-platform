import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/focus_list_tile.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class AppBlockerPage2 extends StatelessWidget {
  AppBlockerPage2({super.key});

  final List _apps = [
    ['lib/assets/images/svg/instagram.svg', 'Instagram', true],
    ['lib/assets/images/svg/tiktok.svg', 'TikTok', true],
    ['lib/assets/images/svg/twitter.svg', 'Twitter', true],
    ['lib/assets/images/svg/youtube.svg', 'Youtube', false],
    ['lib/assets/images/svg/facebook.svg', 'Facebook', false],
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          VSpace(36),

          TextWidget(
            text: 'Select apps to block',
            fontWeight: FontWeight.w700,
            fontSize: sp(24),
          ),

          VSpace(12),

          TextWidget(
            text:
                'Choose apps you find distracting. These apps will \nbe temporarily blocked during the detox challenge.',
            fontSize: sp(14),
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),

          VSpace(34),

          ...List.generate(
            _apps.length,
            (index) => _buildAppBlockerTile(
              icon: _apps[index][0],
              title: _apps[index][1],
              selected: _apps[index][2],
              onChanged: (p0) {},
            ),
          ),

          Divider(color: Color.fromRGBO(0, 0, 0, 0.04), thickness: 1),

          VSpace(74),

          MyButton(
            padding: EdgeInsets.symmetric(vertical: h(10)),
            radius: 50,
            text: 'Confirm',
            onTap: () => Navigator.pushNamed(context, '/timerPage'),
            width: w(298),
            fontWeight: FontWeight.w400,
            fontSize: sp(12),
            color: Color.fromRGBO(6, 84, 91, 1),
          ),

          VSpace(82),
        ],
      ),
    );
  }
}

Widget _buildAppBlockerTile({
  required String icon,
  required String title,
  required bool selected,
  required Function(bool?)? onChanged,
}) => Column(
  children: [
    Divider(color: Color.fromRGBO(0, 0, 0, 0.04), thickness: 1),

    FocusListTile(
      leading: SvgPicture.asset(icon, fit: BoxFit.cover, width: w(24)),

      title: Padding(
        padding: EdgeInsets.only(left: w(10)),
        child: TextWidget(
          text: title,
          fontWeight: FontWeight.w700,
          fontSize: sp(16),
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      ),

      trailing: Transform.scale(
        scaleX: 1.3,
        scaleY: 1.3,
        child: Checkbox(
          value: selected,
          onChanged: onChanged,
          activeColor: Color.fromRGBO(6, 84, 91, 1),
          side: BorderSide(color: Color.fromRGBO(6, 84, 91, 1), width: w(1)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(sr(50)),
          ),
        ),
      ),
    ),
  ],
);
