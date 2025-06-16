import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFD6FFDE),
        ),
        child: Center(child: Image.asset('lib/assets/images/fokusly_logo.png')),
      ),
    );
  }
}
