import 'package:fokusly_digital_wellbeing_app/model/user_model.dart';
import 'package:hive/hive.dart';

class UserDatabase {
  //* users hive box nam
  static const String userBoxName = 'users';

  //* open user box (just once)
  static Future<Box<UserModel>> _getUserBox() async {
    final openHiveBox = await Hive.openBox<UserModel>(userBoxName);

    return openHiveBox;
  }

  //* check if email already exists
  static Future<bool> _emailExist(String email) async {
    final usersBox = await _getUserBox();

    final emailExist = usersBox.values.any((user) => user.email == email);

    return emailExist;
  }

  //* register new user
  static Future<String?> registerUser(UserModel newUser) async {
    //* check if the newUser email already exists
    if (await _emailExist(newUser.email)) {
      return 'Email already exists, please login!';
    }

    //* if it doesnt save the newUser
    final usersBox = await _getUserBox();
    usersBox.add(newUser);

    //* return nothing -- means its a success
    return null;
  }

  //* login user
  static Future<UserModel?> loginIn(String email, String password) async {
    try {
      final usersBox = await _getUserBox();

      final user = usersBox.values.firstWhere(
        (user) => user.email == email && user.password == password,
      );

      return user;
    } catch (e) {
      return null;
    }
  }

  //* get all users
  static Future<List<UserModel>> getUsers() async {
    final usersBox = await _getUserBox();

    final allUsers = usersBox.values.toList();

    return allUsers;
  }
}
