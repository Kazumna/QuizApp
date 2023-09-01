import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();

}

class _QuizState extends State<Quiz> {

  //Storing a Widget into a variable
  Widget? activeScreen;

  @override
  void initState() {
    //super.init should come first before anything else
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  ///Switching Screens by invoking this method
  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
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
                )
            ),
            //Step 2
            child: activeScreen,
          )
      ),
    );
  }
}