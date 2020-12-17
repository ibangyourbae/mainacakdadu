import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceRollingApp());
}

class DiceRollingApp extends StatefulWidget {
  @override
  _DiceRollingAppState createState() => _DiceRollingAppState();
}

class _DiceRollingAppState extends State<DiceRollingApp> {
  int nextDiceImage = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[200],
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.redAccent,
          title: Text('Main Acak Dadu'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Expanded(
                flex: 1,
                child: Center(
                  child: Image.asset('assets/dice/Dice-$nextDiceImage.png'),
                )),
            Spacer(),
            RaisedButton(
              onPressed: () {
                setState(() {
                  nextDiceImage = Random().nextInt(6) + 1;
                });
              },
              child: Text('Roll the dice'),
            ),
          ],
        ),
      ),
    );
  }
}
