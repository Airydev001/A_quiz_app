import 'package:flutter/material.dart';
import 'package:plant_ui/questions_screen.dart';

import 'package:plant_ui/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //WIDGET CAN BE STORED AS VARIABLE
  Widget? activeScreen;
  @override
  void initState() {
    
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QUIZ_APP",
      theme: ThemeData(fontFamily: "Cairo"),
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 78, 13, 151),
                  Color.fromARGB(255, 107, 15, 168),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: activeScreen),
      ),
    );
  }
}
