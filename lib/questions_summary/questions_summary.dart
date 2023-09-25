import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';
import 'package:quiz_app/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  //we gonna transform from the list of Map Object to the list of widget
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(itemData: data);
          }).toList(),
        ),
      ),

    );
  }



  ///Version 1
 /* @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
    );

    TextStyle userAnswerStyle = const TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.5,
    );

    TextStyle correctAnswerStyle = const TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
    );

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // as means type casting
                *//*Container(
                  decoration: const BoxDecoration(
                    color: Colors.purpleAccent,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${(data['question_index'] as int) + 1}'),
                ),*//*
                QuestionIdentifier(
                  questionIndex: (data['question_index'] as int) + 1,
                  isCorrectAnswer:
                      data['user_answer'] == data['correct_answer'],
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${data['question']}", style: defaultStyle),
                        const SizedBox(height: 5),
                        Text(
                          "${data['user_answer']}",
                          style: userAnswerStyle,
                        ),
                        Text(
                          "${data['correct_answer']}",
                          style: correctAnswerStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }*/
}
