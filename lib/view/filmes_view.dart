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
      appBar: AppBar(title: Text('Filmes')),
      body: ListView.builder(
        itemCount: ctrl.filmes.length,
        itemBuilder: (context, index) {
          final item = ctrl.filmes[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'detalhes_filme', arguments: item);
            },
            child: MouseRegion(
              onEnter: (_) => setState(() => item.isHovered = true),
              onExit: (_) => setState(() => item.isHovered = false),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  color: item.isHovered ? Colors.red.withOpacity(0.2) : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: item.isHovered
                      ? [BoxShadow(color: Colors.red, blurRadius: 10, spreadRadius: 2)]
                      : [],
                ),
                padding: EdgeInsets.all(10),
                child: ListTile(
                  title: Text(item.titulo, style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
