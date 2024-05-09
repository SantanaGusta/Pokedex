import 'package:flutter/material.dart';
import 'package:pokedex/model/Pokemon_model.dart';
import 'package:google_fonts/google_fonts.dart';

class PokemonListScreen extends StatelessWidget {
  final List<Pokemon> pokemons;

  const PokemonListScreen({required this.pokemons});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Pokedex',
          style: const TextStyle(fontWeight: FontWeight.bold,  fontFamily: 'Jersey', fontSize: 60),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.blue],
          ),
        ),
        child: ListView.builder(
          itemCount: pokemons.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white70,
              child: ListTile(
                title: Text(
                  pokemons[index].nome,
                  style: const TextStyle(fontWeight: FontWeight.bold,  fontFamily: 'nunito', fontSize: 24),
                   
                ),
                subtitle: Text(pokemons[index].tipo),
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text(
                    '#${pokemons[index].numeroPokedex}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PokemonDetailScreen(pokemon: pokemons[index]),
                          
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class PokemonDetailScreen extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetailScreen({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pokemon.nome,
          style: const TextStyle(fontWeight: FontWeight.bold,  fontFamily: 'Jersey', fontSize: 60),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,  
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 135, 135, 135), Color.fromARGB(255, 187, 162, 162)],
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(pokemon.imagePath),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromARGB(255, 151, 181, 233),),
              child: 
            Column(
              children: [
Text(
              'Tipo: ',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.purple),
            ),
            Text('${pokemon.tipo}', 
            style: GoogleFonts.nunito(fontSize: 20),),

//descrição
            SizedBox(height: 10.0),
            Text(
              'Descrição: ',
              style: const TextStyle(fontSize: 20.0, color: Colors.purple),
            ),
            Text('${pokemon.descricao}', 
            style: GoogleFonts.nunito(fontSize: 20),),

//numeroPokedex
            SizedBox(height: 10.0),
            Text(
              'Numero na Pokedex:',
              style: const TextStyle(fontSize: 20.0, color: Colors.purple),
            ),
            Text('${pokemon.numeroPokedex}', 
            style: GoogleFonts.nunito(fontSize: 20),),

//habilidades
            const SizedBox(height: 10.0),
            Text(
              'Habilidades:',
              style: const TextStyle(fontSize: 20.0, color: Colors.purple,)
            ),
            Text('${pokemon.habilidade.join(", ")}', 
            style: GoogleFonts.nunito(fontSize: 20),)
              ],
            ),),
//tipoPokemon
            
          ],
        ),
      ),
    );
  }
}
