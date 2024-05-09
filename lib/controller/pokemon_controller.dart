
import 'package:pokedex/model/Pokemon_model.dart';


class PokemonController {
  // Lista de Pokémon
  final List<Pokemon> _pokemonList = [
    Pokemon(
      nome: 'Bulbasaur',
      tipo: 'Grama/Veneno',
      descricao: 'Por algum tempo após seu nascimento, ele utiliza os nutrientes que estão contidos na semente em seu dorso para crescer.',
      numeroPokedex: 1,
      habilidade: ['Cipo Selvagem', 'Envenenamneto'],
      imagePath: "assets/bulbasaur.png"

),
    Pokemon(
      nome: 'Charmander',
      tipo: 'Fogo',
      descricao: 'Charmander é facilmente o mais gentil e bem comportado de sua linha evolutiva. Seus sentimentos e emoções podem ser lidos pela chama na ponta de sua cauda. Ela explode em fúria quando ele está com raiva, e vai piscar e ficar pequena e fraca caso esteja doente ou ferido.',
      numeroPokedex: 2,
      habilidade: ['Arranhão', 'Lança Chamas'],
      imagePath: "assets/chacha.png"
    ),
    Pokemon(
      nome: 'Squirtle',
      tipo: 'Agua',
      descricao: 'Após o nascimento, suas costas incha e endurece formando uma concha. Ele espalha uma espuma potente pela boca.',
      numeroPokedex: 3,
      habilidade: ['Correntesa', 'Dança da Chuva'],
      imagePath: "assets/squirtle.jpeg"
    ),
    
  ];

  // lista de Pokémon
  List<Pokemon> getPokemonList() {
    return _pokemonList;
  }

  // detalhes do Pokémon 
  Pokemon getPokemonDetails(int index) {
    return _pokemonList[index];
  }
}
