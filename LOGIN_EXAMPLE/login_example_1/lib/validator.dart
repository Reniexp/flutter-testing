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

  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return "Require field";
    }
    if (password.length < 8) {
      return "Please enter atleast 8 charater for password";
    }
  }
}