import 'package:flutter/material.dart';
import 'package:weatherapp/config.dart';
import 'package:weatherapp/repository/data.dart';
import 'package:weatherapp/network/weather_service.dart';
import 'package:weatherapp/views/detailed_weather_view.dart';

/*
Clase que se encarga de renderizar la vista que implementa 
la lista dias de la semana para consultar el tiempo
*/
class WeatherView extends StatelessWidget {
  const WeatherView({Key? key}) : super(key: key);

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
        body: weatherWidget());
  }

  static Widget weatherWidget() {
    if (Data.selectedCity != null) {
      return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return FutureBuilder(
              future: WeatherService.getWeather(
                  Data.selectedCity!.lat.toString(),
                  Data.selectedCity!.long.toString()),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView(
                    children: getWeather(context),
                  );
                } else if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                } else {
                  return Center(
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                        const Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: CircularProgressIndicator(),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text(Config.locales.loading + '...'),
                        )
                      ]));
                }
              });
        },
      );
    } else {
      return Center(
          child: Text(
        Config.locales.selectCity,
        style: const TextStyle(color: Colors.grey, fontSize: 18),
      ));
    }
  }

  static List<Widget> getWeather(context) {
    List<Widget> data = [];
    for (int i = 0; i < WeatherService.currentWeather.length; i++) {
      Widget aux = ListTile(
        leading: Image.network(WeatherService.iconUrl +
            WeatherService.currentWeather[i].icon +
            WeatherService.extension),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${DateTime.fromMillisecondsSinceEpoch(WeatherService.currentWeather[i].sunrise * 1000).day.toString()} "
              "- ${DateTime.fromMillisecondsSinceEpoch(WeatherService.currentWeather[i].sunrise * 1000).month.toString()} "
              "- ${DateTime.fromMillisecondsSinceEpoch(WeatherService.currentWeather[i].sunrise * 1000).year.toString()}",
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              WeatherService.currentWeather[i].description,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 235, 86, 62),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(Config.locales.temperature +
                    ": ${WeatherService.currentWeather[i].temp}º"),
                Text(Config.locales.humidity +
                    ": ${WeatherService.currentWeather[i].humidity} %"),
              ],
            )
          ],
        ),
        onTap: () {
          Data.selectedWeather = WeatherService.currentWeather[i];
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => DetailedWeatherView()));
        },
      );
      data.add(aux);
      data.add(const Divider());
    }
    return data;
  }
}
