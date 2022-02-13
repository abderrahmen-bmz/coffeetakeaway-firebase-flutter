import 'package:coffeetakeaway/enums/enums.dart';
import 'package:coffeetakeaway/helpers/src/cart_item_total.dart';
import 'package:coffeetakeaway/models/src/coffee.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_item.g.dart';

@JsonSerializable(explicitToJson: true)
class CartItem {
  CartItem({
    this.id,
    required this.coffee,
    required this.size,
    required this.quantity,
    required this.sugar,
    required this.additions,
  });
  final String? id;
  final Coffee coffee;
  final CoffeeCupSize size;
  final CoffeeSugarCube sugar;
  final int quantity;
  final List<CoffeeAddition> additions;

  num get total => getCartItemTotal(
        count: quantity,
        price: coffee.price,
        additions: additions.length,
        size: size.index,
        sugar: sugar.index,
      );
      factory CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);
      Map<String,dynamic> toJson() => _$CartItemToJson(this); 
      }


