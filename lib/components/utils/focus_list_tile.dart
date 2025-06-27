// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
// import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
// import 'package:google_fonts/google_fonts.dart';

// class FocusListTile extends StatelessWidget {
//   final String scheduleName;
//   final String scheduleTime;
//   final void Function()? onTap;

//   const FocusListTile({
//     super.key,
//     required this.scheduleName,
//     this.onTap,
//     required this.scheduleTime,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             TextWidget(
//               text: 'Do not disturb',
//               fontWeight: FontWeight.w400,
//               fontSize: sp(16),
//             ),

//             CupertinoSwitch(value: false, onChanged: (value) {}),
//           ],
//         ),

//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             TextWidget(
//               text: 'Wake up alarm',
//               fontWeight: FontWeight.w400,
//               fontSize: sp(16),
//             ),

//           ],
//         ),

//       ],
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FocusListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? trailing;
  final void Function()? onTap;
  final void Function(bool)? onChanged;
  final bool value;
  final EdgeInsetsGeometry? contentPadding;

  const FocusListTile({
    super.key,
    this.leading,
    this.title,
    this.trailing,
    this.onTap,
    this.onChanged,
    this.value = false,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: contentPadding,
      leading: leading,
      title: title,
      trailing:
          trailing ??
          Transform.scale(
            scale: 0.60,
            child: CupertinoSwitch(
              value: value,
              onChanged: onChanged,
              activeTrackColor: Color.fromRGBO(6, 84, 91, 1),
            ),
          ),
      onTap: onTap,
    );
  }
}
