import 'package:flutter/material.dart';
import 'package:flutter_basics/answer.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = [
    {
      "questionText": "What's your favorite colour?",
      "answers": ["Blue", "Black", "White"]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Cat", "Dog", "Capybara"]
    },
    {
      "questionText": "What's your drink?",
      "answers": ["Juice", "Wine", "Milk"]
    }
  ];
  var _questionIndex = 0;
  void _addAnswer() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Container(
          child: _questionIndex >= questions.length
              ? Padding(
                  padding: EdgeInsets.all(16),
                  child: Text("No more questions",
                      style: TextStyle(
                        fontSize: 16,
                      )),
                )
              : Column(children: [
                  Question(questions[_questionIndex]["questionText"] as String),
                  // ... funciona como em JS: separa a lista em items individuais
                  ...(questions[_questionIndex]["answers"] as List<String>)
                      .map((answer) {
                    return Answer(_addAnswer, answer);
                  }).toList()
                ]),
        ),
      ),
    );
  }
}
