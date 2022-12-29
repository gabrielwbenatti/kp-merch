import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/modules/products/widgets/product_subtitle.dart';
import 'package:app_kp_merch/app/utils/kp_theme.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget(
    this.product, {
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProductSubtitle('Detalhes'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: KpTheme.kDefaultPadding),
          child: Text(
            product.description ?? 'Sem descrição',
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
