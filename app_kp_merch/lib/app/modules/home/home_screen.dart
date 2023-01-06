import 'package:app_kp_merch/app/data/models/product_sizes_model.dart';
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
    CategoryModel('Roupas'),
    CategoryModel('Calçados'),
    CategoryModel('Perfumaria'),
    CategoryModel('Acessórios'),
    CategoryModel('Maquiagem'),
  ];
  List<ProductModel> products = [
    ProductModel(
      'THE HEIGHTTEN STRETCH BOOTIE',
      amount: 525,
      originalAmount: 875,
      sizes: [
        ProductSizesModel('5'),
        ProductSizesModel('5.5'),
        ProductSizesModel('6'),
        ProductSizesModel('6.5'),
        ProductSizesModel('7'),
        ProductSizesModel('7.5'),
        ProductSizesModel('8'),
        ProductSizesModel('8.5'),
      ],
    ),
    ProductModel('Product 2 - katy perry collections sandals ', amount: 515),
    ProductModel('Product 3', amount: 155),
    ProductModel('Product 4', amount: 555),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: SingleChildScrollView(
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
      ),
    );
  }
}
