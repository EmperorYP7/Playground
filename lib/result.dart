import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it!';
    if(resultScore == 300)
    resultText = "Comeon in! You're invited on my party!";
    else if(resultScore == 0)
    resultText = "Boooooooooooooooooo!!!";
    else if(resultScore >=200)
    resultText = "You're allowed to be my friend. Lol!";
    else if(resultScore >=100)
    resultText = "Damn dude, you barely EXIST! :3";

    return resultText;

  }

  @override
  Widget build(BuildContext context) {
    return Center (
          child: Text(resultPhrase, 
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Color.fromRGBO(200, 200, 255, 1))),
        );
  }
}