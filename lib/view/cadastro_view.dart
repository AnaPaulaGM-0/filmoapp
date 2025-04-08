import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../controller/cadastro_controller.dart';

class CadastroView extends StatelessWidget {
  final ctrl = GetIt.I.get<CadastroController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Cadastro',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red.shade800,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _campoTexto(ctrl.txtNome, 'Nome'),
              _campoTexto(ctrl.txtEmail, 'Email'),
              _campoTexto(ctrl.txtTelefone, 'Telefone'),
              _campoTexto(ctrl.txtSenha, 'Senha', isSenha: true),
              _campoTexto(ctrl.txtConfirmarSenha, 'Confirmar Senha', isSenha: true),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (ctrl.validarCadastro()) {
                    Navigator.pop(context);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Preencha corretamente os campos')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade800,
                  minimumSize: Size(double.infinity, 50),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                child: Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _campoTexto(TextEditingController controller, String label, {bool isSenha = false}) {
    return Column(
      children: [
        TextField(
          controller: controller,
          obscureText: isSenha,
          style: TextStyle(color: Colors.white, fontSize: 16),
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red.shade800),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red.shade800),
            ),
            fillColor: Colors.white10,
            filled: true,
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
