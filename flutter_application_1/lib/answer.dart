import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerResult;
  final String answerTest;

  Answer(this.answerResult, this.answerTest);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        child: Text(answerTest),
        onPressed: answerResult,
        color: Colors.blue,
      ),
    );
  }
}
