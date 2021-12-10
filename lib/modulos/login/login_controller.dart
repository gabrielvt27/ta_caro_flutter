import 'package:flutter/material.dart';

class LoginController {
  final formKey = GlobalKey<FormState>();

  String _email = "";
  String _password = "";

  onChange({String? email, String? passwor}) {
    _email = email ?? _email;
    _password = passwor ?? _password;
  }

  bool validate() {
    final form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void login() {
    if (validate()) {
      print("Chamar BackEnd");
    }
  }
}
