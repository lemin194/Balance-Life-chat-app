import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/user_model.dart';

var url = '127.0.0.1:8000';

Future<String> sendPostRequest({endpoint, body}) async {
  final headers = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };
  try {
    final response = await http.post(Uri.http(url, endpoint),
        headers: headers, body: jsonEncode(body));
    if (response.statusCode != 200) throw Exception(response.body);
    return response.body;
  } catch (e) {
    debugPrint(e.toString());
    return e.toString();
  }
}
