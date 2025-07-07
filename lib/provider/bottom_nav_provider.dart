import 'package:flutter/widgets.dart';

class BottomNavProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  final List<String> _labels = ['Home', 'Focus', 'History', 'Settings'];

  final List<String> _icons = [
    'lib/assets/images/svg/Vector.svg',
    'lib/assets/images/svg/Frame46.svg',
    'lib/assets/images/svg/Group.svg',
    'lib/assets/images/svg/Vector1.svg',
    'lib/assets/images/svg/Frame46.svg',
  ];

  List<String> get labels => _labels;

  List<String> get icons => _icons;

  void setIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  bool shouldStartChallenge = false;

  void triggerChallengeStart() {
    shouldStartChallenge = true;
    notifyListeners();
  }

  void clearChallengeFlag() {
    shouldStartChallenge = false;
    notifyListeners();
  }
}
