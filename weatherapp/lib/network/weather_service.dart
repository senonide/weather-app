import 'dart:convert';

import 'package:weatherapp/apikey.dart';
import 'package:weatherapp/config.dart';
import 'package:weatherapp/model/city_weather.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  static const String apiUrl =
      'https://api.openweathermap.org/data/2.5/onecall';
  static const String latParam = 'lat=';
  static const String longParam = 'lon=';
  static const String units = 'units=metric';
  static const String lang = 'lang=';
  static const String apiKey = 'appid=${ApiKey.Key}';

  static const String iconUrl = 'http://openweathermap.org/img/wn/';
  static const String extension = '@2x.png';

  static List<CityWeather> currentWeather = [];

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
