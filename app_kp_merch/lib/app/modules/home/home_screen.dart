import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/category_model.dart';
import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/utils/kp_theme.dart';

import 'widgets/carousel_widget.dart';
import 'widgets/categories_widget.dart';
import 'widgets/new_products_widget.dart';

class KpHomeScreen extends StatefulWidget {
  const KpHomeScreen({super.key});

  @override
  State<KpHomeScreen> createState() => _KpHomeScreenState();
}

class _KpHomeScreenState extends State<KpHomeScreen> {
  List<CategoryModel> categories = [
    CategoryModel(name: 'Roupas'),
    CategoryModel(name: 'Calçados'),
    CategoryModel(name: 'Perfumaria'),
    CategoryModel(name: 'Acessórios'),
    CategoryModel(name: 'Maquiagem'),
  ];
  List<ProductModel> products = [
    ProductModel('Product 1 - eau de parfum 300ml', amount: 55),
    ProductModel('Product 2 - katy perry collections sandals ', amount: 515),
    ProductModel('Product 3', amount: 155),
    ProductModel('Product 4', amount: 555),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(bottom: KpTheme.kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CarouselWidget(),
            CategoriesWidget(categories),
            NewProductsWidget(products),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text('KP Merch'),
      backgroundColor: KpTheme.kPrimaryWhite,
      elevation: 0.00,
      actions: [
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
}
