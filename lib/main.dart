import 'dart:io';

import 'package:app_pokedex/shared/helper/repositories/models/next_evolution.dart';
import 'package:app_pokedex/shared/helper/repositories/models/pokemon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory dir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(dir.path);

  Hive.registerAdapter(NextEvolutionAdapter()); //HiveType 0
  Hive.registerAdapter(PokemonModelAdapter()); //HiveType 1
  Hive.openBox(PokemonModel.KEY_POKEMON);

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
