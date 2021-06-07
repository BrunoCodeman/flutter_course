import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPressed;
  final String answerText;
  const Answer(this.onPressed, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(10),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder())),
      onPressed: this.onPressed,
      child: Text(this.answerText),
    ));
  }
}
