import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/utils/kp_theme.dart';

class ProductSubtitle extends StatelessWidget {
  const ProductSubtitle(
    this.text, {
    super.key,
  });

  final String text;
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: KpTheme.kDefaultPadding,
        vertical: KpTheme.kDefaultPadding,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
    );
  }
}
