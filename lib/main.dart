import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              button(1, Colors.red),
              button(2, Colors.blue),
              button(3, Colors.yellow),
              button(4, Colors.green),
              button(5, Colors.pink),
              button(6, Colors.orange),
              button(7, Colors.teal),
            ],
          ),
        ),
      ),
    );
  }

  Expanded button(int number,Color color) {
    return Expanded(
      child: TextButton(
                style: TextButton.styleFrom(backgroundColor: color),
                onPressed: () {
                  play(number);
                },
                child: Text(''),
              ),
    );
  }
}

play(int number) async {
  final audioPlayer = AudioCache(prefix: 'assets/');
  audioPlayer.play('note$number.wav');
}
