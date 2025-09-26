class Validator {
  static String? validateEmail(String email) {

    if (email.isEmpty) {
      return "Require field";
    }

    String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

    RegExp regExp = RegExp(pattern);

    if (!regExp.hasMatch(email)) {
      return "Please enter a valid email id";

    }
  }
}