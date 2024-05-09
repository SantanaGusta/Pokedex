

class Pokemon {
  final String nome;
  final String tipo;
  final String descricao;
  final int numeroPokedex;
  final List<String> habilidade;
  final String imagePath; 

  Pokemon({
    required this.nome,
    required this.tipo,
    required this.descricao,
    required this.numeroPokedex,
    required this.habilidade,
    required this.imagePath,
  });
}
