import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});


  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      if(currentQuestionIndex+1<questions.length){

        currentQuestionIndex ++ ;
        print(currentQuestionIndex);
      }else {
        currentQuestionIndex = 0;
        print(currentQuestionIndex);
      }
    });
  }

  void backToPrevious() {
    setState(() {
      if(currentQuestionIndex-1>=0){
      currentQuestionIndex -- ;
      print(currentQuestionIndex);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            const SizedBox(height: 30,),
            ...currentQuestion.getShuffledAnswers().map((e) {
              return AnswerButton(answerText: e, onTap: answerQuestion);
            }),
            const SizedBox(height: 30,),
            AnswerButton(onTap: backToPrevious, answerText: "Back",)
          ],
        ),
      ),
    );
  }
}
