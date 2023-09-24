///This file contains MyQuestions Blueprint
///This is Step 1 for creating Question and Answers

class QuizQuestion {

  ///These Are Properties
  final String text;
  final List<String> answers;

  ///To assign value to these properties, need constructor function, which is below
  const QuizQuestion(this.text, this.answers);

  //Shuffle affect to original list. Thus, this method create a new list and shuffle the list.
  List<String> get shuffledAnswers {
    //copying an original list
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }

}