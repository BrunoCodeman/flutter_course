import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _addAnswer() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          children: [
            Text(_questionIndex.toString()),
            Padding(
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: _addAnswer,
                child: Text("+"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
