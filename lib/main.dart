import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: appBar(),
        backgroundColor: Colors.blueGrey.shade800,
        body: Center(
          child: Image(
            image: AssetImage('assets/diamond.png'),
          ),
        ),
      ),
    ),
  );
}

AppBar appBar() {
  return AppBar(
    title: Text('I am Rich'),
    backgroundColor: Colors.blueGrey.shade900,
  );
}
