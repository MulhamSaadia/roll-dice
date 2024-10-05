import 'package:flutter/material.dart';
import 'dart:math';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerstate();
  }
}

var dice = 2;

class _DiceRollerstate extends State<DiceRoller> {
  void onPressed() {
    setState(
      () {
        dice = randomize.nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$dice.png',
          width: 200,
        ),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
            /*padding: const EdgeInsets.only(
              top: 20,
            ),*/
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
