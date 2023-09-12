import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        ///Stretching items to fill the width 
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
           currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),

          ///Three dots is called spread operator only available in Dart
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answerText: answer, onTap: () {});
          }).toList(),

       /*   AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),
          AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
          AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
          AnswerButton(answerText: currentQuestion.answers[3], onTap: () {}),*/
        ],
      ),
    );
  }
}
