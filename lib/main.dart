import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      EightBall(),
    );

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ballNumber = 3;
  void randomNum() {
    setState(() {
      return ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Felix´ Eightball',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Felix´ EightBall',
              style: TextStyle(color: Colors.amber[300]),
            ),
          ),
          backgroundColor: Colors.deepOrange[900],
        ),
        backgroundColor: Colors.deepOrange,
        body: SafeArea(
          child: Container(
            child: Center(
              child: FlatButton(
                onPressed: randomNum,
                child: Image.asset("images/ball$ballNumber.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
