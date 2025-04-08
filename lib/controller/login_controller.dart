import 'package:flutter/material.dart';

class LoginController {
  final txtEmail = TextEditingController();
  final txtSenha = TextEditingController();

  bool validarLogin() {
    return txtEmail.text.isNotEmpty && txtSenha.text.isNotEmpty;
  }

  void limparCampos() {
    txtEmail.clear();
    txtSenha.clear();
  }
}
