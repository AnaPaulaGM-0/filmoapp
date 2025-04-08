import 'package:flutter/material.dart';
import '../service/filmes_service.dart';
import '../model/filme_model.dart';

// control de las peliculas
class FilmesController extends ChangeNotifier {
  final FilmesService filmesService = FilmesService();
  List<Filme> filmes = [];

  // cuando inicia, carga los filmes
  FilmesController() {
    filmes = filmesService.getFilmes();
  }

  // actualiza la lista
  void updateFilmes() {
    filmes = filmesService.getFilmes();
    notifyListeners(); // avisa cambios
  }
}
