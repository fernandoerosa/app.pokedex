import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_pokedex/shared/helper/repositories/models/pokemon_model.dart';

class PokemonRepository {
  final Dio dio = Modular.get();
  static const baseUrl = "";
  static const ENDPOINT = "/pokedex.json";
  static const OPERATION = "pokemon";

  Future<List<PokemonModel>?> getAllPokemons() async {
    Response response = await dio.get(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    final json = jsonDecode(response.data) as Map<String, dynamic>;
    final request = json[OPERATION] as List<dynamic>;
    List<PokemonModel> pokemonList =
        request.map((e) => PokemonModel.fromJson(e)).toList();
    return pokemonList;
  }

  Future<List<PokemonModel>?> getAllPokemonsBasic() async {
    Response response = await dio.get(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    final json = jsonDecode(response.data) as Map<String, dynamic>;
    final request = json[OPERATION] as List<dynamic>;
    List<PokemonModel> pokemonList =
        request.map((e) => PokemonModel.fromJsonBasic(e)).toList();
    return pokemonList;
  }
}
