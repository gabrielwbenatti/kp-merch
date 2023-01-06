import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/modules/products/widgets/images_carousel_widget.dart';
import 'package:app_kp_merch/app/utils/kp_theme.dart';

import 'widgets/product_details_widget.dart';
import 'widgets/product_price.dart';
import 'widgets/product_sizes_widget.dart';
import 'widgets/product_title.dart';

class KpProductView extends StatelessWidget {
  const KpProductView(
    this.product, {
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KpTheme.kPrimaryWhite,
        elevation: 0.00,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline_rounded,
              color: KpTheme.kPrimaryBlack,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: KpTheme.kPrimaryBlack,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImagesCarouselWidget(),
            ProductTitle(product),
            ProductPrice(product),
            if (product.sizes != null) ProductSizesWidget(product),
            ProductDetailsWidget(product),
          ],
        ),
      ),
    );
  }
}
