import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weatherapp/repository/preferences.dart';

class SettingsController with ChangeNotifier {
  SettingsController();

  static late String _lang;

  static String get lang => _lang;

  Future<String> getLang() async =>
      Preferences.getLang(await SharedPreferences.getInstance());

  Future<void> loadSettings() async {
    _lang = await getLang();
    notifyListeners();
  }
}
