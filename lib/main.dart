import 'package:flutter/material.dart';
import 'login_mask.dart';

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
        appBar: AppBar(
          title: Text('Flutter Fitness'),
          centerTitle: true,
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          elevation: 15,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
          toolbarHeight: 65,
        ),
        body: LoginMask(),
        ),
      );
  }
}
