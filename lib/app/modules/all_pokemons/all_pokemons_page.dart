
import 'package:app_pokedex/app/modules/all_pokemons/all_pokemons_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/helper/repositories/models/pokemon_model.dart';

class AllPokemonsPage extends StatefulWidget {
  final String title;

  const AllPokemonsPage({Key? key, this.title = 'AllPokemonsPage'})
      : super(key: key);

  @override
  AllPokemonsPageState createState() => AllPokemonsPageState();
}

class AllPokemonsPageState extends State<AllPokemonsPage> {
  AllPokemonsStore store = Modular.get();

  @override
  void initState() {
    store.getAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(
        builder: (context) {
          if (store.isLoading == true) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          } else {
            return Scrollbar(

              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8.0),
                itemCount: store.pokemonList!.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index == store.pokemonList!.length) store.isLoading = false;
                  PokemonModel pokemonModel = store.pokemonList![index];
                  return Card(
                    child: Image.network(pokemonModel.img!),
                  );
                },
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(Icons.update),
        onPressed: () {},
      ),
    );
  }
}
