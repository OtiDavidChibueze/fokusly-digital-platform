import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/pages/home_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/intro_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/sign_in_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/sign_up_page.dart';

void main() {
  runApp(const FokuslyApp());
}

class FokuslyApp extends StatelessWidget {
  const FokuslyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Merriweather'),
      home: SignInPage(),
      routes: {
        '/home': (context) => HomePage(),
        '/signIn': (context) => SignInPage(),
        '/signUp': (context) => SignUpPage(),
      },
    );
  }
}
