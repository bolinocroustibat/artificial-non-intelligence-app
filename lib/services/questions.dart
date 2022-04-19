import 'dart:convert';

import 'package:http/http.dart';

import '../constants.dart';
import '../models/question.dart';

Future<Question> getQuestion() async {
  const String questionURL = "$apiURL/questions";

  Response res = await get(Uri.parse(questionURL));

  if (res.statusCode == 200) {
    Question question = Question.fromJson(jsonDecode(res.body));
    return question;
  } else {
    throw "Unable to retrieve a question from the API.";
  }
}
