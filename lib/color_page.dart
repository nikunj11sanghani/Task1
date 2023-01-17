import 'package:flutter/material.dart';
import 'package:task_1/answer_class.dart';
import 'package:task_1/last_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int quindex = 0; // for the next question increase the index
  int count = 0; // for the score you have won and base on that you get result
  bool endofquiz = null; // when the endofquiz is tre then we navigate on result page
  bool answerwasselected = false; // if it is true then we get our index increment

  void clickit(bool answerscore) {
    setState(() { // this is because we want to change the state
      answerwasselected = true;
      if (answerscore) {
        count++;// if your answer match with your correct answer then you get your score + 1
      }
      if (quindex == (arrquestion.length - 1)) {
        Navigator.push( // after the last question you will navigate to result page
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
                  clickit(answer['score']); //clickit function has one parameter
                                            // which collects the answer and if it is match with your function then you get your score+
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


