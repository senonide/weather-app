import 'package:weatherapp/model/city.dart';
import 'package:weatherapp/model/city_weather.dart';

class Data {
  static City? selectedCity;
  static CityWeather? selectedWeather;
  static List<City> cities = [
    City(name: 'Oviedo', lat: 43.3603, long: -5.8448),
    City(name: 'Gijón', lat: 43.53573, long: -5.66152),
    City(name: 'Madrid', lat: 40.4165, long: -3.70256),
    City(name: 'Barcelona', lat: 41.38879, long: 2.15899),
    City(name: 'Valencia', lat: 39.46975, long: -0.37739),
    City(name: 'Valladolid', lat: 41.65518, long: -4.72372),
    City(name: 'Cádiz', lat: 36.52672, long: -6.2891),
    City(name: 'Sevilla', lat: 37.38283, long: -5.97317),
    City(name: 'Bilbao', lat: 43.26271, long: -2.92528),
    City(name: 'Berlin', lat: 52.52437, long: 13.41053),
    City(name: 'Paris', lat: 48.85341, long: 2.3488),
    City(name: 'Rome', lat: 41.89193, long: 12.51133),
    City(name: 'London', lat: 51.51279, long: -0.09184),
    City(name: 'Lisbon', lat: 38.71667, long: -9.13333),
    City(name: 'Athens', lat: 37.98376, long: 23.72784),
    City(name: 'Belgium', lat: 50.85045, long: 4.34878),
    City(name: 'Bern', lat: 46.94809, long: 7.44744),
    City(name: 'Vienna', lat: 48.20849, long: 16.37208),
  ];
}
