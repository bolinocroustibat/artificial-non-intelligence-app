import 'dart:convert';

import 'package:http/http.dart';

import '../constants.dart';
import '../models/question.dart';

class GetQuestionHttpService {
  final String questionURL = "$apiURL/questions";

  Future<Question> getQuestion() async {
    Response res = await get(Uri.parse(questionURL));

    if (res.statusCode == 200) {
      Question question = Question.fromJson(json.decode(res.body));
      return question;
    } else {
      throw "Unable to retrieve a question from the API.";
    }
  }
}
