import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(ctx) {
    return const MaterialApp(
      home: Scaffold(
        body: Quiz(),
      ),
    );
  }
}
