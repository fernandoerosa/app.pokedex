import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_pokedex/app/modules/pokemon_menu/all_pokemons/allPokemons_module.dart';
 
void main() {

  setUpAll(() {
    initModule(AllPokemonsModule());
  });
}