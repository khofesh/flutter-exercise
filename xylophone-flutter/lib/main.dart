import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Widget generateButton({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        child: Text(''),
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              generateButton(soundNumber: 1, color: Colors.red),
              generateButton(soundNumber: 2, color: Colors.orange),
              generateButton(soundNumber: 3, color: Colors.yellow),
              generateButton(soundNumber: 4, color: Colors.green),
              generateButton(soundNumber: 5, color: Colors.teal),
              generateButton(soundNumber: 6, color: Colors.blue),
              generateButton(soundNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
