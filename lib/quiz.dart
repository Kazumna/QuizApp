import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  //final type mean, this variable will not be reassigned. but can add value to it.
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  ///Switching Screens by invoking this method
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'start-screen';
      });
    }

  }

  @override
  Widget build(context) {
    Widget screenWidget =  StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget =  QuestionsScreen(onSelectAnswer: chooseAnswer,);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          //Step 2
          child: screenWidget,
        ),
      ),
    );
  }
}
