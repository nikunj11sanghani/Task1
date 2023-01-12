import 'package:flutter/material.dart';
import 'package:task_1/answer_class.dart';
import 'package:task_1/last_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int quindex = 0;
  int count = 0;
  bool endofquiz = null;
  bool answerwasselected = false;

  void clickit(bool answerscore) {
    setState(() {
      answerwasselected = true;
      if (answerscore) {
        count++;
      }
      if (quindex == (arrquestion.length - 1)) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LastPage(
          count
        )));
      } else {
        quindex++;
      }
    });
  }

  final arrquestion = [
    {
      'Question': "What's Your Favorite Color?",
      'answer': [
        {'answerText': 'Black', 'score': true},
        {'answerText': 'Red', 'score': false},
        {'answerText': 'Green', 'score': false},
        {'answerText': 'White', 'score': false},
      ]
    },
    {
      'Question': "What's Your Favorite Animal?",
      'answer': [
        {'answerText': 'Rabbit', 'score': false},
        {'answerText': 'Snake', 'score': false},
        {'answerText': 'Elephant', 'score': false},
        {'answerText': 'Lion', 'score': true},
      ]
    },
    {
      'Question': "What's Your Favorite Programing Language?",
      'answer': [
        {'answerText': 'C', 'score': false},
        {'answerText': 'C++', 'score': false},
        {'answerText': 'Java', 'score': false},
        {'answerText': 'Dart', 'score': true},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Quiz"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text(
                arrquestion[quindex]['Question'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              ...(arrquestion[quindex]['answer'] as List<Map<String, Object>>)
                  .map(
                (answer) => Counter(answer['answerText'], () {
                  clickit(answer['score']);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


