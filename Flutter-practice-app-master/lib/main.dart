import 'package:flutter/material.dart';
import './mainLable.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  var _counter = 0;
  var _questionText = 'How are you?';

  var quections = [
    {
      'quection' : 'What\'s your favourite colour?',
      'answer' : ['red', 'blue', 'green', 'black']
    },
    {
      'quection' : 'What\'s your favourite animal?',
      'answer' : ['dog', 'cat', 'rabbit', 'cow']
    },
    {
      'quection' : 'What\'s your favourite programming language?',
      'answer' : ['c', 'c++', 'c#', 'dart']
    }
  ];

  void getAnswer(){
    setState(() {
      if(_counter == 0){
        _questionText = "How old are you";
        _counter++;
      }else{
        _questionText = 'How are you?';
        _counter--;
      }
    });
    print('button clicked !');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is title'),
        ),
        body: Column(children: [
          Question(_questionText),
          answer("fine",getAnswer),
          answer("normal",getAnswer),
          answer("not fine",getAnswer),
        ],),
      ),
    );
  }
}
