import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static saveData(String key, String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, data);
  }

  static getData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('key');
  }
}
