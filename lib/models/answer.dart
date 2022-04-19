class Answer {
  final String sessionUid;
  final int questionId;
  final String answer;

  Answer({
    required this.sessionUid,
    required this.questionId,
    required this.answer,
  });

  @override
  String toString() {
    return '{ "sessionUid": "$sessionUid", "questionId": $questionId, "answer": $answer}';
  }
}
