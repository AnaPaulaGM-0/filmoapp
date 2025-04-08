import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/filme_model.dart';

class DetalhesFilmeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Filme filme = ModalRoute.of(context)!.settings.arguments as Filme;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          filme.titulo,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red.shade800,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Imagen del filme
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'lib/imagenes/${filme.imagenes}',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),

            // Título "Sinopse"
            Text(
              'Sinopse',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red.shade800,
              ),
            ),
            SizedBox(height: 10),

            // Texto de la sinopse
            Text(
              filme.descricao.isNotEmpty
                  ? filme.descricao
                  : 'Sinopse ainda não disponível.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 40),

            // Botón centrado al final
            Center(
              child: ElevatedButton.icon(
                onPressed: () => abrirTeaser(filme.teaser),
                icon: Icon(Icons.play_arrow, color: Colors.white),
                label: Text(
                  'Ver Teaser',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade800,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void abrirTeaser(String videoId) async {
  final String url = 'https://www.youtube.com/watch?v=${videoId.trim()}';
  final Uri uri = Uri.parse(url);

  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Não foi possível abrir o teaser';
  }
}
