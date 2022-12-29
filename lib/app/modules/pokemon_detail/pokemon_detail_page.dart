import 'package:flutter/material.dart';

import '../../../shared/helper/repositories/models/pokemon_model.dart';

class PokemonDetailPage extends StatelessWidget {
  final String title;
  final PokemonModel pokemonModel;

  const PokemonDetailPage({Key? key, this.title = 'PokemonDetailPage', required this.pokemonModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Text(pokemonModel.name!)
        ],
      ),
    );
  }
}
