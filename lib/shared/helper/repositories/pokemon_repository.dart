// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:app_pokedex/shared/helper/local_storage/hive_boxes.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_pokedex/shared/helper/repositories/models/pokemon_model.dart';

class PokemonRepository {
  final Dio dio = Modular.get();
  final _pokemonBox = HiveBoxes.getPokemons();
  static const baseUrl = "";
  static const ENDPOINT = "/pokedex.json";
  static const OPERATION = "pokemon";

  getAllPokemons() async {
    Response response = await dio.get(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    final json = jsonDecode(response.data) as Map<String, dynamic>;
    final request = json[OPERATION] as List<dynamic>;
    List<PokemonModel> pokemonList =
        request.map((e) => PokemonModel.fromJson(e)).toList();
    await _pokemonBox.add(pokemonList);
  }
}
