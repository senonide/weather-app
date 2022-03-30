import 'package:flutter/material.dart';
import 'package:weatherapp/network/weather_service.dart';
import 'package:weatherapp/repository/data.dart';

class DetailedWeatherView extends StatelessWidget {
  DetailedWeatherView({Key? key}) : super(key: key);

  final List<String> WeekDay = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 235, 86, 62),
          elevation: 3,
          title: Text(
            Data.selectedCity!.name,
            style: const TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                " - ${WeekDay[DateTime.fromMillisecondsSinceEpoch(Data.selectedWeather!.sunrise * 1000).weekday - 1]}"
                "  ${DateTime.fromMillisecondsSinceEpoch(Data.selectedWeather!.sunrise * 1000).day.toString()} - ",
                style: const TextStyle(
                    fontSize: 22, fontWeight: FontWeight.normal),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.network(WeatherService.iconUrl +
                        Data.selectedWeather!.icon +
                        WeatherService.extension),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${Data.selectedWeather!.mainWeather},\n${Data.selectedWeather!.description}",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "${Data.selectedWeather!.temp} º",
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 235, 86, 62),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                )
              ],
            ),
            const Divider(
              thickness: 2,
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Humidity: ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${Data.selectedWeather!.humidity} %",
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Pressure: ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${Data.selectedWeather!.pressure} hPa",
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Temperature feels like: ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${Data.selectedWeather!.feels_like} º",
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Wind speed: ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${Data.selectedWeather!.wind_speed} km/h",
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
