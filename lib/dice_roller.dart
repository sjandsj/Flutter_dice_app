import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var diceImage = 'assets/images/dice-1.png';

  void rollDice() {
    int diceNum =Random().nextInt(6) + 1;
    setState(() {
      diceImage = 'assets/images/dice-$diceNum.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(diceImage, width: 200),
        SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28, fontWeight: FontWeight(600)),
          ),
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
