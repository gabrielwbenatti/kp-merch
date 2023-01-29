import 'package:app_kp_merch/app/data/models/cart_item_model.dart';

class CartModel {
  CartModel({
    this.items,
  });

  List<CartItemModel>? items;

  num get amount {
    var totalAmount = 0.0;

    items?.forEach((item) {
      totalAmount += item.price;
    });

    return totalAmount;
  }
}
