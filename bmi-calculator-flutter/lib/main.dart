import 'package:flutter/material.dart';
import 'constants.dart';
import 'pages/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: kMainTheme,
      home: InputPage(),
    );
  }
}

//få møte med nav på nyåret
