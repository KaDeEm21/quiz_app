import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 250,
                  color: const Color.fromARGB(130, 255, 255, 255),

                ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
              child: Text(
                'Learn Flutter the fun way!',
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                ),
              ),
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                'Start Quiz',
                style: TextStyle(color: Colors.white),
              ),
            ),
        ],
    );
  }
}
