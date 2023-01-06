import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/utils/kp_theme.dart';

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
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
