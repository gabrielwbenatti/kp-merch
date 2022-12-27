import 'package:flutter/material.dart';

class ProductSubtitle extends StatelessWidget {
  const ProductSubtitle(
    this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }
}
