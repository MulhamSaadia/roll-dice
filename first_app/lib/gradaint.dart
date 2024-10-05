import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

class Gradaint extends StatelessWidget {
  Gradaint(this.color, {super.key});
  List<Color> color;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
