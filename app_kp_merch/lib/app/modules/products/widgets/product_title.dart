import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/utils/kp_theme.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle(
    this.product, {
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: KpTheme.kDefaultPadding,
            vertical: KpTheme.kDefaultPadding / 2,
          ),
          child: Text(
            product.name.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: KpTheme.kPrimaryBlack,
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: KpTheme.kDefaultPadding,
              ),
              child: Text(
                'R\$ ${product.amount.toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: KpTheme.kPrimaryBlack,
                ),
              ),
            ),
            product.amount != product.originalAmount
                ? Text(
                    'R\$ ${product.originalAmount.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: KpTheme.kPrimaryBlack.withOpacity(0.5),
                      decoration: TextDecoration.lineThrough,
                    ),
                  )
                : Container(),
          ],
        ),
      ],
    );
  }
}
