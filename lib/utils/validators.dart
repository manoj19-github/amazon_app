String? checkEmailFormat(String? value){
  RegExp re = RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", caseSensitive: false, multiLine: false);
  if (value!.isEmpty) {
    return 'Please enter your email';
    // return null;
  } else {
    if (re.hasMatch(value)){
      return null;
    } else {
      return "Invalid Email Format";
    }
  }
}