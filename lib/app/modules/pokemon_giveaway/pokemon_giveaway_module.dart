import 'package:app_pokedex/app/modules/pokemon_giveaway/pokemon_giveaway_page.dart';
import 'package:app_pokedex/app/modules/pokemon_giveaway/pokemon_giveaway_routes.dart';
import 'package:app_pokedex/app/modules/pokemon_giveaway/pokemon_giveaway_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PokemonGiveawayModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PokemonGiveawayStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(PokemonGiveawayRoutes.ROOT,
        child: (_, args) => PokemonGiveawayPage())
  ];
}
