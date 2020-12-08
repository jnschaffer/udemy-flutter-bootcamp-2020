import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();

  void playSound(int number) {
    player.play('note$number.wav');
  }

  Expanded tangent(Color color, int soundFile) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundFile);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              tangent(Colors.red, 1),
              tangent(Colors.orange, 2),
              tangent(Colors.yellow, 3),
              tangent(Colors.green, 4),
              tangent(Colors.teal, 5),
              tangent(Colors.blue, 6),
              tangent(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
