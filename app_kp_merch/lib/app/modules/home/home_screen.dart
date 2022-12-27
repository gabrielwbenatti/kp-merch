import 'package:app_kp_merch/app/data/models/category_model.dart';
import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/widgets/kp_widgets.dart';
import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/utils/kp_theme.dart';

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
    ProductModel('Product 1 - eau de parfum 300ml', 55),
    ProductModel('Product 2 - katy perry collections sandals ', 515),
    ProductModel('Product 3', 155),
    ProductModel('Product 4', 555),
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
              Container(
                margin: EdgeInsets.only(
                  top: KpTheme.kDefaultPadding,
                ),
                color: KpTheme.kPrimaryColor,
                height: 190,
                child: Center(
                  child: Text(
                    'Carrossel',
                    style: TextStyle(color: KpTheme.kPrimaryWhite),
                  ),
                ),
              ),
              const KpSectionTitle('Categorias'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  children: categories
                      .map((e) => KpCategoryCircle(
                            e.name ?? 'Undefined',
                            Icons.add_to_queue_sharp,
                            isLast: (e == categories.last),
                          ))
                      .toList(),
                ),
              ),
              const KpSectionTitle('Produtos Novos'),
              Column(
                children: products
                    .map((e) => KpProductHorizontal(e.name, e.amount))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
