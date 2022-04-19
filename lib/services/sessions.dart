import 'dart:convert';

import 'package:http/http.dart';

import '../constants.dart';

class GetSessionHttpService {
  final String sessionURL = "$apiURL/sessions";

  Future<String> getQuestion() async {
    Response res = await get(Uri.parse(sessionURL));

    if (res.statusCode == 200) {
      String sessionUid = json.decode(res.body)['sessionUid'];
      return sessionUid;
    } else {
      throw "Unable to retrieve a session from the API.";
    }
  }
}
