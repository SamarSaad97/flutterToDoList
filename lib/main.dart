import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var queIndex = 0;
  var scoreTotal = 0;

  void _answerQue(int score) {
    scoreTotal += score;
    setState(() {
      queIndex = queIndex + 1;
    });
  }

  void handleRestart() {
    setState(() {
      queIndex = 0;
      scoreTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var QuestionsList = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1},
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 3},
          {'text': 'Snake', 'score': 11},
          {'text': 'Elephant', 'score': 5},
          {'text': 'Lion', 'score': 9},
        ],
      },
      {
        'questionText': 'what\'s your favorite meal?',
        'answers': [
          {'text': 'Burgers', 'score': 5},
          {'text': 'soup', 'score': 1},
          {'text': 'salad', 'score': 0},
          {'text': 'fries', 'score': 2},
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First APP'),
          backgroundColor: Colors.blueGrey,
        ),
        body: (queIndex < QuestionsList.length)
            ? Quiz(QuestionsList, _answerQue, queIndex)
            : Result(this.scoreTotal, this.handleRestart),
      ),
    );
  }
}
