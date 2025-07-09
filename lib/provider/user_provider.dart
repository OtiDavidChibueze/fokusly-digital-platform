import 'package:flutter/widgets.dart';
import 'package:fokusly_digital_wellbeing_app/database/user_database.dart';
import 'package:fokusly_digital_wellbeing_app/model/user_model.dart';

class UserProvider extends ChangeNotifier {
  UserModel? _user;
  bool _isLoading = false;
  String? _errorMessage;

  // GETTERS
  UserModel? get user => _user;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  // SET LOADING STATE
  void _setLoading(bool value) {
    _isLoading = value;

    notifyListeners();
  }

  // READ USER
  void readUser() {
    _user = user;

    notifyListeners();
  }

  // CREATE NEW USER
  Future<String?> registerUser({
    required String fullname,
    required String email,
    required String password,
  }) async {
    _setLoading(true);
    _errorMessage = null;

    final newUser = UserModel(
      fullname: fullname,
      email: email,
      password: password,
    );
    final result = await UserDatabase.registerUser(newUser);

    if (result != null) {
      _setLoading(false);
      return _errorMessage = result;
    }

    _user = newUser;
    _setLoading(false);
    notifyListeners();
    return null;
  }

  // LOGIN USER
  Future<UserModel?> loginUser({
    required String email,
    required String password,
  }) async {
    _setLoading(true);
    _errorMessage = null;

    final result = await UserDatabase.loginIn(email, password);

    if (result == null) {
      _setLoading(false);
      _errorMessage = 'Invalid email or password!';
      return null;
    }

    _user = result;
    _setLoading(false);
    notifyListeners();
    return _user;
  }

  void logOut() {
    _user = null;
    notifyListeners();
  }
}
