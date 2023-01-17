import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/category_model.dart';
import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/data/repository/product_repository.dart';
import 'package:app_kp_merch/app/widgets/kp_widgets.dart';

import 'widgets/carousel_widget.dart';
import 'widgets/categories_widget.dart';
import 'widgets/new_products_widget.dart';

class KpHomeScreen extends StatefulWidget {
  const KpHomeScreen({super.key});

  @override
  State<KpHomeScreen> createState() => _KpHomeScreenState();
}

class _KpHomeScreenState extends State<KpHomeScreen> {
  late Future<List<ProductModel>> _futureProducts;
  final _productRepository = ProductRepository();

  // List<CategoryModel> categories = [
  //   CategoryModel('Roupas'),
  //   CategoryModel('Calçados'),
  //   CategoryModel('Perfumaria'),
  //   CategoryModel('Acessórios'),
  //   CategoryModel('Maquiagem'),
  // ];

  @override
  void initState() {
    super.initState();
    _futureProducts = _productRepository.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KP Merch'),
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0.00,
        actions: [
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
            const CarouselWidget(),
            const KpSectionTitle('Categorias'),
            // CategoriesWidget(categories),
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
                      'Erro ao buscar produtos!',
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
    );
  }
}
