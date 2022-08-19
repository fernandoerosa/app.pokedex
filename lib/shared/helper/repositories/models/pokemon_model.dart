import 'package:app_pokedex/shared/helper/repositories/models/next_evolution.dart';
import 'package:hive/hive.dart';

part 'pokemon_model.g.dart';

@HiveType(typeId: 0)
class PokemonModel extends HiveObject {
  static const KEY_POKEMON = "KEY_POKEMON";

  @HiveField(0)
  int? id;
  @HiveField(1)
  String? num;
  @HiveField(2)
  String? name;
  @HiveField(3)
  String? img;
  @HiveField(4)
  List<String>? type;
  @HiveField(5)
  String? height;
  @HiveField(6)
  String? candy;
  @HiveField(7)
  int? candyCount;
  @HiveField(8)
  String? egg;
  @HiveField(9)
  List<String>? weaknesses;
  @HiveField(10)
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
