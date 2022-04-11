import 'package:flutter/material.dart';

class WeatherAppLocalizations {
  WeatherAppLocalizations(this.locale);

  Locale locale;

  static WeatherAppLocalizations? of(BuildContext context) {
    return Localizations.of<WeatherAppLocalizations>(
        context, WeatherAppLocalizations);
  }

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Weather App',
      'config': 'Settings',
      'language': 'Language',
      'selectCity': 'Select a city',
      'latitude': 'Latitude',
      'longitude': 'Longitude',
      'loading': 'Loading',
      'temperature': 'Temperature',
      'humidity': 'Humidity',
      'pressure': 'Pressure',
      'temperatureFeelsLike': 'Temperature feels like',
      'windSpeed': 'Wind speed',
      'monday': 'Monday',
      'tuesday': 'Tuesday',
      'wednesday': 'Wednesday',
      'thursday': 'Thursday',
      'friday': 'Friday',
      'saturday': 'Saturday',
      'sunday': 'Sunday',
    },
    'es': {
      'title': 'Aplicación del tiempo',
      'config': 'Configuración',
      'language': 'Idioma',
      'selectCity': 'Selecciona una ciudad',
      'latitude': 'Latitud',
      'longitude': 'Longitud',
      'loading': 'Cargando',
      'temperature': 'Temperatura',
      'humidity': 'Humedad',
      'pressure': 'Presión',
      'temperatureFeelsLike': 'Temperatura aparente',
      'windSpeed': 'Velocidad del viento',
      'monday': 'Lunes',
      'tuesday': 'Martes',
      'wednesday': 'Miércoles',
      'thursday': 'Jueves',
      'friday': 'Viernes',
      'saturday': 'Sábado',
      'sunday': 'Domingo',
    },
  };

  String get title {
    return _localizedValues[locale.languageCode]!['title']!;
  }

  String get config {
    return _localizedValues[locale.languageCode]!['config']!;
  }

  String get language {
    return _localizedValues[locale.languageCode]!['language']!;
  }

  String get selectCity {
    return _localizedValues[locale.languageCode]!['selectCity']!;
  }

  String get latitude {
    return _localizedValues[locale.languageCode]!['latitude']!;
  }

  String get longitude {
    return _localizedValues[locale.languageCode]!['longitude']!;
  }

  String get loading {
    return _localizedValues[locale.languageCode]!['loading']!;
  }

  String get temperature {
    return _localizedValues[locale.languageCode]!['temperature']!;
  }

  String get humidity {
    return _localizedValues[locale.languageCode]!['humidity']!;
  }

  String get pressure {
    return _localizedValues[locale.languageCode]!['pressure']!;
  }

  String get temperatureFeelsLike {
    return _localizedValues[locale.languageCode]!['temperatureFeelsLike']!;
  }

  String get windSpeed {
    return _localizedValues[locale.languageCode]!['windSpeed']!;
  }

  String get monday {
    return _localizedValues[locale.languageCode]!['monday']!;
  }

  String get tuesday {
    return _localizedValues[locale.languageCode]!['tuesday']!;
  }

  String get wednesday {
    return _localizedValues[locale.languageCode]!['wednesday']!;
  }

  String get thursday {
    return _localizedValues[locale.languageCode]!['thursday']!;
  }

  String get friday {
    return _localizedValues[locale.languageCode]!['friday']!;
  }

  String get saturday {
    return _localizedValues[locale.languageCode]!['saturday']!;
  }

  String get sunday {
    return _localizedValues[locale.languageCode]!['sunday']!;
  }
}
