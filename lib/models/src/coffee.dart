import 'package:json_annotation/json_annotation.dart';
part 'coffee.g.dart';

@JsonSerializable()
class Coffee {
  const Coffee({
    required this.id,
    required this.coffeeIcon,
    required this.name,
    required this.price,
  });

  final String id;
  final int coffeeIcon;
  final String name;
  final int price;

  factory Coffee.fromJson(Map<String, dynamic> json) => _$CoffeeFromJson(json);
  Map<String ,dynamic > toJson() => _$CoffeeToJson(this);
}
