import 'dart:convert';

import 'package:http/http.dart' as http;

class API {
  postRequest({
    required String route,
    required Map<String, dynamic> data,
    required String token,
  }) async {  
    // String apiUrl = 'https://5eeb-117-102-67-67.ngrok-free.app/api';
    String apiUrl = 'http://localhost:8000/api';
    String url = apiUrl + route;

    return await http.post(
      Uri.parse(url),
      body: jsonEncode(data),
      headers: _header(token),
    );
  }

  getRequest({
    required String route,
    required String token,
  }) async {
    // String apiUrl = 'https://5eeb-117-102-67-67.ngrok-free.app/api';
    String apiUrl = 'http://localhost:8000/api';

    String url = apiUrl + route;

    return await http.get(
      Uri.parse(url),
      headers: _header(token),
    );
  }

  _header(token) =>
      {
       'Content-type': 'application/json',
       'Accept': 'application/json',
       'Authorization': 'Bearer $token'
       };
}
