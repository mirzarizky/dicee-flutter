import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      title: 'Dicee',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 6;

  void getDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(5) + 1;
      rightDiceNumber = Random().nextInt(5) + 1;
    });
  }

  Widget diceFace(int diceNumber) {
    return Expanded(
      child: FlatButton(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('images/dice$diceNumber.png'),
        onPressed: () {
          getDice();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          diceFace(leftDiceNumber),
          diceFace(rightDiceNumber),
        ],
      ),
    );
  }
}
