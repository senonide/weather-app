import 'package:flutter/material.dart';
import 'package:weatherapp/repository/data.dart';
import 'package:weatherapp/view/weather_view.dart';

class CitiesView extends StatelessWidget {
  const CitiesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 235, 86, 62),
          elevation: 3,
          leading: IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          title: const Text(
            "Weather App",
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: ListView(
          children: getCities(context),
        ));
  }

  List<Widget> getCities(context) {
    List<Widget> widgets = [];
    for (int i = 0; i < Data.cities.length; i++) {
      ListTile aux = ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Data.cities[i].name,
              style:
                  const TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
            ),
            Text(
              "(Latitude: ${Data.cities[i].lat}, Longitude: ${Data.cities[i].long})",
              style: const TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey),
            )
          ],
        ),
        onTap: () async {
          Data.selectedCity = Data.cities[i];
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => const WeatherView()));
        },
      );
      widgets.add(aux);
      widgets.add(const Divider());
    }
    return widgets;
  }
}
