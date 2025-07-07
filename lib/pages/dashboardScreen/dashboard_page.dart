import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fokusly_digital_wellbeing_app/pages/focusPages/focus_screen.dart';
import 'package:fokusly_digital_wellbeing_app/pages/dashboardScreen/history_screen.dart';
import 'package:fokusly_digital_wellbeing_app/pages/dashboardScreen/home_screen.dart';
import 'package:fokusly_digital_wellbeing_app/pages/dashboardScreen/settings_screen.dart';
import 'package:fokusly_digital_wellbeing_app/provider/bottom_nav_provider.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomeScreen(),
      FocusScreen(),
      HistoryScreen(),
      SettingsScreen(),
    ];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 248, 252, 1),

      body: SafeArea(
        child: Container(
          width: sw(100),
          height: sh(100),
          padding: EdgeInsets.symmetric(horizontal: w(20)),
          color: const Color.fromRGBO(242, 248, 252, 1),
          child: pages[context.watch<BottomNavProvider>().selectedIndex],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: w(20.0),
          right: w(20.0),
          bottom: h(20.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(sr(20)),
          child: Material(
            color: const Color(0xFF06545B),
            child: BottomNavigationBar(
              currentIndex: context.watch<BottomNavProvider>().selectedIndex,
              onTap: context.watch<BottomNavProvider>().setIndex,
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white.withOpacity(0.5),
              selectedFontSize: sp(12),
              unselectedFontSize: sp(12),
              iconSize: 24,
              unselectedLabelStyle: TextStyle(
                fontSize: sp(12),
                fontWeight: FontWeight.w400,
              ),
              selectedLabelStyle: TextStyle(
                fontSize: sp(12),
                fontWeight: FontWeight.w400,
              ),
              type: BottomNavigationBarType.fixed,
              items: List.generate(4, (index) {
                final bool isSelected =
                    context.watch<BottomNavProvider>().selectedIndex == index;
                return BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      VSpace(12),
                      SvgPicture.asset(
                        context.watch<BottomNavProvider>().icons[index],
                        colorFilter: ColorFilter.mode(
                          isSelected
                              ? Colors.white
                              : Colors.white.withOpacity(0.5),
                          BlendMode.srcIn,
                        ),
                      ),
                      VSpace(10),
                    ],
                  ),
                  label: context.watch<BottomNavProvider>().labels[index],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
