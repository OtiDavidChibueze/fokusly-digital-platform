import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/pages/settingsPage/settings_main_page.dart';
import 'package:fokusly_digital_wellbeing_app/pages/settingsPage/update_profile_page.dart';

class SettingsScreen extends StatelessWidget {
  final void Function(int)? onNavigate;

  const SettingsScreen({super.key, this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        Widget page;

        switch (settings.name) {
          case '/updateProfile':
            page = const UpdateProfilePage();
            break;
          default:
            page = SettingsMainPage(onNavigate: onNavigate);
            break;
        }

        return MaterialPageRoute(builder: (_) => page, settings: settings);
      },
    );
  }
}
