import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_pokedex/app/modules/home/home_store.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, this.title = "Menu"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

HomeStore store = Modular.get();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Menus"),
          onPressed: () {
            store.navigateToMenu();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
