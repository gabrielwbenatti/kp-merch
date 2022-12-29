import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/utils/kp_theme.dart';
import 'package:flutter/material.dart';

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
    );
  }
}