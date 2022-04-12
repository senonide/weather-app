import 'package:flutter/material.dart';
import 'package:weatherapp/config.dart';
import 'package:weatherapp/repository/data.dart';
import 'package:weatherapp/views/config_view.dart';
import 'package:weatherapp/views/weather_view.dart';

/*
Clase que se encarga de renderizar la vista que implementa la lista de ciudades a seleccionar
*/
class CitiesView extends StatefulWidget {
  const CitiesView({Key? key}) : super(key: key);

  @override
  State<CitiesView> createState() => _State();
}

class _State extends State<CitiesView> {
  @override
  void initState() {
    super.initState();
  }

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
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const ConfigView()));
            },
          ),
          title: Text(
            Config.locales.title,
            style: const TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? ListView(
                    children: getCities(context, orientation),
                  )
                : Row(
                    children: [
                      Flexible(
                          child: ListView(
                        children: getCities(context, orientation),
                      )),
                      const VerticalDivider(
                        thickness: 2,
                      ),
                      Flexible(child: WeatherView.weatherWidget())
                    ],
                  );
          },
        ));
  }

  List<Widget> getCities(context, orientation) {
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
              "(" +
                  Config.locales.latitude +
                  ": ${Data.cities[i].lat}, " +
                  Config.locales.longitude +
                  ": ${Data.cities[i].long})",
              style: const TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey),
            )
          ],
        ),
        onTap: () async {
          if (orientation == Orientation.portrait) {
            Data.selectedCity = Data.cities[i];
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const WeatherView()));
          } else {
            setState(() {
              Data.selectedCity = Data.cities[i];
            });
          }
        },
      );
      widgets.add(aux);
      widgets.add(const Divider());
    }
    return widgets;
  }
}
