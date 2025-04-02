import 'package:flutter/material.dart';

class CadastroView extends StatelessWidget {
  final txtNome = TextEditingController();
  final txtEmail = TextEditingController();
  final txtSenha = TextEditingController();
  final txtConfirmarSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro')),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(controller: txtNome, decoration: InputDecoration(labelText: 'Nome')),
            SizedBox(height: 10),
            TextField(controller: txtEmail, decoration: InputDecoration(labelText: 'Email')),
            SizedBox(height: 10),
            TextField(controller: txtSenha, obscureText: true, decoration: InputDecoration(labelText: 'Senha')),
            SizedBox(height: 10),
            TextField(controller: txtConfirmarSenha, obscureText: true, decoration: InputDecoration(labelText: 'Confirmar Senha')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (txtNome.text.isNotEmpty && txtEmail.text.isNotEmpty && txtSenha.text == txtConfirmarSenha.text) {
                  Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Preencha corretamente os campos')),
                  );
                }
              },
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
