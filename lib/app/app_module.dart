import 'package:app_pokedex/app/modules/all_pokemons/all_pokemons_routes.dart';
import 'package:app_pokedex/app/modules/all_pokemons/all_pokemons_module.dart';
import 'package:app_pokedex/app/modules/home/home_routes.dart';
import 'package:app_pokedex/app/modules/home/home_store.dart';
import 'package:app_pokedex/app/modules/pokemon_detail/pokemon_detail_module.dart';
import 'package:app_pokedex/app/modules/pokemon_detail/pokemon_detail_routes.dart';
import 'package:app_pokedex/app/modules/pokemon_giveaway/pokemon_giveaway_module.dart';
import 'package:app_pokedex/app/modules/pokemon_giveaway/pokemon_giveaway_routes.dart';
import 'package:app_pokedex/app/modules/pokemon_menu/pokemon_menu_module.dart';
import 'package:app_pokedex/app/modules/pokemon_menu/pokemon_menu_routes.dart';
import 'package:app_pokedex/shared/helper/repositories/pokemon_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => Dio()),
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => PokemonRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(HomeRoutes.ROOT, module: HomeModule()),
    ModuleRoute(PokemonMenuRoutes.MODULE, module: PokemonMenuModule()),
    ModuleRoute(AllPokemonsRoutes.MODULE, module: AllPokemonsModule()),
    ModuleRoute(PokemonGiveawayRoutes.MODULE, module: PokemonGiveawayModule()),
    ModuleRoute(PokemonDetailRoutes.MODULE, module: PokemonDetailModule()),
  ];
}
