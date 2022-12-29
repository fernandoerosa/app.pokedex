import 'package:app_pokedex/app/modules/pokemon_detail/pokemon_detail_page.dart';
import 'package:app_pokedex/app/modules/pokemon_detail/pokemon_detail_store.dart';
import 'package:app_pokedex/app/modules/pokemon_detail/pokemon_detail_routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PokemonDetailModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PokemonDetailStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(PokemonDetailRoutes.ROOT, child: (_, args) => PokemonDetailPage(pokemonModel: args.data))
  ];
}
