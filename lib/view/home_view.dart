import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FilmoApp')),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-vindo ao FilmoApp!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'filmes');
              },
              child: Text('Ver Filmes'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'sobre');
              },
              child: Text('Sobre o Aplicativo'),
            ),
          ],
        ),
      ),
    );
  }
}
