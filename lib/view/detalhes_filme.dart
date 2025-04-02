import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/filme_model.dart';

class DetalhesFilmeView extends StatefulWidget {
  const DetalhesFilmeView({super.key});

  @override
  State<DetalhesFilmeView> createState() => _DetalhesFilmeViewState();
}

class _DetalhesFilmeViewState extends State<DetalhesFilmeView> {
Future<void>? _launched;

  Future<void> _launchInBrowserView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Filme filme = ModalRoute.of(context)!.settings.arguments as Filme;

    return Scaffold(
      appBar: AppBar(title: Text(filme.titulo)),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                filme.descricao,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Image.asset('lib/imagenes/${filme.imagenes}'),
              ElevatedButton(
                  onPressed: () => setState(() {
                    final Uri toLaunch =
                      Uri(scheme: 'https', host: 'youtu.be', path: '${filme.teaser}/');
                    _launched = _launchInBrowserView(toLaunch);
                  }),
                  child: const Text('Launch in app'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
