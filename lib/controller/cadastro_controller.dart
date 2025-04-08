import 'package:flutter/material.dart';

// control del registro
class CadastroController extends ChangeNotifier {
  // cajas de texto
  final txtNome = TextEditingController();
  final txtEmail = TextEditingController();
  final txtTelefone = TextEditingController();
  final txtSenha = TextEditingController();
  final txtConfirmarSenha = TextEditingController();

  // si aceptó los términos
  bool _aceitarTermos = false;

  // muestra si aceptó
  bool get aceitarTermos => _aceitarTermos;

  // cambia si aceptó
  void setAceitarTermos(valor) {
    _aceitarTermos = valor;
    notifyListeners(); // avisa cambios
  }

  // valida los datos
  bool validarCadastro() {
    // si hay algo vacío o mal
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
