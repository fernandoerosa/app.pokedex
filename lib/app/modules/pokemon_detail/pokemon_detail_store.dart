import 'package:mobx/mobx.dart';

part 'pokemon_detail_store.g.dart';

class PokemonDetailStore = _PokemonDetailStoreBase with _$PokemonDetailStore;
abstract class _PokemonDetailStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}