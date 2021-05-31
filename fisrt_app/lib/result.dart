import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;

  Result(this.totalScore, this.resetHandler);

  // Getter
  String get resultPhrase {
    String resultText;

    if (totalScore <= 15) {
      resultText = 'You almost did it';
    } else {
      resultText = 'You Really did it';
    }

    return '$resultText $totalScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text(
            'Reset Quiz',
            style: TextStyle(fontSize: 20),
          ),
          onPressed: resetHandler,
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
