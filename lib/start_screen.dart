import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset('assets/images/quiz-logo.png', width: 250,)),
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
            OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple.shade400),
              ),

              onPressed: null,
              child: const Text(
                'Start Quiz',
                style: TextStyle(color: Colors.white),
              ),
            ),
        ],
    );
  }
}
