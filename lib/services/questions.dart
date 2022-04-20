import 'dart:convert';

import 'package:http/http.dart';

import '../constants.dart';
import '../models/question.dart';

Future<Question> getQuestion(bool aggressive) async {
  const String questionURL = "$API_URL/questions";

  Response res = await get(Uri.parse(questionURL).replace(queryParameters: {
    'aggressive': aggressive,
  }));

  if (res.statusCode == 200) {
    Question question = Question.fromJson(jsonDecode(res.body));
    return question;
  } else {
    throw "Unable to retrieve a question from the API.";
  }
}
