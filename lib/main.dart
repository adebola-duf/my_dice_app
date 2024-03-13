import "package:flutter/material.dart";
import 'package:my_dice_app/dice_roller.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 73, 49, 113),
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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.grey,
            ],
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ),
      ),
    ),
  ));
}
