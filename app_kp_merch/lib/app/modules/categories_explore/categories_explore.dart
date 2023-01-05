import 'package:app_kp_merch/app/data/models/category_model.dart';
import 'package:flutter/material.dart';

class KpCategoriesExplore extends StatelessWidget {
  const KpCategoriesExplore(
    this.category, {
    super.key,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.name,
        ),
      ),
    );
  }
}
