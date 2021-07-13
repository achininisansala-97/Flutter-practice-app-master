import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String quectionText;

  Question(this.quectionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        quectionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
        ),
    );
  }
}