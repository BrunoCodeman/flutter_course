import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
      "questionText": "What's your favorite drink?",
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
                ? Result()
                : Quiz(
                    answerQuestion: _addAnswer,
                    questionIndex: _questionIndex,
                    questions: this.questions,
                  )),
      ),
    );
  }
}
