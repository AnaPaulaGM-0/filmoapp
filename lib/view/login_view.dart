import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../controller/login_controller.dart';

class LoginView extends StatelessWidget {
  final ctrl = GetIt.I.get<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/imagenes/logo.jpg',
                height: 150,
              ),
              SizedBox(height: 30),


              _buildCampoTexto(ctrl.txtEmail, 'Email'),
              SizedBox(height: 16),
              _buildCampoTexto(ctrl.txtSenha, 'Senha', oculto: true),
              SizedBox(height: 24),

              ElevatedButton(
                onPressed: () {
                  if (ctrl.validarLogin()) {
                    Navigator.pushNamed(context, 'home');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Preencha todos os campos')),
                    );
                  }
                },
                child: Text('Entrar', style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade800,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, 'cadastro'),
                    child: Text('Criar Conta'),
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                  ),
                  TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, 'esqueci_senha'),
                    child: Text('Esqueci minha senha'),
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCampoTexto(TextEditingController controller, String label,
      {bool oculto = false}) {
    return TextField(
      controller: controller,
      obscureText: oculto,
      style: TextStyle(color: Colors.white, fontSize: 16),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.grey.shade900,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade800),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade800, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
