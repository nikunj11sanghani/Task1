import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_1/answer_class.dart';

import 'handle_class.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    int qindex = Provider.of<Handle>(context).quindex;

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Quiz"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text(
                Provider.of<Handle>(context)
                    .arrquestion[qindex]["Question"]
                    .toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              ...(Provider.of<Handle>(context).arrquestion[qindex]['answer']
                      as List<Map<String, Object>>)
                  .map(
                (answer) => Counter((answer)['answerText'], () {
                  Provider.of<Handle>(context, listen: false)
                      .clickit(answer['score'], context);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
