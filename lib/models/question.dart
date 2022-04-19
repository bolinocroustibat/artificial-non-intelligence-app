class Question {
  final int id;
  final String question;

  Question({
    required this.id,
    required this.question,
  });

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        id: json["id"],
        question: json["question"],
      );

  @override
  String toString() {
    return '{ "id": "$id", "question": $question}';
  }
}
