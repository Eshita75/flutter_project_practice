import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

class GradientContainer extends StatelessWidget {
   GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  var activeDiceImage = 'assets/images/dice-1.png';

  rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: colors,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
