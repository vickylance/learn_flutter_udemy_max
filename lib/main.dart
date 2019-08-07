import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentQuestion = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _currentQuestion++;
    });
    print("Answerd!");
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestion = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = const [
      {
        "question": "What's your favorite color?",
        "answer": [
          {
            "text": "black",
            "score": 10,
          },
          {
            "text": "green",
            "score": 3,
          },
          {
            "text": "red",
            "score": 9,
          },
          {
            "text": "white",
            "score": 1,
          }
        ],
      },
      {
        "question": "What's is your favorite animal?",
        "answer": [
          {
            "text": "Panther",
            "score": 5,
          },
          {
            "text": "Snake",
            "score": 10,
          },
          {
            "text": "Snail",
            "score": 1,
          }
        ],
      },
      {
        "question": "What is you favorite food?",
        "answer": [
          {
            "text": "Lamb Brain",
            "score": 10,
          },
          {
            "text": "Sandwich",
            "score": 3,
          },
          {
            "text": "salad",
            "score": 1,
          }
        ],
      }
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _currentQuestion < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  currentQuestion: _currentQuestion,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
