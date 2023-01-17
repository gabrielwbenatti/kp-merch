import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/utils/kp_theme.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice(
    this.product, {
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: KpTheme.kDefaultPadding,
          ),
          child: Text(
            'R\$ ${product.price.toStringAsFixed(2)}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ),
        product.price != product.originalAmount
            ? Text(
                'R\$ ${product.originalAmount.toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Theme.of(context).colorScheme.outline,
                  decoration: TextDecoration.lineThrough,
                ),
              )
            : Container(),
      ],
    );
  }
}
