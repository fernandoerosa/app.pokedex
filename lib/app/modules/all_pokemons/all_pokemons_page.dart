import 'package:app_pokedex/app/modules/all_pokemons/all_pokemons_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  store.getAll();
                },
                child: const Text("Start"))
          ],
        ),
      ),
    );
  }
}
