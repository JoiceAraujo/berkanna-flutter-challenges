import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
        appBarTheme: AppBarTheme(color: Colors.red),
      ),
      home: DicePage(),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftDiceNumber = 1;
  int _rightDiceNumber = 1;

  void _rollDices() {
    setState(() {
      _leftDiceNumber = 1 + Random().nextInt(6);
      _rightDiceNumber = 1 + Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dicee')),
      body: Center(
        child: Row(
          children: [
            Dice(_leftDiceNumber, _rollDices),
            Dice(_rightDiceNumber, _rollDices),
          ],
        ),
      ),
    );
  }
}

class Dice extends StatelessWidget {
  final Function _onPressed;
  final int _diceNumber;

  Dice(this._diceNumber, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        child: Image.asset(
          'images/dice$_diceNumber.png',
        ),
        onPressed: _onPressed,
      ),
    );
  }
}
