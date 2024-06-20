import 'package:flutter/material.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  Widget? currentScreen;

  @override
  void initState() {
    currentScreen = StartScreen(switchScreens);
    super.initState();
  }

  void switchScreens() {
    setState(() {
      currentScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(160, 255, 47, 47),
          Colors.indigoAccent,
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      )),
      child: currentScreen,
    );
  }
}
