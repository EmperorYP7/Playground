import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

//void main()
//{
//   runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final questions = const [
      {
        'questionText': "What's your favourite color?",
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': "What's your favourite animal?",
        'answers': ['Tiger', 'Platepus', 'Dog', 'Rabbit']
      },
      {
        'questionText': "Who's your favourite artist?",
        'answers': ['Katty Perry', 'Charlie Puth', 'Led Zapplein', 'Rahul Gandhi']
      },
    ];
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
      if(_questionIndex < questions.length)
      {
        
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.8),
        appBar: AppBar(
          title: Text('Peronality Test'),
          backgroundColor: Color.fromRGBO(50, 50, 250, 1),
        ),
        
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
