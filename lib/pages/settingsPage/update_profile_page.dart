import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text_field.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VSpace(24),

        Row(
          spacing: 52,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w(10), vertical: h(10)),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/settingsScreen'),
                child: SvgPicture.asset('lib/assets/images/svg/Arrow1.svg'),
              ),
            ),

            // HSpace(75),
            TextWidget(
              text: 'Update Profile',
              fontWeight: FontWeight.w700,
              fontSize: sp(24),
            ),
          ],
        ),

        VSpace(47),

        MyContainer(
          radius: 5,
          width: sw(100),
          padding: EdgeInsets.only(
            top: h(15),
            right: w(18),
            left: w(18),
            bottom: h(43),
          ),
          child: Column(
            children: [
              // todo -> textfield 1
              MyTextField(
                radius: 50,
                hintText: 'David',
                textInputType: TextInputType.text,
                padding: EdgeInsets.only(
                  top: h(10),
                  bottom: h(10),
                  left: w(20),
                  right: w(10),
                ),
                enabled: false,
                hintStyle: TextStyle(
                  fontSize: sp(13),
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(6, 84, 91, 1),
                ),
                endActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (p0) {},
                      backgroundColor: Color.fromRGBO(214, 255, 222, 1),
                      label: 'Change',
                      borderRadius: BorderRadius.circular(10),
                      foregroundColor: Color.fromRGBO(6, 84, 91, 1),
                    ),
                  ],
                ),
              ),

              VSpace(40),

              // todo -> textfield 2
              MyTextField(
                radius: 50,
                hintText: 'Chibueze',
                textInputType: TextInputType.text,
                padding: EdgeInsets.only(
                  top: h(10),
                  bottom: h(10),
                  left: w(20),
                  right: w(10),
                ),
                enabled: false,
                hintStyle: TextStyle(
                  fontSize: sp(13),
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(6, 84, 91, 1),
                ),
                endActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (p0) {},
                      backgroundColor: Color.fromRGBO(214, 255, 222, 1),
                      label: 'Change',
                      borderRadius: BorderRadius.circular(10),
                      foregroundColor: Color.fromRGBO(6, 84, 91, 1),
                    ),
                  ],
                ),
              ),
              VSpace(40),

              MyTextField(
                radius: 50,
                hintText: 'Davidchibueze47@gmail.com',
                textInputType: TextInputType.text,
                padding: EdgeInsets.only(
                  top: h(10),
                  bottom: h(10),
                  left: w(20),
                  right: w(10),
                ),
                enabled: false,
                hintStyle: TextStyle(
                  fontSize: sp(13),
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(6, 84, 91, 1),
                ),
                endActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (p0) {},
                      backgroundColor: Color.fromRGBO(214, 255, 222, 1),
                      label: 'Change',
                      borderRadius: BorderRadius.circular(10),
                      foregroundColor: Color.fromRGBO(6, 84, 91, 1),
                    ),
                  ],
                ),
              ),

              VSpace(53),

              MyButton(
                radius: 50,
                text: 'Update',
                onTap: () {},
                width: w(298),
                padding: EdgeInsets.symmetric(vertical: h(10)),
                fontWeight: FontWeight.w400,
                fontSize: sp(12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
