///This is Step 2 for creating Question and Answers

import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/quiz.dart';

///Creating Question Data
const questions = [
  ///By Invoking QuizQuestion Constructor
  //First Question
  QuizQuestion(
    'What are the main building blocks of FlutterUIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),

  //Second Question
  QuizQuestion(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),

  //Third Question
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),

  //Fourth Question
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),

  //Fifth Question
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),

  //Last Question
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];