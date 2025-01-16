import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});Colu
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  rollDice() {
    var diceRoll = Random().nextInt(6)+1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),

        SizedBox(height: 20,),

        TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28)),
          onPressed: rollDice,
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
