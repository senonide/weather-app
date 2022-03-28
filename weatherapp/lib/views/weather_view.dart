import 'package:flutter/material.dart';
import 'package:weatherapp/config.dart';
import 'package:weatherapp/models/data.dart';
import 'package:weatherapp/services/weather_service.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Weather",
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: StreamBuilder(
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return FutureBuilder(
                future: WeatherService.getWeather(
                    Data.selectedCity!.lat.toString(),
                    Data.selectedCity!.long.toString()),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView(
                      children: getWeather(),
                    );
                  } else if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else {
                    return Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                          Padding(
                              padding: EdgeInsets.only(top: 50),
                              child: SizedBox(
                                width: 80,
                                height: 80,
                                child: CircularProgressIndicator(),
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Text('Loading...'),
                          )
                        ]));
                  }
                });
          },
        ));
  }

  List<Widget> getWeather() {
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
                style: TextStyle(
                    color: Config.mainColor, fontWeight: FontWeight.bold),
              ),
              Text(
                  "${WeatherService.currentWeather[i].mainWeather}, ${WeatherService.currentWeather[i].description}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Temperature: ${WeatherService.currentWeather[i].temp}º"),
                  Text(
                      "Humidity: ${WeatherService.currentWeather[i].humidity} %"),
                ],
              )
            ],
          ));
      data.add(aux);
      data.add(const Divider());
    }
    return data;
  }
}
