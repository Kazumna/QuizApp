import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  //To use in build method, must add extra properties to this class
  final List<String> chosenAnswers;

  //All values in dart are Object which are flexible type and accept all kinds of value.
  List<Map<String, Object>> getSummaryData() {
    //the type should be the same
    final List<Map<String, Object>> summary = [];

    for (var i = 0 ; i < chosenAnswers.length; i++) {
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
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered blah blah out of blah blah'),
            const SizedBox(height: 30),
            Text('You answered blah blah out of blah blah'),
            const SizedBox(height: 30),
            TextButton(
              onPressed: (){},
              child: Text('Restart Quiz!'),
            )



          ],
        ),
      ),

    );
  }
}
