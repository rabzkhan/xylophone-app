import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }
  Expanded buildKey ({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber:1),
              buildKey(color: Colors.orange, soundNumber:2),
              buildKey(color: Colors.yellow, soundNumber:3),
              buildKey(color: Colors.green, soundNumber:4),
              buildKey(color: Colors.tealAccent, soundNumber:5),
              buildKey(color: Colors.blue, soundNumber:6),
              buildKey(color: Colors.blueGrey, soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
