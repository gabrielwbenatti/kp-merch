import 'package:flutter/material.dart';

import 'package:app_kp_merch/src/utils/kp_theme.dart';

class KpCategoryCircle extends StatelessWidget {
  const KpCategoryCircle(
    this.text,
    this.icon, {
    this.isFirst = false,
    this.isLast = false,
    super.key,
  });

  final String text;
  final IconData icon;
  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: KpTheme.kDefaultPadding * 6,
      padding: isFirst
          ? EdgeInsets.only(
              left: KpTheme.kDefaultPadding,
              right: KpTheme.kDefaultPadding / 2,
            )
          : isLast
              ? EdgeInsets.only(
                  right: KpTheme.kDefaultPadding,
                )
              : EdgeInsets.symmetric(
                  horizontal: KpTheme.kDefaultPadding / 2,
                ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: KpTheme.kDefaultPadding / 2,
            ),
            padding: EdgeInsets.all(
              KpTheme.kDefaultPadding * 1.2,
            ),
            decoration: BoxDecoration(
              color: KpTheme.kPrimaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 26.0,
              color: KpTheme.kPrimaryWhite,
            ),
          ),
          Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              // fontSize: 16.0,
            ),
          )
        ],
      ),
    );
  }
}
