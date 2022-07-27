import 'package:flutter/material.dart';
import 'package:flutter_project_dicoding/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Etalase Food',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const EtalaseFoodScreen(),
    );
  }
}