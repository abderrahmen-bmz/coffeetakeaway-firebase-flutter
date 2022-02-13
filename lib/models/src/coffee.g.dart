// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coffee _$CoffeeFromJson(Map<String, dynamic> json) {
  return Coffee(
    id: json['id'] as String,
    coffeeIcon: json['coffeeIcon'] as int,
    name: json['name'] as String,
    price: json['price'] as int,
  );
}

Map<String, dynamic> _$CoffeeToJson(Coffee instance) => <String, dynamic>{
      'id': instance.id,
      'coffeeIcon': instance.coffeeIcon,
      'name': instance.name,
      'price': instance.price,
    };
