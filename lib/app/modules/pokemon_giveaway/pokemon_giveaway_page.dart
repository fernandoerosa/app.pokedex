import 'package:app_pokedex/app/modules/pokemon_giveaway/pokemon_giveaway_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PokemonGiveawayPage extends StatefulWidget {
  final String title;

  PokemonGiveawayPage({Key? key, this.title = 'Pokemon Giveaway'})
      : super(key: key);

  @override
  PokemonGiveawayPageState createState() => PokemonGiveawayPageState();
}

class PokemonGiveawayPageState extends State<PokemonGiveawayPage> {

  final PokemonGiveawayStore _store = Modular.get();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Observer(
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: size.height * .50,
                  width: size.width,
                  child: Card(
                    child: (_store.pokemon == null)
                        ? Icon(Icons.question_mark, size: size.height * .30)
                        : Column(
                          children: [
                            Text("# ${_store.pokemon!.num!} " + _store.pokemon!.name!),
                            Image.network(_store.pokemon!.img!),
                            Text(_store.pokemon!.height! + " - " + _store.pokemon!.nextEvolution![0].name!),
                          ],
                        ),
                  ),
                ),
              );
            }
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: size.width,
                child: ElevatedButton.icon(
                  onPressed: () {
                    _store.getGiveaway();
                  },
                  label: const Text(
                    "Capture!", style: TextStyle(fontSize: 34),),
                  icon: (_store.isLoading!) ? const CircularProgressIndicator() : const Icon(Icons.catching_pokemon),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
