import 'package:flutter/material.dart';

/*
Esta clase se encarga de la administración de la internacionalización de la aplicación
*/
class WeatherAppLocalizations {
  WeatherAppLocalizations(this.locale);

  // Variable que guardará la localizacion actual para poder mostrar un idioma u otro
  Locale locale;

  static WeatherAppLocalizations? of(BuildContext context) {
    return Localizations.of<WeatherAppLocalizations>(
        context, WeatherAppLocalizations);
  }

  // Estructura de datos que almacena las cadenas traducidas para cada idioma
  static final Map<String, Map<String, String>> _localizedValues = {
    // Inglés
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
      'oviedo': 'Oviedo',
      'gijon': 'Gijón',
      'madrid': 'Madrid',
      'barcelona': 'Barcelona',
      'valencia': 'Valencia',
      'valladolid': 'Valladolid',
      'cadiz': 'Cádiz',
      'sevilla': 'Sevilla',
      'bilbao': 'Bilbao',
      'berlin': 'Berlin',
      'paris': 'Paris',
      'rome': 'Rome',
      'london': 'London',
      'lisbon': 'Lisbon',
      'athens': 'Athens',
      'belgium': 'Belgium',
      'bern': 'Bern',
      'vienna': 'Vienna',
    },
    // Español
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
      'oviedo': 'Oviedo',
      'gijon': 'Gijón',
      'madrid': 'Madrid',
      'barcelona': 'Barcelona',
      'valencia': 'Valencia',
      'valladolid': 'Valladolid',
      'cadiz': 'Cádiz',
      'sevilla': 'Sevilla',
      'bilbao': 'Bilbao',
      'berlin': 'Berlin',
      'paris': 'Paris',
      'rome': 'Roma',
      'london': 'Londres',
      'lisbon': 'Lisboa',
      'athens': 'Atenas',
      'belgium': 'Bélgica',
      'bern': 'Berna',
      'vienna': 'Viena',
    },
  };

  // Funiciones para obtener la cadena en el idioma configurado

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

  String get oviedo {
    return _localizedValues[locale.languageCode]!['oviedo']!;
  }

  String get gijon {
    return _localizedValues[locale.languageCode]!['gijon']!;
  }

  String get madrid {
    return _localizedValues[locale.languageCode]!['madrid']!;
  }

  String get barcelona {
    return _localizedValues[locale.languageCode]!['barcelona']!;
  }

  String get valencia {
    return _localizedValues[locale.languageCode]!['valencia']!;
  }

  String get valladolid {
    return _localizedValues[locale.languageCode]!['valladolid']!;
  }

  String get cadiz {
    return _localizedValues[locale.languageCode]!['cadiz']!;
  }

  String get sevilla {
    return _localizedValues[locale.languageCode]!['sevilla']!;
  }

  String get bilbao {
    return _localizedValues[locale.languageCode]!['bilbao']!;
  }

  String get berlin {
    return _localizedValues[locale.languageCode]!['berlin']!;
  }

  String get paris {
    return _localizedValues[locale.languageCode]!['paris']!;
  }

  String get rome {
    return _localizedValues[locale.languageCode]!['rome']!;
  }

  String get london {
    return _localizedValues[locale.languageCode]!['london']!;
  }

  String get lisbon {
    return _localizedValues[locale.languageCode]!['lisbon']!;
  }

  String get athens {
    return _localizedValues[locale.languageCode]!['athens']!;
  }

  String get belgium {
    return _localizedValues[locale.languageCode]!['belgium']!;
  }

  String get bern {
    return _localizedValues[locale.languageCode]!['bern']!;
  }

  String get vienna {
    return _localizedValues[locale.languageCode]!['vienna']!;
  }
}
