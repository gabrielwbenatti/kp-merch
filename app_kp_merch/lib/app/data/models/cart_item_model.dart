import 'package:app_kp_merch/app/data/models/product_model.dart';

class CartItemModel {
  CartItemModel({
    required this.product,
    this.size,
    this.quantity = 1,
  }) : price = product.price;

  ProductModel product;
  num? size;
  int quantity;
  num price;

  num get total => price * quantity;
}
