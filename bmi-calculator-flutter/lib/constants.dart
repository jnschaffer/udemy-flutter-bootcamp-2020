import 'package:flutter/material.dart';

final Color kPrimaryColor = Color(0xFF0A0D22);
final Color kAccentColor = Color(0xFFFF0066);
final Color kCardColor = Color(0xFF1C1E32);
final Color kUnfocusedTextColor = Color(0xFFB9BBC7);
final Color kFocusedTextColor = Color(0xFFFEFEFF);

final ThemeData kMainTheme = ThemeData.dark().copyWith(
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: kPrimaryColor,
);

TextStyle kButtonTextStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
);

final TextStyle kLabelTextStyle = TextStyle(fontSize: 20, letterSpacing: 2);
