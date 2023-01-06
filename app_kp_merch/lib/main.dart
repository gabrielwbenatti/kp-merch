import 'package:app_kp_merch/app/utils/kp_theme.dart';
import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/modules/home/home_screen.dart';

void main() {
  runApp(const AppKpMerch());
}

class AppKpMerch extends StatelessWidget {
  const AppKpMerch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFB52600),
        ),
      ),
      home: const KpHomeScreen(),
    );
  }
}
