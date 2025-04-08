import 'package:flutter/material.dart';

class CadastroController {
  final txtNome = TextEditingController();
  final txtEmail = TextEditingController();
  final txtTelefone = TextEditingController();
  final txtSenha = TextEditingController();
  final txtConfirmarSenha = TextEditingController();

  bool validarCadastro() {
    return txtNome.text.isNotEmpty &&
        txtEmail.text.isNotEmpty &&
        txtTelefone.text.isNotEmpty &&
        txtSenha.text.isNotEmpty &&
        txtSenha.text == txtConfirmarSenha.text;
  }

  void limparCampos() {
    txtNome.clear();
    txtEmail.clear();
    txtTelefone.clear();
    txtSenha.clear();
    txtConfirmarSenha.clear();
  }
}
