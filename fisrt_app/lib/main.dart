import 'package:flutter/material.dart';

import './quiz.dart'; // All its content becomes available
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _questionScore = 0;
  var _title = 'Quiz App';

  // Actualizar el estado de question index
  void answerQuestion(int score) {
    setState(() {
      _questionScore += score;
      _questionIndex++;
    });
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _questionScore = 0;
    });
  }

  void changeTitle() {
    setState(() {
      if (_title == 'Quiz App') {
        _title = 'Flutter App';
      } else {
        _title = 'Quiz App';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        // Se crea un Map
        'questionText': 'What\'s your favorite animal',
        'answers': [
          {'text': 'Eagle', 'score': 10},
          {'text': 'Pantera', 'score': 4},
          {'text': 'Hawk', 'score': 7}
        ],
      },
      {
        'questionText': 'What\'s your favorite Band',
        'answers': [
          {'text': 'Megadeth', 'score': 10},
          {'text': 'Metallica', 'score': 6},
          {'text': 'Pantera', 'score': 4}
        ],
      },
      {
        'questionText': 'What\'s your favorite color',
        'answers': [
          {'text': 'Blue', 'score': 10},
          {'text': 'White', 'score': 6},
          {'text': 'Green', 'score': 4},
          {'text': 'Black', 'score': 1}
        ],
      },
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      // tambien se pueden utilizar ternarios
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              answerQuestion: answerQuestion,
              titleHandler: changeTitle,
            )
          : Result(_questionScore, resetQuiz),
    ));
  }
}
