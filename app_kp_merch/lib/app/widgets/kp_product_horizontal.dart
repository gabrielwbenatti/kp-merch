// import 'package:app_kp_merch/app/models/product_model.dart';
import 'package:app_kp_merch/app/modules/products/product_detail.dart';
import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/utils/kp_theme.dart';

class KpProductHorizontal extends StatelessWidget {
  const KpProductHorizontal(
    this.product, {
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => KpProductView(product),
          ),
        );
      },
      leading: Container(
        margin: EdgeInsets.only(right: KpTheme.kDefaultPadding / 2),
        decoration: BoxDecoration(
          color: KpTheme.kPrimaryColor,
          borderRadius: BorderRadius.circular(
            KpTheme.kDefaultRadius / 2,
          ),
        ),
        width: 48,
        height: 48,
      ),
      title: Text(
        product.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 18.0,
        ),
      ),
      subtitle: Text(
        'R\$ ${product.amount.toStringAsFixed(2)}',
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }
}
