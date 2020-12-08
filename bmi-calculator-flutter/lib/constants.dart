import 'package:flutter/material.dart';

final Color kPrimaryColor = Color(0xFF0A0D22);
final Color kAccentColor = Color(0xFFFF0066);
final Color kActiveCardColor = Color(0xFF1C1E32);
final Color kPassiveCardColor = Color(0x661C1E32);
final Color kTextColor = Color(0xFFF1F1F1);
final Color kDarkTextColor = Color(0x66B9BBC7);

final ThemeData kMainTheme = ThemeData.dark().copyWith(
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: kPrimaryColor,
);

TextStyle kButtonTextStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
);

final TextStyle kLabelTextStyle = TextStyle(
  fontSize: 20,
  letterSpacing: 2,
  color: kTextColor,
  fontWeight: FontWeight.bold,
);
