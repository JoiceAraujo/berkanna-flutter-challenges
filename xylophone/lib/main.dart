import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            XylophoneKey(Colors.red, 1),
            XylophoneKey(Colors.orange, 2),
            XylophoneKey(Colors.yellow, 3),
            XylophoneKey(Colors.green, 4),
            XylophoneKey(Colors.teal, 5),
            XylophoneKey(Colors.blue, 6),
            XylophoneKey(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}

class XylophoneKey extends StatelessWidget {
  final Color _color;
  final int _soundNumber;

  XylophoneKey(this._color, this._soundNumber);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        child: null,
        color: _color,
        onPressed: () {
          _playSound(_soundNumber);
        },
      ),
    );
  }

  void _playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}
