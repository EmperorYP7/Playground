import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  int _totalScore = 0;
  final _questions = const [
      {
        'questionText': "What's your favourite color?",
        'answers': [
          {'text': 'Black', 'score': 100}, 
          {'text':'Red', 'score': 20}, 
          {'text':'Green', 'score': 10}, 
          {'text':'White', 'score': 0}
          ]
      },
      {
        'questionText': "What's your favourite animal?",
        'answers': [
          {'text':'Tiger', 'score':20}, 
          {'text':'Platepus', 'score':100}, 
          {'text':'Dog', 'score': 100}, 
          {'text':'Rabbit', 'score': 20}
          ]
      },
      {
        'questionText': "Who's your favourite artist?",
        'answers': [
          {'text':'Katty Perry', 'score': 10}, 
          {'text':'Charlie Puth', 'score':100}, 
          {'text':'Led Zapplein', 'score':50}, 
          {'text':'Rahul Gandhi', 'score': 100}
          ]
      },
    ];
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore+=score;
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
        
        body: _questionIndex < _questions.length ? Quiz(
          questions: _questions,
          questionIndex: _questionIndex,
          answerQuestion: _answerQuestion
        )
        : Result(_totalScore),
      ),
    );
  }
}
