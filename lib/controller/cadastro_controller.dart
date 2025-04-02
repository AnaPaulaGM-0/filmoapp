import 'package:flutter/material.dart';

class CadastroController extends ChangeNotifier {
  final txtNome = TextEditingController();
  final txtEmail = TextEditingController();
  final txtTelefone = TextEditingController();
  final txtSenha = TextEditingController();
  final txtConfirmarSenha = TextEditingController();

  bool _aceitarTermos = false;

  bool get aceitarTermos => _aceitarTermos;

  void setAceitarTermos(valor) {
    _aceitarTermos = valor;
    notifyListeners();
  }

  bool validarCadastro() {
    if (txtNome.text.isEmpty ||
        txtEmail.text.isEmpty ||
        txtTelefone.text.isEmpty ||
        txtSenha.text.isEmpty ||
        txtSenha.text != txtConfirmarSenha.text) {
      return false;
    }
    return true;
  }
}
