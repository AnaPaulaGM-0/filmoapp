import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  final txtEmail = TextEditingController();
  final txtSenha = TextEditingController();

  bool validarLogin() {
    if (txtEmail.text.isEmpty || txtSenha.text.isEmpty) {
      return false;
    }
    return true;
  }
}
