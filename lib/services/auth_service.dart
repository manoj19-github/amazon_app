import "dart:convert";

import "package:amazon/constants/global_variables.dart";
import "package:amazon/constants/http_callback.dart";
import "package:amazon/features/admin/screens/admin_screen.dart";
import "package:amazon/features/screens/home_screen.dart";
import "package:amazon/models/user_model.dart";
import "package:amazon/providers/user_provider.dart";
import "package:amazon/utils/showSnackbar.dart";
import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "package:provider/provider.dart";
import "package:shared_preferences/shared_preferences.dart";

class AuthService {
  // sign up user
  void signUpUser(
      {required String email,
      required BuildContext context,
      required String password,
      required String username,
      required VoidCallback apiLoadingMethod,
      required VoidCallback onSuccessMethod}) async {
    try {
      apiLoadingMethod();
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
    } finally {
      apiLoadingMethod();
    }
  }

  void getUserDetailsFromToken({required BuildContext context}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? userToken = prefs.getString('auth-token');
      if (userToken == null) {
        prefs.setString('auth-token', '');
        return;
      }
      http.Response res = await http.get(Uri.parse("${baseURL}${getUserURL}"),
          headers: <String, String>{'authorization': 'Bearer ${userToken}'});
      HttpCallback(
          response: res,
          context: context,
          onSuccess: () async {
            Provider.of<UserProvider>(context, listen: false)
                .setUser(jsonEncode(jsonDecode(res.body)["user"]));
            // Navigator.pushNamedAndRemoveUntil(
            //   context,
            //   HomeScreen.routeName,
            //   (route) => false,
            // );
            // showSnackBar(
            //     context, "Account created! Login with the same credential");
          });
    } catch (error) {
      showSnackBar(context, error.toString());
    }
  }

  void signInUser(
      {required String email,
      required BuildContext context,
      required String password,
      required VoidCallback apiLoadingMethod,
      required VoidCallback onSuccessMethod}) async {
    try {
      apiLoadingMethod();
      http.Response res = await http.post(Uri.parse("${baseURL}${signinURL}"),
          body: jsonEncode({'email': email, 'password': password}),
          headers: <String, String>{
            'Content-Type': 'application/json;charset=UTF-8'
          });
      print(res.statusCode);
      print(res.body);
      HttpCallback(
          response: res,
          context: context,
          onSuccess: () async {
            onSuccessMethod();
            SharedPreferences prefs = await SharedPreferences.getInstance();
            print(jsonDecode(res.body)['token']);
            await prefs.setString('auth-token', jsonDecode(res.body)['token']);
            Provider.of<UserProvider>(context, listen: false)
                .setUser(jsonEncode(jsonDecode(res.body)["user"]));

            if (jsonDecode(res.body)["user"]["usertype"] == "admin") {
              print("admin print");
              Navigator.pushNamedAndRemoveUntil(
                context,
                AdminScreen.routeName,
                (route) => false,
              );
            } else {
              Navigator.pushNamedAndRemoveUntil(
              context,
              HomeScreen.routeName,
              (route) => false,
            );
            }
            
            // showSnackBar(
            //     context, "Account created! Login with the same credential");
          });
    } catch (error) {
      showSnackBar(context, error.toString());
    } finally {
      apiLoadingMethod();
    }
  }
}
