import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokusly_digital_wellbeing_app/model/user_model.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/app_blocker_page1.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/app_blocker_page2.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/detox_pages/detox_page1.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/detox_pages/detox_page2.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/detox_pages/end_challenge_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/focus_session_page1.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/focus_session_page2.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/focus_session_page3.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/focus_session_page4.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/focus_session_page5.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/mode_screen1.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/mode_screen_2.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/timer_screen.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/weekend_challenge_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/dashboardScreen/dashboard_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/focus_screen.dart';
import 'package:fokusly_digital_wellbeing_app/pages/intro_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/onboardingScreen/onboarding_page1.dart';
import 'package:fokusly_digital_wellbeing_app/pages/onboardingScreen/onboarding_page2.dart';
import 'package:fokusly_digital_wellbeing_app/pages/onboardingScreen/onboarding_page3.dart';
import 'package:fokusly_digital_wellbeing_app/pages/settingsPage/settings_main_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/settingsPage/update_profile_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/sign_in_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/sign_up_page.dart';
import 'package:fokusly_digital_wellbeing_app/provider/bottom_nav_provider.dart';
import 'package:fokusly_digital_wellbeing_app/provider/user_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  //* init hive
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(UserModelAdapter());

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => BottomNavProvider()),
      ],
      child: const FokuslyApp(),
    ),
  );
}

class FokuslyApp extends StatelessWidget {
  const FokuslyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Merriweather'),
        routes: {
          '/': (context) => IntroPage(),
          '/signIn': (context) => SignInPage(),
          '/signUp': (context) => SignUpPage(),
          '/onboarding1': (context) => OnboardingPage1(),
          '/onboarding2': (context) => OnboardingPage2(),
          '/onboarding3': (context) => OnboardingPage3(),
          '/dashboard': (context) => DashboardPage(),
          '/focusMode': (context) => FocusScreen(),
          '/modeScreen1': (context) => ModeScreen1(),
          '/modeScreen2': (context) => ModeScreen2(),
          '/appBlockerPage1': (context) => AppBlockerPage1(),
          '/appBlockerPage2': (context) => AppBlockerPage2(),
          '/focusSessionPage1': (context) => FocusSessionPage1(),
          '/focusSessionPage2': (context) => FocusSessionPage2(),
          '/focusSessionPage3': (context) => FocusSessionPage3(),
          '/focusSessionPage4': (context) => FocusSessionPage4(),
          '/focusSessionPage5': (context) => FocusSessionPage5(),
          '/detoxPage1': (context) => DetoxPage1(),
          '/detoxPage2': (context) => DetoxPage2(),
          '/timerPage': (context) => TimerPage(),
          '/weekendChallenge': (context) => WeekendChallengePage(),
          '/endChallenge': (context) => EndChallengePage(),
          '/settingsScreen': (context) => SettingsMainPage(),
          '/updateProfile': (context) => UpdateProfilePage(),
        },
      ),
    );
  }
}
