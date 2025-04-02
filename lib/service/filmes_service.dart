import '../model/filme_model.dart';

class FilmesService {
  List<Filme> getFilmes() {
//Dados das filmes
    return [
      Filme(id: 1, titulo: 'Vingadores', descricao: 'Heróis reunidos para salvar o mundo.', ano: 2012, imagenes:"1.jpg", teaser:"KeNEGtsCWEk"),
      Filme(id: 2, titulo: 'Batman', descricao: 'O cavaleiro das trevas luta contra o crime em Gotham.', ano: 2008, imagenes:"2.jpg",teaser:"NLOp_6uPccQ "  ),
      Filme(id: 3, titulo: 'Harry Potter', descricao: 'Aventura de um jovem bruxo em uma escola mágica.', ano: 2001, imagenes:"3.jpg",teaser:"SFzft_2dcV0" ),
      Filme(id: 4, titulo: 'Interestelar', descricao: 'Uma jornada espacial para salvar a Terra.', ano: 2014, imagenes:"4.jpg", teaser:"hHBsKHVLAYc"),
      Filme(id: 5, titulo: 'O Senhor dos Anéis', descricao: 'A história épica da jornada para destruir um anel maligno.', ano: 2001, imagenes:"5.jpg", teaser:"ICCDDv2p8rA" ),
    ];
  }
}
