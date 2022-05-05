import 'package:flutter/material.dart';
import 'package:weatherapp/config.dart';
import 'package:weatherapp/settings_controller.dart';
import 'package:weatherapp/views/cities_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/*
Punto de entrada
*/
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final settingsController = SettingsController();
  await settingsController.loadSettings();
  runApp(MyApp(
    settingsController: settingsController,
  ));
}

/*
Clase principal de la App
*/
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: settingsController,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Config.mainColor,
            ),
            title: 'Weather App',
            home: const CitiesView(),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en'), // Inglés
              Locale('es'), // Español
            ],
          );
        });
  }
}
