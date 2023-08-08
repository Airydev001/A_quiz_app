import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "/images/quiz-logo.png",
          width: 300,
          color: const Color.fromARGB(125, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          "Learn flutter the fun way!",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Cairo",
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(101, 247, 198, 0)),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Start Quiz",
                  style: TextStyle(
                    fontFamily: "Cairo",
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.keyboard_double_arrow_right,
                  color: Colors.white,
                ),
              ],
            ))
      ],
    ));
  }
}
