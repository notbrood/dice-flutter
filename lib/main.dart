import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  @override

  int leftDieNumber = 3;
  int rightDieNumber = 2;
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: TextButton(onPressed: roll ,child: Image.asset('images/dice$leftDieNumber.png'),)
          ),
          Expanded(
              child: TextButton(onPressed: roll ,child: Image.asset('images/dice$rightDieNumber.png'),)
          ),
        ],
      ),
    );
  }
  roll() {
    setState((){
    leftDieNumber = Random().nextInt(6) + 1;
    rightDieNumber = Random().nextInt(6) + 1;
    }
    );
  }
}


