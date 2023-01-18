import 'package:flutter/material.dart';

import 'last_page.dart';

class Handle extends ChangeNotifier {
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

  int quindex = 0;
  int count = 0;
  bool endofquiz;
  bool answerwasselected = false;
  String resultText;

  String get resultPhrase {
    String resultText;
    if (count == 3) {
      resultText = 'You are awesome!';
    } else if (count == 2) {
      resultText = 'You Are Intermediate';
    } else if (count == 1) {
      resultText = 'You Are Bad';
    } else {
      resultText = 'You are so Bad';
    }
    return resultText;
  }

  String get result {
    return resultPhrase;
  }

  // int get counter {
  //   return count;
  // }

  void increaseCounter() {
    count++;
    notifyListeners();
  }

  // int get quindexco {
  //   return quindex;
  // }

  void increaseIndex() {
    quindex++;
    notifyListeners();
  }

  // bool get last {
  //   return endofquiz;
  // }
  //
  // bool get answerselect {
  //   return answerwasselected;
  // }

  void clickit(bool answerscore, BuildContext context) {
    answerwasselected = true;
    if (answerscore) {
      count++;
      notifyListeners();
    }
    if (quindex == (arrquestion.length - 1)) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LastPage(count)));
      notifyListeners();
    } else {
      quindex++;
      notifyListeners();
    }
  }
}
