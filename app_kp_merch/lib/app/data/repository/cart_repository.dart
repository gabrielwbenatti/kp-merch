import 'package:app_kp_merch/app/data/models/cart_item_model.dart';

class CartRepository {
  final List<CartItemModel> _items = [];

  List<CartItemModel> get items => _items;

  void insertItem(CartItemModel cartItem) => _items.add(cartItem);
}
