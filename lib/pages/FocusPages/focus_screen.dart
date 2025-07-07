import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/app_blocker_page1.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/app_blocker_page2.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/detox_pages/detox_page1.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/detox_pages/detox_page2.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/detox_pages/end_challenge_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/focus_mode_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/focus_session_page1.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/focus_session_page2.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/focus_session_page3.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/focus_session_page4.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/focus_session_page5.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/mode_screen1.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/mode_screen_2.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/timer_screen.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/weekend_challenge_page.dart';

class FocusScreen extends StatelessWidget {
  const FocusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        Widget page;

        switch (settings.name) {
          case '/modeScreen1':
            page = const ModeScreen1();
            break;
          case '/modeScreen2':
            page = const ModeScreen2();
            break;
          case '/appBlockerPage1':
            page = AppBlockerPage1();
            break;
          case '/appBlockerPage2':
            page = AppBlockerPage2();
            break;
          case '/focusSessionPage1':
            page = const FocusSessionPage1();
            break;
          case '/focusSessionPage2':
            page = const FocusSessionPage2();
            break;
          case '/focusSessionPage3':
            page = const FocusSessionPage3();
            break;
          case '/focusSessionPage4':
            page = FocusSessionPage4();
            break;
          case '/focusSessionPage5':
            page = const FocusSessionPage5();
            break;
          case '/detoxPage1':
            page = const DetoxPage1();
            break;
          case '/detoxPage2':
            page = const DetoxPage2();
            break;
          case '/timerPage':
            page = const TimerPage();
          case '/weekendChallenge':
            page = const WeekendChallengePage();
            break;
          case '/endChallenge':
            page = const EndChallengePage();
            break;

          default:
            page = const FocusModePage();
        }
        return MaterialPageRoute(builder: (_) => page, settings: settings);
      },
    );
  }
}
