import 'package:shared_preferences/shared_preferences.dart';

/*
Clase encargada de almacenar en el dispositivo las preferencias del sistema
*/
class Preferences {
  // Función para guardar datos
  static saveData(String key, String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, data);
  }

  // Función para cargar datos
  static getData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('key');
  }
}
