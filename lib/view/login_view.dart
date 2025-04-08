import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../controller/login_controller.dart';

class LoginView extends StatelessWidget {
  final ctrl = GetIt.I.get<LoginController>(); // obtiene el controlador de login

  @override
  Widget build(BuildContext context) {
    ctrl.limparCampos(); // 🔄 limpia los campos cada vez que se abre la vista

    return Scaffold(
      backgroundColor: Colors.black, // fondo negro
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32), // margen lateral
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // centrar verticalmente
            children: [
              Image.asset(
                'lib/imagenes/logo.jpg', // logo de la app
                height: 150,
              ),
              SizedBox(height: 30), // espacio entre logo y campos

              _buildCampoTexto(ctrl.txtEmail, 'Email'), // campo de email
              SizedBox(height: 16), // espacio entre campos
              _buildCampoTexto(ctrl.txtSenha, 'Senha', oculto: true), // campo de senha
              SizedBox(height: 24), // espacio antes del botón

              ElevatedButton(
                onPressed: () {
                  if (ctrl.validarLogin()) { // si la validación es exitosa
                    Navigator.pushNamed(context, 'home'); // ir a la pantalla principal
                  } else {
                    // mostrar mensaje de error si hay campos vacíos
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Preencha todos os campos')),
                    );
                  }
                },
                child: Text('Entrar', style: TextStyle(fontSize: 18)), // texto del botón
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade800, // color de fondo del botón
                  minimumSize: Size(double.infinity, 50), // tamaño mínimo
                ),
              ),
              SizedBox(height: 12), // espacio entre botón y links

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // separación entre botones
                children: [
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, 'cadastro'), // ir a crear cuenta
                    child: Text('Criar Conta'), // texto del botón
                    style: TextButton.styleFrom(foregroundColor: Colors.white), // color blanco
                  ),
                  TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, 'esqueci_senha'), // ir a recuperar contraseña
                    child: Text('Esqueci minha senha'), // texto del botón
                    style: TextButton.styleFrom(foregroundColor: Colors.white), // color blanco
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // método para construir los campos de texto
  Widget _buildCampoTexto(TextEditingController controller, String label,
      {bool oculto = false}) {
    return TextField(
      controller: controller,
      obscureText: oculto, // oculta el texto si es contraseña
      style: TextStyle(color: Colors.white, fontSize: 16), // estilo del texto
      decoration: InputDecoration(
        labelText: label, // etiqueta del campo
        labelStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.grey.shade900, // color de fondo del campo
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade800), // borde cuando está inactivo
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade800, width: 2), // borde activo
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
