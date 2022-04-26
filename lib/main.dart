import 'package:flutter/material.dart';

import 'constants.dart';
import 'components/button.dart';
import 'components/center_screen.dart';
import '../models/answer.dart';
import '../models/question.dart';
import '../services/answers.dart';
import '../services/questions.dart';
import '../services/sessions.dart';

void main() {
  runApp(const ArtificialNonIntelligenceApp());
}

class ArtificialNonIntelligenceApp extends StatefulWidget {
  const ArtificialNonIntelligenceApp({Key? key}) : super(key: key);

  @override
  State<ArtificialNonIntelligenceApp> createState() =>
      _ArtificialNonIntelligenceAppState();
}

class _ArtificialNonIntelligenceAppState
    extends State<ArtificialNonIntelligenceApp> {
  static const String _title = 'Artificial Non Intelligence';
  String? sessionUid;
  int lives = 3;
  Question? question;
  int? correct;
  int? score = 0;
  int? topScore;

  @override
  void initState() async {
    super.initState();
    bool aggressive = AGGRESSIVE;
    startNewGame(aggressive);
  }

  void startNewGame(aggressive) async {
    lives = 3;
    score = 0;
    correct = null;
    sessionUid = await getSession();
    question = await getQuestion(aggressive);
  }

  Future<void> sendAnswer(int answerChoice) async {
    if (sessionUid != null || question!.id != null) {
      throw Exception("sessionUid and questionId are required");
    } else {
      Answer answer = Answer(
          sessionUid: sessionUid!,
          questionId: question!.id,
          answer: answerChoice);
      Map<dynamic, dynamic> answerRes = await postAnswer(answer);
      correct = answerRes['correct'];
      lives = answerRes['lives'];
      score = answerRes['score'];
      topScore = answerRes['topScore'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonWidget(
              buttonText: "I think it's\nAI-GENERATED",
              answerChoice: 1,
              sendAnswer: sendAnswer,
            ),
            CenterScreenWidget(
                lives: lives,
                correct: correct,
                score: score,
                topScore: topScore),
            ButtonWidget(
              buttonText: "I think it's\nHUMAN-GENERATED",
              answerChoice: 0,
              sendAnswer: sendAnswer,
            ),
          ],
        ),
      ),
    );
  }
}
