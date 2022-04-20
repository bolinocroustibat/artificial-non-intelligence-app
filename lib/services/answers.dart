import 'dart:convert';

import 'package:http/http.dart';

import '../constants.dart';
import '../models/answer.dart';

Future<Map> postAnswer(Answer answer) async {
  const String sessionURL = "$API_URL/answers";

  Response res = await post(Uri.parse(sessionURL),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(answer.toString()));
  if (res.statusCode == 200) {
    Map<String, dynamic> answerResponse = jsonDecode(res.body);
    bool correct = answerResponse['correct'];
    int lives = answerResponse['lives'];
    int score = answerResponse['score'];
    int? topScore = answerResponse['topScore'];
    return {
      "correct": correct,
      "lives": lives,
      "score": score,
      "topScore": topScore
    };
  } else {
    throw "Unable to post the answer to the API.";
  }
}
