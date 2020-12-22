import 'package:clima/screens/city_screen.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:clima/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: routeLoading,
      routes: {
        routeCity: (context) => CityScreen(),
        routeLocation: (context) => LocationScreen(),
        routeLoading: (context) => LoadingScreen(),
      },
    );
  }
}
