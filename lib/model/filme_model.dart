class Filme {
  final int id;
  final String titulo;
  final String descricao;
  final int ano;
  final String imagenes;
  final String teaser;
  bool isHovered = false;  // Propiedad para detectar si el mouse está sobre el elemento

  Filme({
    required this.id,
    required this.titulo,
    required this.descricao,
    required this.ano,
    required this.imagenes,
    required this.teaser,
  });
}
