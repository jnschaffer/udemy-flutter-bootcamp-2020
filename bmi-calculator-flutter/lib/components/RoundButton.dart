import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundButton extends StatelessWidget {
  final Function onLongPress;
  final Function onPressed;
  final IconData icon;

  RoundButton({this.icon, this.onPressed, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: FaIcon(
        icon,
        color: kTextColor,
      ),
      onPressed: onPressed,
      onLongPress: onLongPress,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      fillColor: Color(0xFF4C4F5E),
      elevation: 0,
    );
  }
}
