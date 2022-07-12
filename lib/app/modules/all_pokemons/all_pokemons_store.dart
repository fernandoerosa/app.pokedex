import 'package:app_pokedex/shared/helper/repositories/pokemon_repository.dart';
import 'package:app_pokedex/shared/helper/repositories/models/pokemon_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'all_pokemons_store.g.dart';

class AllPokemonsStore = _AllPokemonsStoreBase with _$AllPokemonsStore;

abstract class _AllPokemonsStoreBase with Store {
  final PokemonRepository _pokemonRepository = Modular.get();

  List<PokemonModel>? pokemonList;

  Future getAll() async {
    pokemonList = await _pokemonRepository.getAllPokemons();
    pokemonList?.forEach((element) {
      print("==> ${element.name}");
    });
  }
}
