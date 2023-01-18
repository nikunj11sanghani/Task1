import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_1/color_page.dart';
import 'package:task_1/handle_class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider<Handle>.value(value: Handle())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
      ),
    );
  }
}
