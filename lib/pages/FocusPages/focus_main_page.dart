import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class FocusMainPage extends StatelessWidget {
  final void Function(int)? onNavigate;

  const FocusMainPage({super.key, this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // VSpace(23),
        Row(
          spacing: 56,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w(10), vertical: h(10)),
              child: GestureDetector(
                onTap: () => onNavigate?.call(0),
                child: SvgPicture.asset('lib/assets/images/svg/Arrow1.svg'),
              ),
            ),

            // HSpace(56),
            TextWidget(
              text: 'Focus Mode',
              fontWeight: FontWeight.w700,
              fontSize: sp(24),
            ),
          ],
        ),

        // VSpace(45),
        MyContainer(
          width: sw(100),
          padding: EdgeInsets.symmetric(horizontal: w(9)),
          radius: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              VSpace(8),

              TextWidget(
                text: 'Sections',
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: sp(16),
              ),

              VSpace(14),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,

                children: [
                  _buildFocusItem(
                    icon: 'lib/assets/images/svg/bed.svg',
                    title: 'Bed Time',
                    onTap: () => Navigator.pushNamed(context, '/detoxPage2'),
                  ),

                  _buildFocusItem(
                    icon: 'lib/assets/images/svg/driving.svg',
                    title: 'Driving',
                    onTap: () => Navigator.pushNamed(context, '/modeScreen2'),
                  ),

                  _buildFocusItem(
                    icon: 'lib/assets/images/svg/study.svg',
                    title: 'Study',
                    onTap: () {},
                  ),

                  GestureDetector(
                    onTap: () {}, //? create new
                    child: SvgPicture.asset(
                      'lib/assets/images/svg/addFocus.svg',
                      width: w(48),
                      height: h(48),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // VSpace(20),
        MyContainer(
          width: sw(100),
          radius: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VSpace(6),

              Padding(
                padding: EdgeInsetsGeometry.only(left: w(10)),
                child: TextWidget(
                  text: 'Tip for the day',
                  color: Colors.black,
                  fontSize: sp(16),
                  fontWeight: FontWeight.w700,
                ),
              ),

              VSpace(6),

              Padding(
                padding: EdgeInsetsGeometry.only(left: w(10)),
                child: TextWidget(
                  text: 'A step at a moment  could  make a great change',
                  color: Colors.black,
                  fontSize: sp(13),
                  fontWeight: FontWeight.w400,
                ),
              ),

              VSpace(12),
            ],
          ),
        ),

        // VSpace(20),
        MyContainer(
          width: sw(100),
          radius: 5,
          image: DecorationImage(
            image: AssetImage('lib/assets/images/focusImg.png'),
            fit: BoxFit.cover,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: w(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VSpace(6),

                TextWidget(
                  text: 'Discovery',
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: sp(16),
                ),

                VSpace(10),

                TextWidget(
                  text:
                      'Explore, search and find out the \npowers and potentials that lies within \nyou  ',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: sp(13),
                ),

                VSpace(19),
              ],
            ),
          ),
        ),

        // VSpace(20),
        MyContainer(
          radius: 5,
          width: sw(100),
          child: Padding(
            padding: EdgeInsetsGeometry.only(left: w(10), right: w(27)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VSpace(7),

                TextWidget(
                  text: "Today's Progress",
                  fontWeight: FontWeight.w700,
                  fontSize: sp(16),
                  color: Colors.black,
                ),

                VSpace(9),

                _buildProgressTile(
                  progressTitle: 'Write  a propoasal',
                  progressView: 'lib/assets/images/svg/progress1.svg',
                ),

                Divider(
                  color: Color.fromRGBO(238, 235, 235, 0.46),
                  thickness: 1,
                ),

                _buildProgressTile(
                  progressTitle: 'Set my UI portfolio',
                  progressView: 'lib/assets/images/svg/progress2.svg',
                ),

                Divider(
                  color: Color.fromRGBO(238, 235, 235, 0.46),
                  thickness: 1,
                ),

                _buildProgressTile(
                  progressTitle: 'Read Two chapters of a book',
                  progressView: 'lib/assets/images/svg/progress3.svg',
                ),

                VSpace(5),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget _buildFocusItem({icon, title, onTap}) {
  return Column(
    children: [
      GestureDetector(
        onTap: onTap,
        child: SvgPicture.asset(
          icon,
          width: w(24),
          height: h(24),
          fit: BoxFit.cover,
        ),
      ),

      VSpace(5),

      TextWidget(
        text: title,
        fontWeight: FontWeight.w300,
        fontSize: sp(12),
        color: Colors.black,
      ),

      VSpace(27),
    ],
  );
}

Widget _buildProgressTile({
  required String progressTitle,
  required String progressView,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TextWidget(
        text: progressTitle,
        fontWeight: FontWeight.w400,
        fontSize: sp(13),
        color: Colors.black,
      ),

      SvgPicture.asset(
        progressView,
        width: w(15),
        height: h(15),
        fit: BoxFit.cover,
      ),
    ],
  );
}
