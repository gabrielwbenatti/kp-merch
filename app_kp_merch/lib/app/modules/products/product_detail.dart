import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/modules/products/widgets/images_carousel_widget.dart';
import 'package:app_kp_merch/app/utils/kp_theme.dart';

import 'widgets/product_title.dart';

class ProductView extends StatelessWidget {
  const ProductView(
    this.product, {
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
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
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImagesCarouselWidget(),
          ProductTitle(product),
        ],
      ),
    );
  }
}
