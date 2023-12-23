import "package:amazon/constants/global_variables.dart";
import "package:amazon/constants/http_callback.dart";
import "package:amazon/models/user_model.dart";
import "package:amazon/utils/showSnackbar.dart";
import "package:flutter/material.dart";
import "package:http/http.dart" as http;

class AuthService {
  // sign up user
  void signUpUser(
      {required String email,
      required BuildContext context,
      required String password,
      required String username,
      required VoidCallback onSuccessMethod}) async {
    try {
      final user = new User(
          id: "",
          username: username,
          email: email,
          password: password,
          address: "",
          usertype: "");
      http.Response res = await http.post(Uri.parse("${baseURL}${signupURL}"),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json;charset=UTF-8'
          });
      print(res.statusCode);
      HttpCallback(
          response: res,
          context: context,
          onSuccess: () {
            onSuccessMethod();
            showSnackBar(
                context, "Account created! Login with the same credential");
          });
    } catch (error) {
      showSnackBar(context, error.toString());
    }
  }
}
