import 'package:app_pokedex/shared/helper/repositories/models/pokemon_model.dart';
import 'package:hive/hive.dart';

class HiveBoxes {
  static Box getPokemons() => Hive.box(PokemonModel.KEY_POKEMON);
  static Box getMyPokemons() => Hive.box(PokemonModel.KEY_MY_POKEMON);

  Future<void> clearBox() async {
    await getPokemons().clear();
    await getMyPokemons().clear();
  }
}
