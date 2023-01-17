import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/data/repository/product_repository.dart';
import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/widgets/kp_widgets.dart';

class NewProductsWidget extends StatefulWidget {
  const NewProductsWidget({super.key});

  @override
  State<NewProductsWidget> createState() => _NewProductsWidgetState();
}

class _NewProductsWidgetState extends State<NewProductsWidget> {
  final productRepository = ProductRepository();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const KpSectionTitle('Produtos Novos'),
        FutureBuilder<List<ProductModel>>(
          future: productRepository.fetchProducts(),
          initialData: const [],
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              return _buildProducts(snapshot.data!);
            }

            if (snapshot.hasError) {
              _buildError(context);
            }

            return _buildLoading();
          },
        ),
      ],
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildError(BuildContext context) {
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

  ListView _buildProducts(List<ProductModel> products) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return KpProductHorizontal(product);
      },
    );
  }
}
