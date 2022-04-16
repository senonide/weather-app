import 'package:weatherapp/config.dart';
import 'package:weatherapp/model/city.dart';
import 'package:weatherapp/model/city_weather.dart';

/*
Clase encargada de almacenar en memoria la lista de ciudades las cuales 
se consultará el tiempo actual y el pronóstico para 7 días
*/
class Data {
  // Ciudad seleccionada por el usuario
  static City? selectedCity;
  // Dia de la semana seleccionado por el usuario para mostrar el tiempo
  static CityWeather? selectedWeather;
  // Lista que almacena las ciudades en memoria
  static List<City> cities = [
    City(name: Config.locales.oviedo, lat: 43.3603, long: -5.8448),
    City(name: Config.locales.gijon, lat: 43.53573, long: -5.66152),
    City(name: Config.locales.madrid, lat: 40.4165, long: -3.70256),
    City(name: Config.locales.barcelona, lat: 41.38879, long: 2.15899),
    City(name: Config.locales.valencia, lat: 39.46975, long: -0.37739),
    City(name: Config.locales.valladolid, lat: 41.65518, long: -4.72372),
    City(name: Config.locales.cadiz, lat: 36.52672, long: -6.2891),
    City(name: Config.locales.sevilla, lat: 37.38283, long: -5.97317),
    City(name: Config.locales.bilbao, lat: 43.26271, long: -2.92528),
    City(name: Config.locales.berlin, lat: 52.52437, long: 13.41053),
    City(name: Config.locales.paris, lat: 48.85341, long: 2.3488),
    City(name: Config.locales.rome, lat: 41.89193, long: 12.51133),
    City(name: Config.locales.london, lat: 51.51279, long: -0.09184),
    City(name: Config.locales.lisbon, lat: 38.71667, long: -9.13333),
    City(name: Config.locales.athens, lat: 37.98376, long: 23.72784),
    City(name: Config.locales.belgium, lat: 50.85045, long: 4.34878),
    City(name: Config.locales.bern, lat: 46.94809, long: 7.44744),
    City(name: Config.locales.vienna, lat: 48.20849, long: 16.37208),
  ];
}
