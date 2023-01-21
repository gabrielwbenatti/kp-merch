import 'package:app_kp_merch/app/modules/categories_explore/categories_explore.dart';
import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/category_model.dart';
import 'package:app_kp_merch/app/utils/kp_theme.dart';

class KpCategoryCircle extends StatelessWidget {
  const KpCategoryCircle(
    this.category,
    this.icon, {
    this.isLast = false,
    this.isFirst = false,
    super.key,
  });

  final IconData icon;
  final bool isLast;
  final bool isFirst;
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isLast
          ? EdgeInsets.symmetric(horizontal: KpTheme.kDefaultPadding)
          : EdgeInsets.only(left: KpTheme.kDefaultPadding),
      child: Material(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(KpTheme.kDefaultRadius),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => KpCategoriesExplore(
                  category,
                ),
              ),
            );
          },
          borderRadius: BorderRadius.circular(KpTheme.kDefaultRadius),
          child: Container(
            padding: EdgeInsets.only(
              left: KpTheme.kDefaultPadding / 2,
              top: KpTheme.kDefaultPadding,
              right: KpTheme.kDefaultPadding / 2,
              bottom: KpTheme.kDefaultPadding,
            ),
            width: KpTheme.kDefaultPadding * 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(KpTheme.kDefaultRadius),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: KpTheme.kDefaultPadding),
                  child: Icon(
                    icon,
                    size: 26.0,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
                Text(
                  category.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    // fontSize: 16.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
