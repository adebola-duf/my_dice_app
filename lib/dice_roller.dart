import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

final randomizer = Random();

class _DiceRollerState extends State<DiceRoller> {
  var dice1ImageN = randomizer.nextInt(6) + 1;
  var dice2ImageN = randomizer.nextInt(6) + 1;
  late int total;

  _DiceRollerState(){
    total = dice1ImageN + dice2ImageN;
  }

  void changeDice() {
    setState(() {
      dice1ImageN = randomizer.nextInt(6) + 1;
      dice2ImageN = randomizer.nextInt(6) + 1;
      total = dice1ImageN + dice2ImageN;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Total: $total",
          style: const TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/dice-$dice1ImageN.png",
              width: 160,
            ),
            Image.asset(
              "images/dice-$dice2ImageN.png",
              width: 160,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 33, 33, 33),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(20),
          ),
          onPressed: changeDice,
          child: const Text("Roll The Die!!"),
        ),
      ],
    );
  }
}
