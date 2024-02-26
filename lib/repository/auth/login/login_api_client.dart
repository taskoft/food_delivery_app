import 'dart:convert';

import 'package:food_delivery_app/model/login.dart';
import 'package:http/http.dart' as http;

class LoginApiClient {
  static const _baseUrlLogin =
      "https://food-api-wqvk.onrender.com/api/auth/login";
  final http.Client _httpClient = http.Client();
  Future<LoginModel> postLoginClient(
      {required String email, required String password}) async {
    try {
      Map<String, dynamic> json = {"eMail": email, "password": password};
      final fetchedString =
          await _httpClient.post(Uri.parse(_baseUrlLogin), body: json);
      if (fetchedString.statusCode != 200) {
        throw Exception("There is no data");
      } else {
        final fetchedJson = jsonDecode(fetchedString.body);

        LoginModel onlineUser = fetchedJson
            .map<LoginModel>((json) => LoginModel.fromJson(json))
            .toList();
        return onlineUser;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
