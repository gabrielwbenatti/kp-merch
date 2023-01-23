import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/common/kp_widgets.dart';

class NewProductsWidget extends StatelessWidget {
  const NewProductsWidget(
    this.products, {
    super.key,
  });

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const KpSectionTitle('Produtos novos'),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return KpProductHorizontal(product);
          },
        )
      ],
    );
  }
}
