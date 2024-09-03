import 'package:first_app/style_text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

var randomizer=Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}
class _DiceRoller extends State<DiceRoller>{
  var currentImage= 2;

  void rollDice() {
    setState(() {
      currentImage=randomizer.nextInt(6)+1; //+1 is add to stop from getting the value zero
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "asset/images/dice-$currentImage.png",
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.all(
               15,
             ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const styledText("Roll Dice"),
        )
      ],
    );
  }
}