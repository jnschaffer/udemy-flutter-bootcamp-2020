import 'package:bmi_calculator/components/main_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmi;

  ResultPage(bmi) : this.bmi = bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              'Your result',
              textAlign: TextAlign.left,
              style: kLabelTextStyle.copyWith(
                fontSize: 50,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      //TODO: give responsive answer to weight.
                      'NORMAL',
                      textAlign: TextAlign.center,
                      style: kLabelTextStyle.copyWith(
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      bmi.toStringAsFixed(1),
                      style: kLabelTextStyle.copyWith(
                        fontSize: 90,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      //TODO: give responsive answer to weight.
                      'You\'ve done a great job. \n Keep it up!',
                      textAlign: TextAlign.center,
                      style: kLabelTextStyle.copyWith(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: MainButton(
              title: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
