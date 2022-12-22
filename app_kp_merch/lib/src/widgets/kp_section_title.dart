import 'package:flutter/material.dart';

import 'package:app_kp_merch/src/utils/kp_theme.dart';

class KpSectionTitle extends StatelessWidget {
  const KpSectionTitle(
    this.text, {
    super.key,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: KpTheme.kDefaultPadding,
        top: KpTheme.kDefaultPadding * 2,
        right: KpTheme.kDefaultPadding,
        bottom: KpTheme.kDefaultPadding,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
