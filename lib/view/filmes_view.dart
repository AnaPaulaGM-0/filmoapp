import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../controller/filmes_controller.dart';

class FilmesView extends StatefulWidget {
  const FilmesView({super.key});

  @override
  State<FilmesView> createState() => _FilmesViewState();
}

class _FilmesViewState extends State<FilmesView> {
  final ctrl = GetIt.I.get<FilmesController>(); // controlador de filmes

  @override
  void initState() {
    super.initState();
    ctrl.addListener(() => setState(() {})); // atualiza a tela quando há mudanças
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // fundo preto
      appBar: AppBar(
        title: Text(
          'Filmes',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red.shade800, // cor da AppBar
        automaticallyImplyLeading: true, // botão voltar
        iconTheme: IconThemeData(color: Colors.white), // ícone branco
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20), // espaçamento
        itemCount: ctrl.filmes.length, // total de filmes
        itemBuilder: (context, index) {
          final item = ctrl.filmes[index]; // filme atual
          return Card(
            color: Colors.white10, // cor do card
            elevation: 4, // sombra
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // bordas arredondadas
            ),
            margin: EdgeInsets.symmetric(vertical: 10), // espaçamento vertical
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // padding interno
              title: Text(
                item.titulo, // título do filme
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(Icons.chevron_right, color: Colors.red.shade800), // ícone de seta
              onTap: () {
                // ao tocar, navega para detalhes
                Navigator.pushNamed(context, 'detalhes_filme', arguments: item);
              },
              tileColor: Colors.black, // cor de fundo do item
              hoverColor: Colors.red.shade900.withOpacity(0.3), // efeito ao passar o mouse
            ),
          );
        },
      ),
    );
  }
}
