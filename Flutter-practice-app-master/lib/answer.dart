import 'package:flutter/material.dart';

class answer extends StatelessWidget {

  final String buttonLable;
  final Function selectHandler;

  answer(this.buttonLable, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: 
      RaisedButton(
        child: Text(buttonLable), 
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectHandler,
        ),
    );
  }
}