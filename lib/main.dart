import "package:flutter/material.dart";
import 'package:my_dice_app/dice_roller.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            "My Dice App",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: const Center(
          child: DiceRoller(),
        ),
      ),
    ),
  ));
}
