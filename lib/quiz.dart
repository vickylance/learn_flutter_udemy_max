import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int currentQuestion;

  Quiz({
    @required this.questions,
    @required this.currentQuestion,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[currentQuestion]["question"]),
        ...(questions[currentQuestion]["answer"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer["text"], () => answerQuestion(answer["score"]));
        }).toList(),
      ],
    );
  }
}
