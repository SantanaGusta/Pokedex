import 'package:flutter/material.dart';
import 'package:pokedex/controller/pokemon_controller.dart';
import 'package:pokedex/view/pages/pokemon.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto', 
      ),
      home: PokemonListScreen(pokemons: PokemonController().getPokemonList()),
    );
  }
}
