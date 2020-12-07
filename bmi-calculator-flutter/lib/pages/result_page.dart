import 'package:bmi_calculator/components/main_button.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: MainButton(
        title: 'RE-CALCULATE',
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
