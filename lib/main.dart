import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: Column(
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
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),

              onPressed: null,
              child: Text(
                  'Start Quiz',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        )
      )
    );
  }
}

