import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_pokedex/app/modules/pokemon_detail/pokemon_detail_module.dart';
 
void main() {

  setUpAll(() {
    initModule(PokemonDetailModule());
  });
}