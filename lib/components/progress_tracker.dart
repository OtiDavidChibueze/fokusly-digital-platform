import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class ProgressTracker extends StatelessWidget {
  final String title;
  final double progress;

  const ProgressTracker({
    super.key,
    required this.title,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    //   return MyContainer(
    //     radius: 5,
    //     width: sw(100),
    //     child: Padding(
    //       padding: EdgeInsets.only(left: w(10), right: w(27)),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           VSpace(7),

    //           TextWidget(
    //             text: "Today's Progress",
    //             fontWeight: FontWeight.w700,
    //             fontSize: sp(16),
    //             color: Colors.black,
    //           ),

    //           VSpace(9),

    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               // Task Title
    //               Expanded(
    //                 child: Text(title, style: const TextStyle(fontSize: 16)),
    //               ),

    //               // Progress Circle
    //               SizedBox(
    //                 width: 24,
    //                 height: 24,
    //                 child: CircularProgressIndicator(
    //                   value: progress,
    //                   strokeWidth: 2.5,
    //                   backgroundColor: Colors.grey.shade300,
    //                   valueColor: AlwaysStoppedAnimation<Color>(
    //                     progress == 1.0
    //                         ? Colors.teal
    //                         : Colors.tealAccent.shade700,
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),

    //           // // _buildProgressTile(
    //           // //   progressTitle: 'Write  a propoasal',
    //           // //   progressView: 'lib/assets/images/svg/progress1.svg',
    //           // // ),
    //           // Divider(color: Color.fromRGBO(238, 235, 235, 0.46), thickness: 1),

    //           // // _buildProgressTile(
    //           // //   progressTitle: 'Set my UI portfolio',
    //           // //   progressView: 'lib/assets/images/svg/progress2.svg',
    //           // // ),
    //           // Divider(color: Color.fromRGBO(238, 235, 235, 0.46), thickness: 1),

    //           // // _buildProgressTile(
    //           // //   progressTitle: 'Read Two chapters of a book',
    //           // //   progressView: 'lib/assets/images/svg/progress3.svg',
    //           // // ),
    //           // VSpace(5),
    //         ],
    //       ),
    //     ),
    //   );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Task Title
        Expanded(
          child: TextWidget(
            text: title,
            fontWeight: FontWeight.w400,
            fontSize: sp(13),
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),

        // Progress Circle
        SizedBox(
          width: w(24),
          height: h(24),
          child: CircularProgressIndicator(
            value: progress,
            strokeWidth: 2.5,
            backgroundColor: Color.fromRGBO(214, 255, 222, 1),
            valueColor: AlwaysStoppedAnimation<Color>(
              Color.fromRGBO(6, 84, 91, 1),
            ),
          ),
        ),
      ],
    );
  }
}
