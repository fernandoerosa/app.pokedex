import 'package:app_pokedex/shared/helper/local_storage/hive_boxes.dart';
import 'package:app_pokedex/shared/helper/repositories/pokemon_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'all_pokemons_store.g.dart';

class AllPokemonsStore = _AllPokemonsStoreBase with _$AllPokemonsStore;

abstract class _AllPokemonsStoreBase with Store {
  final PokemonRepository _pokemonRepository = Modular.get();
  final _pokemonBox = HiveBoxes.getPokemons();

  @observable
  List? pokemonList;
  @observable
  bool? isLoading;

  @action
  Future getAll() async {
    isLoading = true;
    await _pokemonRepository.getAllPokemons();
    pokemonList = await _pokemonBox.get(0);
    print(pokemonList);
    isLoading = false;
  }
}
