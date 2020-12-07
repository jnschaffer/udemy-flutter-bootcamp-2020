import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class MainButton extends StatelessWidget {
  final String title;
  final Function onTap;

  MainButton({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: kButtonTextStyle,
          ),
        ),
        decoration: BoxDecoration(
          color: kAccentColor,
        ),
      ),
    );
  }
}
