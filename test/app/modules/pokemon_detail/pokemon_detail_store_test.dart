import 'package:flutter_test/flutter_test.dart';
import 'package:app_pokedex/app/modules/pokemon_detail/pokemon_detail_store.dart';
 
void main() {
  late PokemonDetailStore store;

  setUpAll(() {
    store = PokemonDetailStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}