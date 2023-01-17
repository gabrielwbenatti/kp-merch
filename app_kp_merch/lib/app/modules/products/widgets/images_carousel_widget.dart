import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/utils/kp_theme.dart';

class ImagesCarouselWidget extends StatelessWidget {
  const ImagesCarouselWidget(
    this.images, {
    super.key,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: KpTheme.kDefaultPadding,
      ),
      color: Theme.of(context).colorScheme.primary,
      height: 290,
      child: CarouselSlider(
        options: CarouselOptions(
          enableInfiniteScroll: false,
        ),
        items: images.map((image) => _buildImage(image)).toList(),
      ),
    );
  }

  Widget _buildImage(String image) {
    return Image.network(
      image,
      fit: BoxFit.fitHeight,
    );
  }
}
