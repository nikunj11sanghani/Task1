import 'package:flutter/material.dart';
import 'package:task_1/animal_page.dart';
import 'package:task_1/color_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'color',
      routes: {'color': (context) => FirstPage()},
    );
  }
}
