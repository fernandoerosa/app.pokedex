import 'dart:math';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../../shared/helper/local_storage/hive_boxes.dart';
import '../../../shared/helper/repositories/models/pokemon_model.dart';
import '../../../shared/helper/repositories/pokemon_repository.dart';

part 'pokemon_giveaway_store.g.dart';

class PokemonGiveawayStore = _PokemonGiveawayStoreBase with _$PokemonGiveawayStore;
abstract class _PokemonGiveawayStoreBase with Store {
  final PokemonRepository _pokemonRepository = Modular.get();
  final _pokemonBox = HiveBoxes.getPokemons();

  @observable
  PokemonModel? pokemon;
  @observable
  bool? isLoading = false;

  @action
  Future getGiveaway() async {
    isLoading = true;
    await _pokemonRepository.getAllPokemons();
    List pokemonList = await _pokemonBox.get(0);
    pokemon = pokemonList[Random().nextInt(pokemonList.length)];
    isLoading = false;
  }
}