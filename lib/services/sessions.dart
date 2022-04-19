import 'dart:convert';

import 'package:http/http.dart';

import '../constants.dart';

Future<String> getSession() async {
  const String sessionURL = "$apiURL/sessions";

  Response res = await get(Uri.parse(sessionURL));

  if (res.statusCode == 200) {
    String sessionUid = jsonDecode(res.body)['sessionUid'];
    return sessionUid;
  } else {
    throw "Unable to retrieve a session from the API.";
  }
}
