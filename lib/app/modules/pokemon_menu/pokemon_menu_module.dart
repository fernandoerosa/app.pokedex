import 'package:app_pokedex/app/modules/all_pokemons/all_pokemons_page.dart';
import 'package:app_pokedex/app/modules/all_pokemons/all_pokemons_store.dart';
import 'package:app_pokedex/app/modules/pokemon_menu/pokemon_menu_page.dart';
import 'package:app_pokedex/app/modules/pokemon_menu/pokemon_menu_routes.dart';
import 'package:app_pokedex/app/modules/pokemon_menu/pokemon_menu_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PokemonMenuModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PokemonMenuStore()),
    Bind.lazySingleton((i) => AllPokemonsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(PokemonMenuRoutes.ROOT,
        child: (_, args) => const PokemonMenuPage()),
  ];
}
