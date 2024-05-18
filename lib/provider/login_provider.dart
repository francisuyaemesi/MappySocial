import 'package:flutter/material.dart';
import 'package:mappy_social/data/response/login_response.dart';
import 'package:mappy_social/data/service/login_service.dart';

class LoginProvider extends ChangeNotifier {
  var username = '';
  var password = '';
  Future<LoginResponse> login() async {
    return LoginService(username, password).call();
  }
}
