import 'package:app_pokedex/app/modules/pokemon_menu/pokemon_menu_routes.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  navigateToMenu() {
    Modular.to.pushNamed(PokemonMenuRoutes.MODULE);
  }
}
