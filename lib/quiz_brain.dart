import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('The name of Safiullah\'s father is Parvez', true),
    Question('Safiullah like to eat Grapefruit', true),
    Question('Safiullah\'s favourite color is yellow', false),
    Question('Safiullah likes to listen Naats', true),
    Question('Safiullah likes to play football', false),
    Question('Safiullah likes to ride a bike', true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returninh true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
