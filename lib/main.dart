import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 6},
        {'text': 'Red', 'score': 5},
        {'text': 'Greem', 'score': 1},
        {'text': 'White', 'score': 0},
        {'text': 'Yellow', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Dog', 'score': 0},
        {'text': 'Hamster', 'score': 2},
        {'text': 'Turtle', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favourite wild animal?',
      'answers': [
        {'text': 'Tiger', 'score': 1},
        {'text': 'Elephant', 'score': 0},
        {'text': 'Lion', 'score': 1},
        {'text': 'Giraffe', 'score': 0},
        {'text': 'Hyena', 'score': 4},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex++;
      } else
        _questionIndex = 0;
    });
    print("Answer chosen!");
    print("question index = " + _questionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikacja"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
