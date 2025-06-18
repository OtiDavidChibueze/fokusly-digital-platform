import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokusly_digital_wellbeing_app/model/user_model.dart';
import 'package:fokusly_digital_wellbeing_app/pages/home_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/intro_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/onBoarding/onboarding_page1.dart';
import 'package:fokusly_digital_wellbeing_app/pages/sign_in_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/sign_up_page.dart';
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
      providers: [ChangeNotifierProvider(create: (_) => UserProvider())],
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
          '/home': (context) => HomePage(),
          '/signIn': (context) => SignInPage(),
          '/signUp': (context) => SignUpPage(),
          '/onBoardingPage1': (context) => OnboardingPage1(),
        },
      ),
    );
  }
}
