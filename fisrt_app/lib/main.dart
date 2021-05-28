import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var questions = ['Favorite color', 'Favorite animal'];

  // Actualizar el estado de question index
  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: <Widget>[
          // Lee el arreglo
          Text(questions[questionIndex]),
          RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
          RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion)
        ],
      ),
    ));
  }
}
