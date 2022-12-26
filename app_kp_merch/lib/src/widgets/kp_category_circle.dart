import 'package:flutter/material.dart';

import 'package:app_kp_merch/src/utils/kp_theme.dart';

class KpCategoryCircle extends StatelessWidget {
  const KpCategoryCircle(
    this.text,
    this.icon, {
    this.isLast = false,
    this.isFirst = false,
    super.key,
  });

  final String text;
  final IconData icon;
  final bool isLast;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return _op2();
  }

  Widget _op2() {
    return Container(
      width: KpTheme.kDefaultPadding * 6,
      margin: isLast
          ? EdgeInsets.symmetric(horizontal: KpTheme.kDefaultPadding)
          : EdgeInsets.only(left: KpTheme.kDefaultPadding),
      padding: EdgeInsets.fromLTRB(
        KpTheme.kDefaultPadding / 2,
        KpTheme.kDefaultPadding,
        KpTheme.kDefaultPadding / 2,
        KpTheme.kDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: KpTheme.kPrimaryColor,
        borderRadius: BorderRadius.circular(KpTheme.kDefaultRadius),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: KpTheme.kPrimaryColor,
              shape: BoxShape.circle,
            ),
            margin: EdgeInsets.only(
              bottom: KpTheme.kDefaultPadding,
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
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: KpTheme.kPrimaryWhite,
              // fontSize: 16.0,
            ),
          )
        ],
      ),
    );
  }

  Widget _op1() {
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
