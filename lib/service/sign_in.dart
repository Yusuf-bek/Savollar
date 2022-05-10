import 'package:dio/dio.dart';

class SignInService {
  static Future<void>? signIn(String password, String identifier) async {
    Response response = await Dio().post(
      "http://localhost:1337/api/auth/local",
      data: {
        "identifier": identifier,
        "password": password,
      },
    );
  }
}
