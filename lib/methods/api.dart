import 'dart:convert';

import 'package:http/http.dart' as http;

class API {
  postRequest({
    required String route,
    required Map<String, dynamic> data,
  }) async {
    String apiUrl = 'https://620a-118-99-81-165.ngrok-free.app/api';
    String url = apiUrl + route;

    return await http.post(
      Uri.parse(url),
      body: jsonEncode(data),
      headers: _header(),
    );
  }

  getRequest({
    required String route,
  }) async {
    String apiUrl = 'https://620a-118-99-81-165.ngrok-free.app/api';

    String url = apiUrl + route;

    return await http.get(
      Uri.parse(url),
      headers: _header(),
    );
  }

  _header() =>
      {'Content-type': 'application/json', 'Accept': 'application/json'};
}
