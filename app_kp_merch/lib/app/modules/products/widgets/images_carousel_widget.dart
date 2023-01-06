import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/utils/kp_theme.dart';

class ImagesCarouselWidget extends StatelessWidget {
  const ImagesCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: KpTheme.kDefaultPadding,
      ),
      color: Theme.of(context).colorScheme.primary,
      height: 220,
      child: Center(
        child: Text(
          'Carrossel',
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
    );
  }
}
