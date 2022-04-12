import 'package:flutter/material.dart';
import 'package:weatherapp/i18n/localizations.dart';

/*
CLase encargada de administrar los parametros de configuración de la aplicación
*/
class Config {
  static MaterialColor mainColor = Colors.deepOrange;

  static WeatherAppLocalizations locales =
      WeatherAppLocalizations(const Locale('es'));

  // Idioma seleccionado por el usuario
  static String selectedLocale = 'es';

  // Función para cambiar el idioma de la aplicación
  static changeLocales() {
    if (selectedLocale == 'es') {
      locales.locale = const Locale('en');
      selectedLocale = 'en';
    } else {
      locales.locale = const Locale('es');
      selectedLocale = 'es';
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
