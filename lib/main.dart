import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Fitness',
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

