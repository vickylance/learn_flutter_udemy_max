import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _finalScore;
  final Function _resetQuiz;

  Result(this._finalScore, this._resetQuiz);

  String get resultPhrase {
    String resultString;
    if (_finalScore < 10) {
      resultString = "You are an amazing personality!";
    } else if (_finalScore < 12) {
      resultString = "You are mostly a likabble person";
    } else if (_finalScore < 16) {
      resultString = "You are a very ... strange person";
    } else {
      resultString = "You are a terrible person";
    }
    return resultString;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: _resetQuiz,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
