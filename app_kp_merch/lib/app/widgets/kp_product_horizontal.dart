// import 'package:app_kp_merch/app/models/product_model.dart';
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
    return Container(
      color: KpTheme.kPrimaryWhite,
      padding: EdgeInsets.symmetric(
        horizontal: KpTheme.kDefaultPadding,
        vertical: KpTheme.kDefaultPadding / 2,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: KpTheme.kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: KpTheme.kPrimaryColor,
              borderRadius: BorderRadius.circular(
                KpTheme.kDefaultPadding,
              ),
            ),
            width: 60,
            height: 60,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Text(
                    product.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Text(
                  'R\$ ${product.amount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
