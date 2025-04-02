import 'package:flutter/material.dart';
import '../service/filmes_service.dart';
import '../model/filme_model.dart';

class FilmesController extends ChangeNotifier {
  final FilmesService filmesService = FilmesService();
  List<Filme> filmes = [];

  FilmesController() {
    filmes = filmesService.getFilmes();
  }

  void updateFilmes() {
    filmes = filmesService.getFilmes();
    notifyListeners();
  }
}
