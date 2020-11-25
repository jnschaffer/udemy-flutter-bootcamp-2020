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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/man.jpg'),
                ),
              ),
              Text(
                'Grumpy Dude',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'THE GRUMPER',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.teal[100],
                  letterSpacing: 0.8,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  thickness: 2,
                  color: Colors.white30,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                  ),
                  title: Text('412 34 567'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                  ),
                  title: Text('grumpy@grumper.com'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
