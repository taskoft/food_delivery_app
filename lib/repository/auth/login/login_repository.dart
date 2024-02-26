// ignore: unused_import
import 'dart:math';

import 'package:food_delivery_app/repository/auth/login/login_api_client.dart';

class LoginRepository {
  Future loginCall({required String email, required String password}) async {
    LoginApiClient loginApiClient = LoginApiClient();
    loginApiClient.postLoginClient(email: email, password: password);
    //await Future.delayed(const Duration(seconds: 3));
    //throw Exception("Login failed");
  }
}
