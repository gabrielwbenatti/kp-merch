import 'package:app_kp_merch/app/data/models/category_model.dart';
import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/data/repository/category_repository.dart';
import 'package:app_kp_merch/app/utils/kp_theme.dart';
import 'package:app_kp_merch/app/widgets/kp_widgets.dart';
import 'package:flutter/material.dart';

class KpCategoriesExplore extends StatefulWidget {
  const KpCategoriesExplore(
    this.category, {
    super.key,
  });

  final CategoryModel category;

  @override
  State<KpCategoriesExplore> createState() => _KpCategoriesExploreState();
}

class _KpCategoriesExploreState extends State<KpCategoriesExplore> {
  late Future<List<ProductModel>> _future;
  final _repository = CategoryRepository();

  @override
  void initState() {
    super.initState();
    _future = _repository.fetchProductsPerCategory(widget.category.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.category.name,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: KpTheme.kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KpSectionTitle('Filtrando por ${widget.category.name}'),
            FutureBuilder<List<ProductModel>>(
              future: _future,
              initialData: const [],
              builder: (context, snapshot) {
                if (snapshot.hasData &&
                    snapshot.connectionState == ConnectionState.done) {
                  for (var product in snapshot.data!) {
                    return KpProductHorizontal(product);
                  }
                }

                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'Erro ao listar produtos!',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }

                return const CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
