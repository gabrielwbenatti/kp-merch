import 'package:app_kp_merch/app/utils/kp_theme.dart';
import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/product_model.dart';

import 'product_subtitle.dart';

class ProductSizesWidget extends StatelessWidget {
  const ProductSizesWidget(
    this.product, {
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: KpTheme.kDefaultPadding,
            vertical: KpTheme.kDefaultPadding,
          ),
          child: const ProductSubtitle('Tamanhos'),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            direction: Axis.horizontal,
            children: product.sizes!
                .map((e) => ProductSizeItem(
                      e,
                      isLast: e == product.sizes!.last,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}

class ProductSizeItem extends StatelessWidget {
  const ProductSizeItem(
    this.size, {
    this.isLast = false,
    super.key,
  });

  final int size;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isLast
          ? EdgeInsets.symmetric(horizontal: KpTheme.kDefaultPadding)
          : EdgeInsets.only(left: KpTheme.kDefaultPadding),
      padding: EdgeInsets.all(KpTheme.kDefaultPadding),
      decoration: BoxDecoration(
          color: KpTheme.kPrimaryColor,
          borderRadius: BorderRadius.circular(KpTheme.kDefaultRadius)),
      child: Text(
        size.toString(),
        style: TextStyle(
          color: KpTheme.kPrimaryWhite,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
