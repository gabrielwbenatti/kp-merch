import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/widgets/kp_widgets.dart';

class NewProductsWidget extends StatelessWidget {
  const NewProductsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const KpSectionTitle('Produtos Novos'),
        Column(
          children: products.map((e) => KpProductHorizontal(e)).toList(),
        ),
      ],
    );
  }
}
