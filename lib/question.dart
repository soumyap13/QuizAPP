import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(
      this.questionText); //it will recive some data from main file coz its recive it from its contructor.

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
