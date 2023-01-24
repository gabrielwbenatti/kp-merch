import 'package:app_kp_merch/app/data/models/cart_item_model.dart';
import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/modules/cart/widgets/kp_cart_item.dart';

class KpCartScreen extends StatelessWidget {
  const KpCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int itemCount = 12;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meu Carrinho',
        ),
      ),
      body: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          final product = ProductModel(
            name: 'name',
            price: 365.0,
          );

          final cartItem = CartItemModel(
            product: product,
            size: 30,
          );

          return KpCartItem(
            cartItem,
            isLast: index == (itemCount - 1),
          );
        },
      ),
    );
  }
}
