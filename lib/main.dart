import 'package:flutter/material.dart';
import 'package:flutter_complete_gui/result.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var nextQuestion = 0;
  var _totalScore = 0;
  final _questions = [
    {
      'questionText': 'What\'s your favorite Color',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite Animal',
      'answers': [
        {'text': 'Lion', 'score': 40},
        {'text': 'Tiger', 'score': 30},
        {'text': 'Elephant', 'score': 20},
        {'text': 'Snake', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favorite Car',
      'answers': [
        {'text': 'Mits', 'score': 30},
        {'text': 'Fer', 'score': 20},
        {'text': 'Lamb', 'score': 10}
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      nextQuestion++;
    });
    print(nextQuestion);
  }

  void _resetQuize() {
    setState(() {
      nextQuestion = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: nextQuestion < _questions.length
            ? Quiz(
                anserQuestion: _answerQuestion,
                questionIndex: nextQuestion,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuize),
      ),
    );
  }
}
