import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // fondo negro
      appBar: AppBar(
        title: Text('FilmoApp'), // título del AppBar
        backgroundColor: Colors.red.shade800, // color rojo oscuro
      ),
      body: Padding(
        padding: EdgeInsets.all(30), // padding general
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // centrar verticalmente
          children: [
            Text(
              'Bem-vindo ao FilmoApp!', // mensaje de bienvenida
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30), // espacio entre elementos
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, 'filmes'), // ir a la vista de filmes
              icon: Icon(Icons.movie), // ícono de película
              label: Text(
                'Ver Filmes',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade800, // color del botón
                minimumSize: Size(double.infinity, 50), // tamaño mínimo
              ),
            ),
            SizedBox(height: 20), // espacio entre botones
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, 'sobre'), // ir a la vista "sobre"
              icon: Icon(Icons.info_outline), // ícono de información
              label: Text(
                'Sobre o Aplicativo',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade800, // color del botón
                minimumSize: Size(double.infinity, 50), // tamaño mínimo
              ),
            ),
          ],
        ),
      ),
    );
  }
}
