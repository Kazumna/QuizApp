import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  //To use in build method, must add extra properties to this class
  final List<String> chosenAnswers;
  final void Function() restartQuiz;

  //All values in dart are Object which are flexible type and accept all kinds of value.
  //In Dart, we can use get keyword which is getter. it is one of the Dart Feature
  //So we are using summaryData like a property using get keyword
  List<Map<String, Object>> get summaryData {
    //the type should be the same
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      //wanna store a collection of pieces of data such as MAP, key value pairs
      summary.add({
        //can add any Key of your choice as long as its String type
        'question_index': i,
        //question text
        'question': questions[i].text,
        //The first answer is always correct one
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  //if you wanna receive data in a widget, must accept argument in a constructor function.
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.restartQuiz,
  });

  @override
  Widget build(BuildContext context) {
    //where method allow to filter the list on which its calling it
    // final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;

    //creating new List but the purpose is getting number of correct Answer questions
    //Not Transforming the value here
    //Instead, return True if that data should be kept in that new filter list. if false, it drops
    //Using Arrow Function
    final numCorrectQuestions = summaryData
        .where(
          (data) => data['user_answer'] == data['correct_answer'],
        )
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(height: 30),
            TextButton(
              onPressed: restartQuiz,
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.restart_alt,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Restart Quiz!',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
