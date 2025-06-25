import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_base_screen.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_container.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/pages/dashboardScreen/focus_screen.dart';
import 'package:fokusly_digital_wellbeing_app/pages/dashboardScreen/history_screen.dart';
import 'package:fokusly_digital_wellbeing_app/pages/dashboardScreen/home_screen.dart';
import 'package:fokusly_digital_wellbeing_app/pages/dashboardScreen/settings_screen.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  void navigatePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<String> labels = ['Home', 'Focus', 'History', 'Settings'];
  List<String> icons = [
    'lib/assets/images/svg/Vector.svg',
    'lib/assets/images/svg/Frame46.svg',
    'lib/assets/images/svg/Group.svg',
    'lib/assets/images/svg/Vector1.svg',
  ];

  final List<Widget> _pages = [
    const HomeScreen(),
    const FocusScreen(),
    const HistoryScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 248, 252, 1),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: w(20.0), vertical: h(20.0)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(sr(20)),
          child: Material(
            color: const Color(0xFF06545B),
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (index) => navigatePage(index),
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white.withValues(alpha: 0.5),
              selectedFontSize: sp(12),
              unselectedFontSize: sp(12),
              type: BottomNavigationBarType.fixed,
              items: List.generate(4, (index) {
                final bool isSelected = _selectedIndex == index;
                return BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      VSpace(12),

                      SvgPicture.asset(
                        icons[index],
                        colorFilter: ColorFilter.mode(
                          isSelected
                              ? Colors.white
                              : Colors.white.withValues(alpha: 0.5),
                          BlendMode.srcIn,
                        ),
                        width: 24,
                        height: 24,
                      ),

                      VSpace(10),
                    ],
                  ),
                  label: labels[index],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
