import 'package:flutter/material.dart';

// control del login
class LoginController extends ChangeNotifier {
  // cajas de texto
  final txtEmail = TextEditingController();
  final txtSenha = TextEditingController();

  // valida si los campos están llenos
  bool validarLogin() {
    if (txtEmail.text.isEmpty || txtSenha.text.isEmpty) {
      return false;
    }
    return true;
  }
}
