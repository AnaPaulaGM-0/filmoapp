import 'package:flutter/material.dart';

class SobreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // fondo negro para la vista
      appBar: AppBar(
        title: Text('Sobre', style: TextStyle(color: Colors.white)), // título de la AppBar
        backgroundColor: Colors.red.shade800, // color rojo para la AppBar
        iconTheme: IconThemeData(color: Colors.white), // ícono de retroceso blanco
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30), // padding general
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // centrar verticalmente
            children: [
              Icon(Icons.movie, color: Colors.red.shade800, size: 60), // ícono de película
              SizedBox(height: 20), // espacio
              Text(
                'FilmoApp', // nombre de la app
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16), // espacio
              Text(
                'Uma plataforma simples para explorar e listar filmes.', // descripción breve
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 20), // espacio
              Text(
                '> Versão atual: Beta 0.1.0\n\n'
                '> Objetivo: Mostrar filmes populares, suas descrições e trailers.\n\n'
                '> Em breve: Recomendação de filmes mais vistos do mês, categorias favoritas, sistema de avaliação e muito mais!', // detalles y objetivos
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white60),
              ),
              SizedBox(height: 30), // espacio
              Divider(color: Colors.white24), // línea divisoria
              SizedBox(height: 10), // espacio
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // centrar contenido
                children: [
                  Icon(Icons.person, color: Colors.white70), // ícono de persona
                  SizedBox(width: 8),
                  Text(
                    'Desenvolvido por Ana Paula Garzón', // crédito a la desarrolladora
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 20), // espacio final
              Text(
                '© 2025 Ana Paula Garzón. Todos os direitos reservados.', // derechos reservados
                style: TextStyle(color: Colors.white38, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
