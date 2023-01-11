// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:task_1/color_page.dart';

class LastPage extends StatelessWidget {
  final int count;

  const LastPage(this.count);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (count == 3) {
      resultText = 'You are awesome!';
      print(count);
    } else if (count == 2) {
      resultText = 'You Are Intermediate';
      print(count);
    } else if (count == 1) {
      resultText = 'You Are Bad';
    }  else {
      resultText = 'You are so Bad';
    }
    return resultText;
  }

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
                resultPhrase,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FirstPage()));
                },
                child: Text("Restart Quiz"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
