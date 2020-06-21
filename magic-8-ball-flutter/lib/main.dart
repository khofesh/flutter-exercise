import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: BallAnswer(),
    );
  }
}

class BallAnswer extends StatefulWidget {
  @override
  _BallAnswerState createState() => _BallAnswerState();
}

class _BallAnswerState extends State<BallAnswer> {
  int answerNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            answerNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$answerNumber.png'),
      ),
    );
  }
}
