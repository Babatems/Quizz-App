import 'package:flutter/material.dart';
import 'package:quizz_app/answer_button.dart';
import 'package:quizz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState () {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
 @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,  //Use as much width as possibe
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
             color: Colors.white,
            ), 
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.answers.map((answer) {
              return AnswerButton(
                answerText: answer, 
                onTap: () {}
              ); 
            },
          ),
        ],
      ),
    );
  }
}