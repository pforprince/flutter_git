import 'dart:convert';

import 'package:http/http.dart' as http;

class FlutterGit {

  static String url = "https://api.github.com/users/";

  static Future<void> getUserData(String userName) async {
    final response = await http.get(url+userName);

    final responseData = json.decode(response.body) as Map<String, dynamic>;
    print(responseData);
  }
}
