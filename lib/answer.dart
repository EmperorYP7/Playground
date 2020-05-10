import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String str;
  Answer(this.selectHandler, this.str);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
      width: double.maxFinite,
      child: RaisedButton(
              child: Text(str,
              style: TextStyle(fontSize: 20),
              ),
              onPressed: selectHandler,
            ),
    );
  }
}