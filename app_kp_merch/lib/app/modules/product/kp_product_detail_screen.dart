import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/modules/product/widgets/images_carousel_widget.dart';

import 'widgets/product_details_widget.dart';
import 'widgets/product_price.dart';
import 'widgets/product_sizes_widget.dart';
import 'widgets/product_title.dart';

class KpProductDetailScreen extends StatelessWidget {
  const KpProductDetailScreen(
    this.product, {
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.00,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline_rounded,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImagesCarouselWidget([
              product.mainImage!,
              product.mainImage!,
              product.mainImage!,
              product.mainImage!,
              product.mainImage!,
            ]),
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
