import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';

class FocusScreen extends StatefulWidget {
  const FocusScreen({super.key});

  @override
  State<FocusScreen> createState() => _FocusScreenState();
}

class _FocusScreenState extends State<FocusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TextWidget(text: 'Focus screen')),
    );
  }
}
