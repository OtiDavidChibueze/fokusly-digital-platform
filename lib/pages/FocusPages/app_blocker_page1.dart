import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/components/utils/focus_list_tile.dart';

import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBlockerPage1 extends StatelessWidget {
  AppBlockerPage1({super.key});

  final List<dynamic> _apps = [
    ['Instagram', true],
    ['TikTok', true],
    ['Twitter', true],
    ['Youtube', false],
    ['Facebook', false],
  ];

  final List<String> icons = [
    'lib/assets/images/svg/instagram.svg',
    'lib/assets/images/svg/tiktok.svg',
    'lib/assets/images/svg/twitter.svg',
    'lib/assets/images/svg/youtube.svg',
    'lib/assets/images/svg/facebook.svg',
  ];

  @override
  Widget build(BuildContext context) {
    final int blockedAppsCount = _apps.where((app) => app[1] == true).length;

    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          VSpace(29),
          TextWidget(
            text: 'Select the apps you’d like to block during driving',
            googleFonts: GoogleFonts.roboto(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontSize: sp(15),
              fontWeight: FontWeight.w400,
            ),
          ),

          VSpace(25),

          // ListView.builder(
          //   shrinkWrap: true,
          //   itemCount: _apps.length,
          //   itemBuilder: (context, index) => _buildAppBlockerTile(
          //     icon: icons[index],
          //     title: _apps[index][0],
          //     value: _apps[index][1],
          //     onChanged: (p0) {},
          //     onTap: () {},
          //   ),
          // ),
          ...List.generate(
            _apps.length,
            (index) => _buildAppBlockerTile(
              icon: icons[index],
              title: _apps[index][0],
              value: _apps[index][1],
              onChanged: (p0) {},
              onTap: () {},
            ),
          ),

          VSpace(19),
          MyContainer(
            width: sw(100),
            height: h(46),
            child: Padding(
              padding: EdgeInsetsGeometry.only(left: w(26)),
              child: Center(
                child: TextWidget(
                  text: '$blockedAppsCount apps selected',
                  googleFonts: GoogleFonts.roboto(
                    fontSize: sp(14),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),

          VSpace(27),
          MyButton(
            width: w(298),
            fontSize: sp(15),
            fontWeight: FontWeight.w700,
            padding: EdgeInsets.only(
              left: w(20),
              top: h(10),
              right: w(10),
              bottom: h(10),
            ),
            radius: 50,
            text: 'Continue',
            onTap: () => Navigator.pushNamed(context, '/focusSessionPage5'),
          ),

          VSpace(36),
        ],
      ),
    );
  }
}

Widget _buildAppBlockerTile({
  required String icon,
  required String title,
  required bool value,
  required void Function(bool) onChanged,
  required void Function() onTap,
}) {
  return MyContainer(
    margin: EdgeInsets.only(bottom: h(10)),
    boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.06), blurRadius: 2)],
    padding: EdgeInsets.symmetric(horizontal: w(18), vertical: h(20)),
    child: FocusListTile(
      leading: SvgPicture.asset(
        icon,
        fit: BoxFit.cover,
        width: w(24),
        height: h(24),
      ),

      title: TextWidget(
        text: title,
        googleFonts: GoogleFonts.roboto(
          fontSize: sp(15),
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      ),

      value: value,

      onChanged: onChanged,

      onTap: onTap,
    ),
  );
}
