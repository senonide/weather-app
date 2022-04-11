import 'package:flutter/material.dart';
import 'package:weatherapp/i18n/localizations.dart';

class Config {
  static MaterialColor mainColor = Colors.deepOrange;

  static WeatherAppLocalizations locales =
      WeatherAppLocalizations(const Locale('es'));

  static String selectedLocale = 'es';

  static changeLocales() {
    if (selectedLocale == 'es') {
      locales.locale = const Locale('en');
      selectedLocale = 'en';
    } else {
      locales.locale = const Locale('es');
      selectedLocale = 'es';
    }
  }

  static String get language {
    if (selectedLocale == 'es') {
      return "Español";
    } else {
      return "English";
    }
  }
}
