import 'package:flutter/material.dart';

import 'package:app_kp_merch/src/modules/home/home_screen.dart';

void main() {
  runApp(const AppKpMerch());
}

class AppKpMerch extends StatelessWidget {
  const AppKpMerch({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: KpHomeScreen(),
    );
  }
}
