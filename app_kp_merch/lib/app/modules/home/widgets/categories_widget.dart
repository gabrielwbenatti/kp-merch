import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/category_model.dart';
import 'package:app_kp_merch/app/widgets/kp_widgets.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget(
    this.categories, {
    super.key,
  });

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
      ],
    );
  }
}
