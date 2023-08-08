import "package:flutter/material.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("images/quiz-logo.png", width: 200),
              const SizedBox(height: 20),
              const Text("START QUIZ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 247, 239, 249),
                      fontFamily: "Cairo",fontSize:28))
            ],
          ),
        ));
  }
}
