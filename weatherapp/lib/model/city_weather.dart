/*
Clase que se encarga de modelar el tiempo que hace en una determinada ciudad
*/
class CityWeather {
  // Latitud
  double lat;
  // Longitud
  double long;
  // Zona horaria
  String timezone = '';

  // Fecha en formato unix del tiempo
  int dt;
  // Fecha en formato unix del amanecer
  int sunrise;
  // Fecha en formato unix del atardecer
  int sunset;
  // Temperatura media real
  double temp;
  // Temperatura aparente
  double feels_like;
  int pressure;
  int humidity;
  double wind_speed;

  // Palabra que describe el tiempo del día
  String mainWeather = '';
  // Descripcion corta del tiempo del día
  String description = '';
  // Referencia al icono relacionado con el tiempo del día
  String icon = '';

  CityWeather({
    required this.lat,
    required this.long,
    required this.timezone,
    required this.dt,
    required this.sunrise,
    required this.sunset,
    required this.temp,
    required this.feels_like,
    required this.pressure,
    required this.humidity,
    required this.wind_speed,
    required this.mainWeather,
    required this.description,
    required this.icon,
  });

  // Constructor a partir de un json, devuelve un objeto de tipo CityWeather
  factory CityWeather.fromJson(Map<String, dynamic> parsedJson) {
    return CityWeather(
        lat: parsedJson['lat'],
        long: parsedJson['lon'],
        timezone: parsedJson['timezone'],
        dt: parsedJson['current']['dt'],
        sunrise: parsedJson['current']['sunrise'],
        sunset: parsedJson['current']['sunset'],
        temp: parsedJson['current']['temp'].toDouble(),
        feels_like: parsedJson['current']['feels_like'].toDouble(),
        pressure: parsedJson['current']['pressure'],
        humidity: parsedJson['current']['humidity'],
        wind_speed: parsedJson['current']['wind_speed'].toDouble(),
        mainWeather: parsedJson['current']['weather'][0]['main'],
        description: parsedJson['current']['weather'][0]['description'],
        icon: parsedJson['current']['weather'][0]['icon']);
  }

  // Método que devuelve la lista del tiempo en los próximos 7 días a partir del json recibido desde la API
  static List<CityWeather> getForecast(Map<String, dynamic> parsedJson) {
    List<CityWeather> forecastData = [];
    for (int i = 0; i < 8; i++) {
      forecastData.add(CityWeather(
          lat: parsedJson['lat'],
          long: parsedJson['lon'],
          timezone: parsedJson['timezone'],
          dt: parsedJson['daily'][i]['dt'],
          sunrise: parsedJson['daily'][i]['sunrise'],
          sunset: parsedJson['daily'][i]['sunset'],
          temp: parsedJson['daily'][i]['temp']["day"].toDouble(),
          feels_like: parsedJson['daily'][i]['feels_like']["day"].toDouble(),
          pressure: parsedJson['daily'][i]['pressure'],
          humidity: parsedJson['daily'][i]['humidity'],
          wind_speed: parsedJson['daily'][i]['wind_speed'].toDouble(),
          mainWeather: parsedJson['daily'][i]['weather'][0]['main'],
          description: parsedJson['daily'][i]['weather'][0]['description'],
          icon: parsedJson['daily'][i]['weather'][0]['icon']));
    }
    return forecastData;
  }
}
