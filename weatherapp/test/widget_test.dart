import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weatherapp/config.dart';
import 'package:weatherapp/main.dart';

import 'package:weatherapp/views/cities_view.dart';
import 'package:weatherapp/views/config_view.dart';
import 'package:weatherapp/views/detailed_weather_view.dart';
import 'package:weatherapp/views/weather_view.dart';

/*
Función para la realización de pruebas
*/
void main() {
  testWidgets('All widgets in the app', (WidgetTester tester) async {
    // CitiesView ----------------------------------
    await tester.pumpWidget(const MyApp());

    expect(find.text(Config.locales.athens), findsOneWidget);
    expect(find.text(Config.locales.barcelona), findsOneWidget);
    expect(find.text(Config.locales.belgium), findsOneWidget);
    expect(find.text(Config.locales.berlin), findsOneWidget);
    expect(find.text(Config.locales.bern), findsOneWidget);
    expect(find.text(Config.locales.bilbao), findsOneWidget);
    expect(find.text(Config.locales.cadiz), findsOneWidget);
    expect(find.text(Config.locales.gijon), findsOneWidget);
    expect(find.text(Config.locales.lisbon), findsOneWidget);
    expect(find.text(Config.locales.london), findsOneWidget);
    expect(find.text(Config.locales.madrid), findsOneWidget);
    expect(find.text(Config.locales.oviedo), findsOneWidget);
    expect(find.text(Config.locales.paris), findsOneWidget);
    expect(find.text(Config.locales.rome), findsOneWidget);
    expect(find.text(Config.locales.sevilla), findsOneWidget);
    expect(find.text(Config.locales.valencia), findsOneWidget);
    expect(find.text(Config.locales.valladolid), findsOneWidget);
    expect(find.text(Config.locales.vienna), findsOneWidget);

    await tester.tap(find.bySemanticsLabel(Config.locales.oviedo));
    await tester.pump();

    // WeatherView ---------------------------------
    await tester.pumpWidget(const WeatherView());

    // DetailedWeatherView -------------------------
    await tester.pumpWidget(const DetailedWeatherView());

    // ConfigView ----------------------------------
    await tester.pumpWidget(const ConfigView());

    expect(find.text("Español"), findsOneWidget);
    expect(find.text("English"), findsNothing);

    await tester.tap(find.bySemanticsLabel("Español"));
    await tester.pump();

    expect(find.text("Español"), findsNothing);
    expect(find.text("English"), findsOneWidget);
  });
}
