import 'package:flutter/material.dart';

void main() => runApp(MiCard());

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/man.jpg'),
            ),
            Text(
              'Grumpy Dude',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'THE GRUMPER',
              style: TextStyle(
                fontSize: 25,
                color: Colors.teal[100],
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
