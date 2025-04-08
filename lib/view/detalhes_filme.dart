import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/filme_model.dart';

// Vista de detalles del filme
class DetalhesFilmeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Filme filme = ModalRoute.of(context)!.settings.arguments as Filme; // recibe el filme

    return Scaffold(
      backgroundColor: Colors.black, // fondo negro
      appBar: AppBar(
        title: Text(
          filme.titulo, // título del filme
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red.shade800, // barra roja
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // botón para volver
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20), // espacio interno
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Imagen del filme
            ClipRRect(
              borderRadius: BorderRadius.circular(12), // bordes redondeados
              child: Image.asset(
                'lib/imagenes/${filme.imagenes}', // imagen del filme
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),

            // Texto "Sinopse"
            Text(
              'Sinopse',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red.shade800, // texto rojo
              ),
            ),
            SizedBox(height: 10),

            // Descripción del filme
            Text(
              filme.descricao.isNotEmpty
                  ? filme.descricao // muestra sinopse
                  : 'Sinopse ainda não disponível.', // mensaje si no hay
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 40),

            // Botón para ver teaser
            Center(
              child: ElevatedButton.icon(
                onPressed: () => abrirTeaser(filme.teaser), // acción al presionar
                icon: Icon(Icons.play_arrow, color: Colors.white), // ícono play
                label: Text(
                  'Ver Teaser', // texto del botón
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade800, // color rojo
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // esquinas redondeadas
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

// función para abrir el teaser en YouTube
void abrirTeaser(String videoId) async {
  final String url = 'https://www.youtube.com/watch?v=${videoId.trim()}';
  final Uri uri = Uri.parse(url);

  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication); // abre en app externa
  } else {
    throw 'Não foi possível abrir o teaser'; // mensaje si falla
  }
}
