import 'dart:ui';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // Final xq es stateless
  // Su valor nunca cambia luego de ser inicializado
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
