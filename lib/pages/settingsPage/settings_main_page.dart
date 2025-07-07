import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/provider/bottom_nav_provider.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:provider/provider.dart';

class SettingsMainPage extends StatelessWidget {
  final void Function(int)? onNavigate;

  const SettingsMainPage({super.key, this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          VSpace(20),

          Row(
            spacing: 75,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: w(10),
                  vertical: h(10),
                ),
                child: GestureDetector(
                  onTap: () => context.read<BottomNavProvider>().setIndex(0),
                  child: SvgPicture.asset('lib/assets/images/svg/Arrow1.svg'),
                ),
              ),

              // HSpace(75),
              TextWidget(
                text: 'Settings',
                fontWeight: FontWeight.w700,
                fontSize: sp(24),
              ),
            ],
          ),

          VSpace(48),

          MyContainer(
            padding: EdgeInsets.only(
              top: h(13),
              bottom: h(30),
              left: w(17),
              right: w(24),
            ),
            width: sw(100),
            radius: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: 'Fokusly',
                  fontWeight: FontWeight.w700,
                  fontSize: sp(16),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),

                VSpace(6),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text:
                          "Stay Jiggle, Stay Focus..\nWe are here to help achieve that",
                      fontWeight: FontWeight.w400,
                      fontSize: sp(13),
                      color: Color.fromRGBO(0, 0, 0, 1),
                      textAlign: TextAlign.start,
                      lineHeight: 2,
                    ),

                    SvgPicture.asset(
                      'lib/assets/images/svg/small check.svg',
                      width: w(48),
                      height: h(48),
                    ),
                  ],
                ),
              ],
            ),
          ),

          VSpace(13),

          MyContainer(
            radius: 5,
            width: sw(100),
            padding: EdgeInsets.only(
              top: h(22),
              bottom: h(37),
              right: w(17),
              left: w(17),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: 'Account Settings',
                  fontWeight: FontWeight.w400,
                  fontSize: sp(16),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),

                VSpace(16),

                MyButton(
                  alignment: Alignment.centerLeft,
                  radius: 50,
                  text: 'Update Profile',
                  onTap: () => Navigator.pushNamed(context, '/updateProfile'),
                  padding: EdgeInsets.only(
                    top: h(10),
                    bottom: h(10),
                    right: w(10),
                    left: w(20),
                  ),
                  fontWeight: FontWeight.w400,
                  fontSize: sp(15),
                  textColor: Color.fromRGBO(242, 248, 252, 1),
                ),
              ],
            ),
          ),

          VSpace(13),

          MyContainer(
            radius: 5,
            width: sw(100),
            padding: EdgeInsets.only(
              top: h(22),
              bottom: h(29),
              left: w(17),
              right: w(17),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: 'Actions',
                  fontWeight: FontWeight.w400,
                  fontSize: sp(16),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),

                VSpace(14),

                Container(
                  margin: EdgeInsets.only(bottom: h(11)),
                  child: MyButton(
                    alignment: Alignment.centerLeft,
                    radius: 50,
                    text: 'Home',
                    onTap: () {},
                    fontWeight: FontWeight.w400,
                    fontSize: sp(15),
                    padding: EdgeInsets.only(
                      top: h(10),
                      bottom: h(10),
                      right: w(10),
                      left: w(20),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: h(11)),
                  child: MyButton(
                    alignment: Alignment.centerLeft,
                    radius: 50,
                    text: 'Focus mode',
                    onTap: () {},
                    fontWeight: FontWeight.w400,
                    fontSize: sp(15),
                    padding: EdgeInsets.only(
                      top: h(10),
                      bottom: h(10),
                      right: w(10),
                      left: w(20),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: h(11)),
                  child: MyButton(
                    alignment: Alignment.centerLeft,
                    radius: 50,
                    text: 'Focus Session',
                    onTap: () {},
                    fontWeight: FontWeight.w400,
                    fontSize: sp(15),
                    padding: EdgeInsets.only(
                      top: h(10),
                      bottom: h(10),
                      right: w(10),
                      left: w(20),
                    ),
                  ),
                ),

                MyButton(
                  alignment: Alignment.centerLeft,
                  radius: 50,
                  text: 'History',
                  onTap: () {},
                  fontWeight: FontWeight.w400,
                  fontSize: sp(15),
                  padding: EdgeInsets.only(
                    top: h(10),
                    bottom: h(10),
                    right: w(10),
                    left: w(20),
                  ),
                ),
              ],
            ),
          ),

          VSpace(11),

          MyContainer(
            width: sw(100),
            color: Color.fromRGBO(255, 0, 0, 0.15),
            radius: 5,
            padding: EdgeInsets.only(
              top: h(21),
              bottom: h(20),
              right: w(18),
              left: w(18),
            ),
            child: MyButton(
              fontWeight: FontWeight.w400,
              fontSize: sp(15),
              border: Border.all(
                color: Color.fromRGBO(6, 84, 91, 1),
                width: 0.5,
              ),
              color: Colors.transparent,
              alignment: Alignment.centerLeft,
              radius: 50,
              text: 'Deactivate Account',
              onTap: () {},
              padding: EdgeInsets.only(
                top: h(10),
                bottom: h(10),
                right: w(10),
                left: w(20),
              ),
            ),
          ),

          VSpace(56),
        ],
      ),
    );
  }
}
