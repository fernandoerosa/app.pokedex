import 'package:app_pokedex/shared/helper/repositories/models/next_evolution.dart';

class PokemonModel {
  int? id;
  String? num;
  String? name;
  String? img;
  List<String>? type;
  String? height;
  String? candy;
  int? candyCount;
  String? egg;
  List<String>? weaknesses;
  List<NextEvolution>? nextEvolution;

  PokemonModel({
    this.id,
    this.num,
    this.name,
    this.img,
    this.type,
    this.height,
    this.candy,
    this.candyCount,
    this.egg,
    this.weaknesses,
    this.nextEvolution,
  });

  PokemonModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    num = json['num'];
    name = json['name'];
    img = json['img'];
    type = json['type'].cast<String>();
    height = json['height'];
    candy = json['candy'];
    candyCount = json['candy_count'];
    egg = json['egg'];
    weaknesses = json['weaknesses'].cast<String>();
    if (json['next_evolution'] != null) {
      nextEvolution = <NextEvolution>[];
      json['next_evolution'].forEach((v) {
        nextEvolution!.add(NextEvolution.fromJson(v));
      });
    }
  }

  PokemonModel.fromJsonBasic(Map<String, dynamic> json) {
    id = json['id'];
    num = json['num'];
    name = json['name'];
    img = json['img'];
    type = json['type'].cast<String>();
  }

  @override
  String toString() {
    return 'PokemonModel{id: $id, num: $num, name: $name, img: $img, type: $type, height: $height, candy: $candy, candyCount: $candyCount, egg: $egg, weaknesses: $weaknesses, nextEvolution: $nextEvolution}';
  }
}
