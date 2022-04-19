import 'dart:convert';

import 'package:http/http.dart';

import '../constants.dart';
import '../models/question.dart';

class HttpService {
  final String questionURL = "$apiURL/questions";

  Future<String> getQuestions() async {
    Response res = await get(Uri.parse(questionURL));

    if (res.statusCode == 200) {
      dynamic body = jsonDecode(res.body);
      String questionStr = body.question;
      int questionId = body.id;
      return questionStr;
    } else {
      throw "Unable to retrieve a question.";
    }
  }
}
