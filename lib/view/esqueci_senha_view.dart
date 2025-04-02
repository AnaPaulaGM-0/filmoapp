import 'package:flutter/material.dart';

class EsqueciSenhaView extends StatelessWidget {
  final txtEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recuperação de Senha')),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              controller: txtEmail,
              decoration: InputDecoration(labelText: 'Digite seu e-mail'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (txtEmail.text.isEmpty) {
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
              child: Text('Enviar Instruções'),
            ),
          ],
        ),
      ),
    );
  }
}
