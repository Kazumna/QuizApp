import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  //To use in build method, must add extra properties to this class
  final List<String> chosenAnswers;

  //if you wanna receive data in a widget, must accept argument in a constructor function
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
