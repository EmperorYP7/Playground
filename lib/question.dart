import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, color: Color.fromRGBO(255, 255, 255, 1)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
