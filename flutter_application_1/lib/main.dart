import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerChoosen() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = const [
      {
        'question': "what is your favrout color",
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'question': "what'\s your fav Animal",
        'answers': ['Dog', 'Cat', 'Chimp', 'Frog']
      },
      {
        'question': "what is your fav logo",
        'answers': ['Adidas', 'Rebook', 'Nike', 'Guiu']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerChoosen, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
