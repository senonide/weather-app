import 'package:flutter/material.dart';
import 'package:weatherapp/config.dart';
import 'package:weatherapp/view/cities_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Config.mainColor,
        ),
        title: 'Weather App',
        home: const CitiesView(),
        debugShowCheckedModeBanner: false);
  }
}
