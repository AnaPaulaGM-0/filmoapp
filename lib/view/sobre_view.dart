import 'package:flutter/material.dart';

class SobreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Sobre', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red.shade800,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.movie, color: Colors.red.shade800, size: 60),
              SizedBox(height: 20),
              Text(
                'FilmoApp',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Uma plataforma simples para explorar e listar filmes.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              SizedBox(height: 20),
              Text(
                '📌 Versão atual: Beta 0.1.0\n\n'
                '🎯 Objetivo: Mostrar filmes populares, suas descrições e trailers.\n\n'
                '🧠 Em breve: Recomendação de filmes mais vistos do mês, categorias favoritas, sistema de avaliação e muito mais!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white60),
              ),
              SizedBox(height: 30),
              Divider(color: Colors.white24),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person, color: Colors.white70),
                  SizedBox(width: 8),
                  Text(
                    'Desenvolvido por Ana Paula Garzón',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                '© 2025 Ana Paula Garzón. Todos os direitos reservados.',
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
