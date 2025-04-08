import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../controller/cadastro_controller.dart';

// Vista de registro
class CadastroView extends StatelessWidget {
  final ctrl = GetIt.I.get<CadastroController>(); // obtiene el controlador de cadastro

  @override
  Widget build(BuildContext context) {
    ctrl.limparCampos(); // 🔄 limpia los campos al abrir la vista

    return Scaffold(
      backgroundColor: Colors.black, // fondo negro
      appBar: AppBar(
        title: Text(
          'Cadastro',
          style: TextStyle(color: Colors.white), // texto blanco
        ),
        backgroundColor: Colors.red.shade800, // color de la barra roja
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.white), // icono blanco
      ),
      body: Padding(
        padding: EdgeInsets.all(30), // espacio alrededor
        child: SingleChildScrollView(
          child: Column(
            children: [
              _campoTexto(ctrl.txtNome, 'Nome'), // campo de nombre
              _campoTexto(ctrl.txtEmail, 'Email'), // campo de email
              _campoTexto(ctrl.txtTelefone, 'Telefone'), // campo de teléfono
              _campoTexto(ctrl.txtSenha, 'Senha', isSenha: true), // campo de contraseña
              _campoTexto(ctrl.txtConfirmarSenha, 'Confirmar Senha', isSenha: true), // confirmar contraseña
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (ctrl.validarCadastro()) {
                    Navigator.pop(context); // vuelve a la pantalla anterior
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Preencha corretamente os campos')), // mensaje de error
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade800, // botón rojo
                  minimumSize: Size(double.infinity, 50), // ocupa todo el ancho
                  foregroundColor: Colors.white, // texto blanco
                  textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600), // estilo del texto
                ),
                child: Text('Cadastrar'), // texto del botón
              ),
            ],
          ),
        ),
      ),
    );
  }

  // función para crear campos de texto
  Widget _campoTexto(TextEditingController controller, String label, {bool isSenha = false}) {
    return Column(
      children: [
        TextField(
          controller: controller,
          obscureText: isSenha, // oculta el texto si es contraseña
          style: TextStyle(color: Colors.white, fontSize: 16),
          decoration: InputDecoration(
            labelText: label, // texto que aparece encima del campo
            labelStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red.shade800), // borde rojo
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red.shade800),
            ),
            fillColor: Colors.white10, // color de fondo del campo
            filled: true,
          ),
        ),
        SizedBox(height: 16), // espacio entre campos
      ],
    );
  }
}
