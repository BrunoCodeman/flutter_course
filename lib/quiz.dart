import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  const Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]["questionText"] as String),
      // ... funciona como em JS: separa a lista em items individuais
      ...(questions[questionIndex]["answers"] as List<String>).map((answer) {
        return Answer(answerQuestion, answer);
      }).toList()
    ]);
  }
}
