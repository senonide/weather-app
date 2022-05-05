import 'package:flutter/material.dart';
import 'package:weatherapp/i18n/localizations.dart';
import 'package:weatherapp/repository/preferences.dart';
import 'package:weatherapp/settings_controller.dart';

/*
CLase encargada de administrar los parametros de configuración de la aplicación
*/
class Config {
  static MaterialColor mainColor = Colors.deepOrange;

  static WeatherAppLocalizations locales =
      WeatherAppLocalizations(Locale(SettingsController.lang));

  // Idioma seleccionado por el usuario
  static String selectedLocale = SettingsController.lang;

  // Función para cambiar el idioma de la aplicación
  static changeLocales() {
    if (selectedLocale == 'es') {
      locales.locale = const Locale('en');
      selectedLocale = 'en';
      Preferences.saveData("lang", "en");
    } else {
      locales.locale = const Locale('es');
      selectedLocale = 'es';
      Preferences.saveData("lang", "es");
    }
  }

  // Función que obtiene el idioma actual de la aplicación
  static String get language {
    if (selectedLocale == 'es') {
      return "Español";
    } else {
      return "English";
    }
  }
}
