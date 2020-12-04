class Question {
  final String _question;
  final bool _answer;

  Question(String question, bool answer)
      : _question = question,
        _answer = answer;

  String get question => _question;
  bool get answer => _answer;
}
