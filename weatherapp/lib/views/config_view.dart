import 'package:flutter/material.dart';
import 'package:weatherapp/config.dart';
import 'package:weatherapp/views/cities_view.dart';

class ConfigView extends StatefulWidget {
  const ConfigView({Key? key}) : super(key: key);

  @override
  State<ConfigView> createState() => _State();
}

class _State extends State<ConfigView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 235, 86, 62),
          title: Text(Config.locales.config),
          elevation: 3,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const CitiesView()));
            },
          ),
        ),
        body: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Config.locales.language + ": "),
              const SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  child: Text(Config.language),
                  onPressed: () {
                    setState(() {
                      Config.changeLocales();
                    });
                  })
            ],
          ),
        ]));
  }
}
