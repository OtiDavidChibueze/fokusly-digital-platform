import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TextWidget(text: 'History screen')),
    );
  }
}
