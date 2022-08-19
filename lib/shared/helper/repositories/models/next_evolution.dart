import 'package:hive/hive.dart';

part 'next_evolution.g.dart';

@HiveType(typeId: 1)
class NextEvolution extends HiveObject {
  @HiveField(0)
  String? num;
  @HiveField(1)
  String? name;

  NextEvolution({this.num, this.name});

  NextEvolution.fromJson(Map<String, dynamic> json) {
    num = json['num'];
    name = json['name'];
  }
}
