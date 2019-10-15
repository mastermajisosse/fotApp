import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  static final Api _api = Api._internal();

  final String url = "raw.githubusercontent.com";

  factory Api() {
    return _api;
  }
  Api._internal();

  Future<http.Response> httpGet(String endPath, {Map<String, String> query}) {
    Uri uri = Uri.http(url, "$endPath");
    if (query != null) {
      uri = Uri.http(url, "$endPath", query);
    }
    print(uri);
    return http.get(
      uri,
      headers: {
        'Accept': 'application/json',
      },
    );
  }
}
