import 'package:flutter/cupertino.dart';
import 'package:quizzer/main.dart';
import 'Questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
class Q
{
  List<Questions> _questionbank=[
    Questions('You can lead a cow down stairs but not up stairs.',false),
    Questions('Approximately one quarter of human bones are in the feet.',true),
    Questions('A slug\'s blood is green.',true),
  ];
  int _questionno=0;
  nextquestion(BuildContext context) {
    if (_questionno < _questionbank.length - 1)
      _questionno++;
    else {
      Alert(
          context: context, title: "quiz is done", desc: "Flutter is awesome.")
          .show();
      _questionno = 0;
    }
  }
    String getQuestionText()
  {
    return _questionbank[_questionno].QuestionText;
  }
  bool getQuestionAnswer()
  {
    return _questionbank[_questionno].Answertothequestion;
  }
  bool isFinished() {
    if (_questionno >= _questionbank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionno = 0;
  }

}