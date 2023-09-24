import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  //we gonna transform from the list of Map Object to the list of widget
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            // as means type casting
            Text('${(data['question_index'] as int) + 1}'),
            Column(
              children: [
                Text("${data['question']}"),
                const SizedBox(height: 5),
                Text("${data['user_answer']}"),
                Text("${data['correct_answer']}"),
                


              ],
            ),


          ],
        );

      }).toList(),
    );
  }
}
