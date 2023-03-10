import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/modules/cart/kp_cart_screen.dart';
import 'package:app_kp_merch/app/modules/home/widgets/categories_widget.dart';
import 'package:app_kp_merch/app/utils/kp_theme.dart';
import 'package:app_kp_merch/app/data/models/category_model.dart';
import 'package:app_kp_merch/app/data/repository/category_repository.dart';
import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/data/repository/product_repository.dart';

import 'widgets/carousel_widget.dart';
import 'widgets/new_products_widget.dart';

class KpHomeScreen extends StatefulWidget {
  const KpHomeScreen({super.key});

  @override
  State<KpHomeScreen> createState() => _KpHomeScreenState();
}

class _KpHomeScreenState extends State<KpHomeScreen> {
  late Future<List<ProductModel>> _futureProducts;
  final _productRepository = ProductRepository();

  late Future<List<CategoryModel>> _futureCategories;
  final _categoryRepository = CategoryRepository();

  @override
  void initState() {
    super.initState();
    _futureProducts = _productRepository.fetchProducts(parameters: {
      "limit": 6,
    });
    _futureCategories = _categoryRepository.fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KP Merch'),
        elevation: 0.00,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const KpCartScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Theme.of(context).colorScheme.onSurface,
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
              FutureBuilder<List<CategoryModel>>(
                future: _futureCategories,
                initialData: const [],
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData) {
                    return CategoriesWidget(snapshot.data!);
                  }

                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        'Erro ao buscar categorias!',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }

                  return Container();
                },
              ),
              FutureBuilder<List<ProductModel>>(
                future: _futureProducts,
                initialData: const [],
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData) {
                    return NewProductsWidget(snapshot.data!);
                  }

                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        'Erro ao buscar produtos! \n ${snapshot.error!}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }

                  return Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
