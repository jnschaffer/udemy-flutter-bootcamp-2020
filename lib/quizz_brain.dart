import 'package:flutter/material.dart';
import 'question.dart';

class QuizzBrain {
  int _questionIndex = 0;
  List<Icon> _scoreKeeper = [];
  List<Question> _questionBank = <Question>[
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  String get question => _questionBank[_questionIndex].question;
  bool get answer => _questionBank[_questionIndex].answer;
  List<Icon> get scoreKeeper => _scoreKeeper;

  void playRound(bool submittedAnswer) {
    Icon icon;
    checkAnswer(submittedAnswer)
        ? icon = Icon(
            Icons.check_box,
            color: Colors.green,
          )
        : icon = Icon(
            Icons.clear,
            color: Colors.red,
          );

    updateScoreKeeper(icon);
    nextQuestion();
  }

  bool checkAnswer(bool submittedAnswer) =>
      (this.answer == submittedAnswer) ? true : false;

  void updateScoreKeeper(Icon icon) => _scoreKeeper.add(icon);

  void nextQuestion() {
    !isGameOver() ? _questionIndex++ : gameOver();
  }

  void gameOver() {
    _questionIndex = 0;
    _scoreKeeper = [];
  }

  bool isGameOver() => _questionIndex >= _questionBank.length - 1;
}
