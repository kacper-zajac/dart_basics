import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'wow, awesome!';
    if (resultScore > 8) {
      resultText += ' you kinda psycho though';
    } else {
      resultText += ' and a good score as well';
    }
    return resultText + '\nyour score equals ' + resultScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart quiz!',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
