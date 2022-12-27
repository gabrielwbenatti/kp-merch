import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/utils/kp_theme.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: KpTheme.kDefaultPadding,
      ),
      color: KpTheme.kPrimaryColor,
      height: 190,
      child: Center(
        child: Text(
          'Carrossel',
          style: TextStyle(color: KpTheme.kPrimaryWhite),
        ),
      ),
    );
  }
}
