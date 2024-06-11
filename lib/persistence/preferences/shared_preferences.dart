import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static const String keyUserPlan = 'userPlan';

  static Future<void> saveUserPlan(String plan) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(keyUserPlan, plan);
  }

  static Future<String?> getUserPlan() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyUserPlan);
  }
}
