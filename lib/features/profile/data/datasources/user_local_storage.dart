import 'package:hive/hive.dart';
import '../models/user_profile_model.dart';

class UserLocalStorage {
  static final _box = Hive.box('userBox');

  static Future<void> saveUser(UserProfileModel user) async {
    await _box.put('userData', user.toJson());
  }

  static UserProfileModel? getUser() {
    final data = _box.get('userData');
    if (data != null) {
      return UserProfileModel.fromJson(Map<String, dynamic>.from(data));
    }
    return null;
  }

  static Future<void> clearUser() async {
    await _box.delete('userData');
  }

  static bool isLoggedIn() {
    return _box.containsKey('userData');
  }
}
