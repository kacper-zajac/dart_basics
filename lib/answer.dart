import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;

  Answer(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueAccent,
        child: Text(
          answerText,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        onPressed: selectHandler,
        highlightColor: Colors.white,
      ),
    );
  }
}
