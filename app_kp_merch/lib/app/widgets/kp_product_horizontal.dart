// import 'package:app_kp_merch/app/models/product_model.dart';
import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/utils/kp_theme.dart';

class KpProductHorizontal extends StatelessWidget {
  const KpProductHorizontal(
    this.name,
    this.amount, {
    super.key,
  });

  final String name;

  final double amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: KpTheme.kPrimaryWhite,
      padding: EdgeInsets.symmetric(
        horizontal: KpTheme.kDefaultPadding,
        vertical: KpTheme.kDefaultPadding / 4,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
              Text(
                'R\$ ${amount.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
