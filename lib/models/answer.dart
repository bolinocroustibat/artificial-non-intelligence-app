class Answer {
  final String sessionUid;
  final int questionId;
  final int answer; // can be 1 (real) or 0 (ai).

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
