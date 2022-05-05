import 'package:shared_preferences/shared_preferences.dart';

/*
Clase encargada de almacenar en el dispositivo las preferencias del sistema
*/
class Preferences {
  static SharedPreferences? _prefs;

  static Future<SharedPreferences> getSharedPreferences() async {
    return await SharedPreferences.getInstance();
  }

  // Función para guardar datos
  static saveData(String key, String data) {
    if (_prefs == null) {
      getSharedPreferences().then((value) => _prefs = value);
    }
    _prefs!.setString(key, data);
  }

  // Función para cargar datos
  static getData(String key) {
    if (_prefs == null) {
      getSharedPreferences().then((value) => _prefs = value);
    }
    return _prefs!.getInt('key');
  }

  static String getLang(SharedPreferences preferences) {
    if (_prefs == null) {
      getSharedPreferences().then((value) => _prefs = value);
    }
    var lang = preferences.getString('lang');
    if (lang != null && lang != "") {
      return lang;
    } else {
      return "en";
    }
  }
}
