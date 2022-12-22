import 'package:flutter/material.dart';

import 'package:app_kp_merch/src/utils/kp_theme.dart';

class KpHomeScreen extends StatefulWidget {
  const KpHomeScreen({super.key});

  @override
  State<KpHomeScreen> createState() => _KpHomeScreenState();
}

class _KpHomeScreenState extends State<KpHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KpTheme.kPrimaryWhite,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: KpTheme.kPrimaryBlack,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: KpTheme.kDefaultPadding,
            ),
            color: Colors.blue,
            height: 190,
            child: const Center(
              child: Text('Carrossel'),
            ),
          ),
        ],
      ),
    );
  }
}
