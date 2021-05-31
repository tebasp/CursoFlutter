import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback cb;
  final String buttonText;

  Answer(this.cb, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        child: Text(buttonText),
        color: Colors.blue,
        onPressed: cb,
        textColor: Colors.white,
      ),
    );
  }
}
