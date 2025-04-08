import 'package:flutter/material.dart';

class EsqueciSenhaView extends StatelessWidget {
  final txtEmail = TextEditingController(); // campo de e-mail

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recuperação de Senha')), // título da appbar
      body: Padding(
        padding: EdgeInsets.all(30), // espaço interno
        child: Column(
          children: [
            TextField(
              controller: txtEmail, // controla o texto do e-mail
              decoration: InputDecoration(labelText: 'Digite seu e-mail'), // rótulo do campo
            ),
            SizedBox(height: 20), // espaço entre os elementos
            ElevatedButton(
              onPressed: () {
                if (txtEmail.text.isEmpty) {
                  // se o campo estiver vazio, mostra aviso
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('E-mail não pode ser vazio')),
                  );
                } else {
                  // recuperação de senha
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Instruções enviadas para o e-mail')),
                  );
                }
              },
              child: Text('Enviar Instruções'), // texto do botão
            ),
          ],
        ),
      ),
    );
  }
}
