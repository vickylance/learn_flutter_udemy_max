import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _onPressed;
  final String _answerText;

  Answer(this._answerText, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Color.fromARGB(255, 46, 46, 178),
        child: Text(_answerText),
        onPressed: _onPressed,
      ),
    );
  }
}