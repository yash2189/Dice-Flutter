import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
            title: Center(
              child: Text('Dicee'),
            ),
            backgroundColor: Colors.red),
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
  int leftDiceImage = 1;
  int rightDiceImage = 1;
  void diceImages() {
    setState(() {
      leftDiceImage = Random().nextInt(6) + 1;
      rightDiceImage = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceImages();
              },
              child: Image.asset('images/dice$leftDiceImage.png'),
              splashColor: Colors.red.shade600,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceImages();
              },
              child: Image.asset('images/dice$rightDiceImage.png'),
              splashColor: Colors.red.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
