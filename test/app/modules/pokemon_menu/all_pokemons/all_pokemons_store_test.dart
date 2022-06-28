import 'package:flutter_test/flutter_test.dart';
import 'package:app_pokedex/app/modules/pokemon_menu/all_pokemons/all_pokemons_store.dart';
 
void main() {
  late AllPokemonsStore store;

  setUpAll(() {
    store = AllPokemonsStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}