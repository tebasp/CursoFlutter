import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  final VoidCallback titleHandler;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
    required this.titleHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Lee el primer elemnto del Map, hace cast a String
        Question(questions[questionIndex]['questionText'] as String),

        // Aqui solo se pasan Widgets
        // Se hace un spread, para devolver todos los widgets directo y no la List
        // Convertimos  como List para poder leer el value
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(() => answerQuestion(answer['score']),
                answer['text'].toString())) // Map retorna un iterable
            .toList(), // Lo convertimos a una lista

        ElevatedButton(
            onPressed: titleHandler,
            child: Text('Change title'),
            style: ElevatedButton.styleFrom(primary: Colors.cyan))
      ],
    );
  }
}
