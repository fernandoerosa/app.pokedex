// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_pokemons_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AllPokemonsStore on _AllPokemonsStoreBase, Store {
  late final _$pokemonListAtom =
      Atom(name: '_AllPokemonsStoreBase.pokemonList', context: context);

  @override
  List<dynamic>? get pokemonList {
    _$pokemonListAtom.reportRead();
    return super.pokemonList;
  }

  @override
  set pokemonList(List<dynamic>? value) {
    _$pokemonListAtom.reportWrite(value, super.pokemonList, () {
      super.pokemonList = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_AllPokemonsStoreBase.isLoading', context: context);

  @override
  bool? get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool? value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$getAllAsyncAction =
      AsyncAction('_AllPokemonsStoreBase.getAll', context: context);

  @override
  Future<dynamic> getAll() {
    return _$getAllAsyncAction.run(() => super.getAll());
  }

  @override
  String toString() {
    return '''
pokemonList: ${pokemonList},
isLoading: ${isLoading}
    ''';
  }
}
