// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_1/handle_class.dart';
import 'package:task_1/main.dart';

class LastPage extends StatelessWidget {
  final int count;

  const LastPage(this.count);

  @override
  Widget build(BuildContext context) {
    String result = Provider.of<Handle>(context).resultPhrase;
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Quiz"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              result,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              child: Text("Restart Quiz"),
            )
          ],
        ),
      ),
    );
  }
}
