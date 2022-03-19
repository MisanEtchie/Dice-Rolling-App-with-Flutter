import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: Text('Roll Some Dice!'),
          backgroundColor: Colors.blueGrey[900],
          elevation: 0,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  void changeDiceFace() {
    setState(
      () {
        rightdicenumber = Random().nextInt(5) + 1;
        leftdicenumber = Random().nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$leftdicenumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$rightdicenumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
