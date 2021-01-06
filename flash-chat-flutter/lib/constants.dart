import 'package:flutter/material.dart';

const String welcomeScreenRoute = 'welcome_screen_route';
const String registrationScreenRoute = 'registration_screen_route';
const String loginScreenRoute = 'login_screen_route';
const String chatScreenRoute = 'chat_screen_route';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);
