import 'package:app_pokedex/app/modules/pokemon_giveaway/pokemon_giveaway_routes.dart';
import 'package:app_pokedex/shared/helper/custom_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_pokedex/app/modules/home/home_store.dart';

import '../all_pokemons/all_pokemons_routes.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, this.title = "Home Page"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

HomeStore store = Modular.get();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(widget.title),
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Padding(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32)),
                  labelText: 'Search Pokemons',
                ),
              ),
              padding: const EdgeInsets.all(8.0),
            ),
          ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButtom(
                      icon: Icons.catching_pokemon,
                      color: Colors.red,
                      press: () {
                        Modular.to.pushNamed(AllPokemonsRoutes.MODULE);
                      },
                      title: "Pokedex",
                    ),
                    CustomButtom(
                      icon: Icons.bolt,
                      color: Colors.amber,
                      press: () {},
                      title: "Moves",
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButtom(
                      icon: Icons.star,
                      color: Colors.green,
                      press: () {},
                      title: "Evolutions",
                    ),
                    CustomButtom(
                      icon: Icons.location_on,
                      color: Colors.blue,
                      press: () {},
                      title: "Locations",
                    )
                  ],
                ),
                const Divider(color: Colors.white),
                CustomButtom(
                  width: 250,
                  height: 100,
                  textSize: 24,
                  icon: Icons.star,
                  color: Colors.purple,
                  press: () {
                    Modular.to.pushNamed(PokemonGiveawayRoutes.MODULE);
                  },
                  title: "Daily Pokemon!",
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
