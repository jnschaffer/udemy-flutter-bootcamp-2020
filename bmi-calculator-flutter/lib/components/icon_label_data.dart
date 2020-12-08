import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconLabelData extends StatelessWidget {
  final Color color;
  final String label;
  final IconData icon;

  IconLabelData({this.color, this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          color: color,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: kLabelTextStyle.copyWith(color: color),
        )
      ],
    );
  }
}
