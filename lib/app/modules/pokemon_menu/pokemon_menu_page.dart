import 'package:app_pokedex/app/modules/pokemon_menu/pokemon_menu_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PokemonMenuPage extends StatefulWidget {
  final String title;

  const PokemonMenuPage({Key? key, this.title = 'PokemonMenuPage'})
      : super(key: key);

  @override
  PokemonMenuPageState createState() => PokemonMenuPageState();
}

class PokemonMenuPageState extends State<PokemonMenuPage> {
  PokemonMenuStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: const Text("Get All"),
                      onPressed: () {
                        store.navigateToAllPokemons();
                      }),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: const Text("Get All"), onPressed: () {}),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: const Text("Get Specific"), onPressed: () {}),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: const Text("Get Most Rare"), onPressed: () {}),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: const Text("Get Random"), onPressed: () {}),
                ),
              ],
            ),
          ),
        ));
  }
}
