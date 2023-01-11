import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final String answerText;
  final Function onpressed;


  Counter(this.answerText, this.onpressed);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(40)),
          onPressed: onpressed,
          child: Text(answerText),
        ),
      ),
    );
  }
}
