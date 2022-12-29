import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/modules/products/widgets/product_subtitle.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ProductSubtitle('Detalhes'),
      ],
    );
  }
}
