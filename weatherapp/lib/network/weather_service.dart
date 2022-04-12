import 'dart:convert';

import 'package:weatherapp/apikey.dart';
import 'package:weatherapp/config.dart';
import 'package:weatherapp/model/city_weather.dart';
import 'package:http/http.dart' as http;

/*
Clase que se encarga de la comunicación red con la API 
de la que se extrae toda la información del tiempo
*/
class WeatherService {
  // Parámetros de la URL de la API con sus distintas opciones
  static const String apiUrl =
      'https://api.openweathermap.org/data/2.5/onecall';
  static const String latParam = 'lat=';
  static const String longParam = 'lon=';
  static const String units = 'units=metric';
  static const String lang = 'lang=';
  static const String apiKey = 'appid=${ApiKey.Key}';

  static const String iconUrl = 'http://openweathermap.org/img/wn/';
  static const String extension = '@2x.png';

  // Estructura de datos donde se carga el tiempo actual y el pronostico para 7 días
  static List<CityWeather> currentWeather = [];

  // Función encargada de consultar en la API el tiempo actual y el pronostico
  // para 7 días, la información se carga en currentWeather.
  // En caso de exito retorna True, en caso de fallo retornará False
  static Future<bool> getWeather(String lat, String long) async {
    String finalUrl = apiUrl +
        '?' +
        latParam +
        lat +
        '&' +
        longParam +
        long +
        '&' +
        units +
        '&' +
        lang +
        Config.selectedLocale +
        '&' +
        apiKey;

    var response = await http.get(Uri.parse(finalUrl));

    int statusCode = response.statusCode;
    if (statusCode != 200) {
      return false;
    }
    dynamic body = json.decode(response.body);
    List<CityWeather> weather = CityWeather.getForecast(body);
    currentWeather = weather;

    return true;
  }
}
