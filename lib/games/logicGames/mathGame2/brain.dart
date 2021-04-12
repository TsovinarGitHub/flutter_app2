import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('1 , 2 , 3 ', "4"),
    Question('2 , 4 , 6 ', "8"),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length -1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber > _questionBank.length-1 ) {

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}