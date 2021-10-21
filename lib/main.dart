import 'package:flutter/material.dart ';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState(); //private:can't be used or manipulated from outside the class.
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0; //to change the question,its a property class variable
  final _question = [
    const {
      'questionText': 'What\'s your favorite colour?',
      'answer': [
        {'text': 'red', 'score': 4},
        {'text': 'blue', 'score': 3},
        {'text': 'black', 'score': 7},
        {'text': 'purple', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'dog', 'score': 2},
        {'text': 'cat', 'score': 5},
        {'text': 'mouse', 'score': 3},
        {'text': 'rabbit', 'score': 4},
      ],
    },
    {
      'questionText': 'Who\'s your favorite actor ?',
      'answer': [
        {'text': 'Lee Min-ho', 'score': 1},
        {'text': 'Ji Chang-wook', 'score': 1},
        {'text': 'Park Seo-joon', 'score': 1},
        {'text': 'Cha Eun-woo', 'score': 1},
      ],
    },
  ];
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    //fuction
    setState(() {
      _questionIndex = _questionIndex + 1;

      if (_questionIndex < _question.length) {
        print(_questionIndex);
      }
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App '),
          ),
          body: _questionIndex < _question.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  question: _question,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
