import 'package:shared_preferences/shared_preferences.dart';

/*
Clase encargada de almacenar en el dispositivo las preferencias del sistema
*/
class Preferences {
  static SharedPreferences? _prefs;

  // Funcion que inicializa las preferencias
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

  // Funcion que obtiene el idioma de las preferencias cargadas
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
