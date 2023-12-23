import "dart:convert";

import "package:amazon/utils/showSnackbar.dart";
import "package:flutter/material.dart";
import "package:http/http.dart" as http;

void HttpCallback(
    {required http.Response response,
    required BuildContext context,
    required VoidCallback onSuccess}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
    case 500:
      showSnackBar(context, jsonDecode(response.body)["message"]);
      break;
    default:
      showSnackBar(context, response.body);
  }
}
