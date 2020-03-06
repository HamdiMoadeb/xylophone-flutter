import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String nb) {
    final player = AudioCache();
    player.play('note$nb.wav');
  }

  Expanded buildKey(String nb, Color clr) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(nb);
        },
        color: clr,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey("1", Colors.red),
              buildKey("2", Colors.orange),
              buildKey("3", Colors.yellow),
              buildKey("4", Colors.green),
              buildKey("5", Colors.teal),
              buildKey("6", Colors.blue),
              buildKey("7", Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
