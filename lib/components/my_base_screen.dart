import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class MyBaseScreen extends StatelessWidget {
  final Widget child;
  const MyBaseScreen({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 248, 252, 1),

      body: SafeArea(
        child: Container(
          width: sw(100),
          height: sh(100),
          color: const Color.fromRGBO(242, 248, 252, 1),
          padding: EdgeInsets.symmetric(horizontal: w(20)),
          child: child,
        ),
      ),
    );
  }
}
