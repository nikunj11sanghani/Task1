import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final String answerText;
  final Function onpressed;

  const Counter(this.answerText, this.onpressed, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(40)),
        onPressed: onpressed,
        child: Text(answerText),
      ),
    );
  }
}
