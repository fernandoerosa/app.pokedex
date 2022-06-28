import 'package:app_pokedex/app/modules/all_pokemons/all_pokemons_page.dart';
import 'package:app_pokedex/app/modules/all_pokemons/all_pokemons_routes.dart';
import 'package:app_pokedex/app/modules/all_pokemons/all_pokemons_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AllpokemonsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton(
      (i) => AllPokemonsStore(),
    )
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(AllPokemonsRoutes.ROOT,
        child: (_, args) => const AllPokemonsPage()),
  ];
}
