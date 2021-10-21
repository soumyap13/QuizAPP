import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler; //value store has to be a pointer to a fn.
  final String answerText;
  Answer(this.selectHandler, this.answerText); //constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        textColor: Colors.white,
        color: Colors.blue,
      ),
    );
  }
}
