import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../controller/filmes_controller.dart';

class FilmesView extends StatefulWidget {
  const FilmesView({super.key});

  @override
  State<FilmesView> createState() => _FilmesViewState();
}

class _FilmesViewState extends State<FilmesView> {
  final ctrl = GetIt.I.get<FilmesController>();

  @override
  void initState() {
    super.initState();
    ctrl.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Filmes',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red.shade800,
        automaticallyImplyLeading: true, // <-- ¡Aquí está el botón de regreso!
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: ctrl.filmes.length,
        itemBuilder: (context, index) {
          final item = ctrl.filmes[index];
          return Card(
            color: Colors.white10,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              title: Text(
                item.titulo,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(Icons.chevron_right, color: Colors.red.shade800),
              onTap: () {
                Navigator.pushNamed(context, 'detalhes_filme', arguments: item);
              },
              tileColor: Colors.black,
              hoverColor: Colors.red.shade900.withOpacity(0.3),
            ),
          );
        },
      ),
    );
  }
}
