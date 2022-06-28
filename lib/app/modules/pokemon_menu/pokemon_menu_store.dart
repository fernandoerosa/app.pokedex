import 'package:app_pokedex/app/modules/all_pokemons/all_pokemons_routes.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'pokemon_menu_store.g.dart';

class PokemonMenuStore = _PokemonMenuStoreBase with _$PokemonMenuStore;

abstract class _PokemonMenuStoreBase with Store {
  navigateToAllPokemons() {
    Modular.to.pushNamed(AllPokemonsRoutes.MODULE);
  }
}
