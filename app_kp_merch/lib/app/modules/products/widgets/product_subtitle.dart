import 'package:app_kp_merch/app/utils/kp_theme.dart';
import 'package:flutter/material.dart';

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
        style: const TextStyle(
          fontSize: 16.0,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}
