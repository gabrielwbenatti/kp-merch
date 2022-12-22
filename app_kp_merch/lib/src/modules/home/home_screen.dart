import 'package:app_kp_merch/src/widgets/kp_widgets.dart';
import 'package:flutter/material.dart';

import 'package:app_kp_merch/src/utils/kp_theme.dart';

class KpHomeScreen extends StatefulWidget {
  const KpHomeScreen({super.key});

  @override
  State<KpHomeScreen> createState() => _KpHomeScreenState();
}

class _KpHomeScreenState extends State<KpHomeScreen> {
  List<Widget> listaCategorias = const [
    KpCategoryCircle(
      'Roupas',
      (Icons.shopping_cart_checkout_sharp),
      isFirst: true,
    ),
    KpCategoryCircle(
      'Calçados',
      (Icons.low_priority),
    ),
    KpCategoryCircle(
      'Perfumaria',
      (Icons.kebab_dining_sharp),
    ),
    KpCategoryCircle(
      'Acessórios',
      (Icons.join_full_sharp),
    ),
    KpCategoryCircle(
      'Maquiagem',
      (Icons.mark_as_unread_sharp),
    ),
  ];

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
            color: KpTheme.kPrimaryColor,
            height: 190,
            child: Center(
              child: Text(
                'Carrossel',
                style: TextStyle(color: KpTheme.kPrimaryWhite),
              ),
            ),
          ),
          const KpSectionTitle('Categorias'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              children: listaCategorias,
            ),
          ),
          const KpSectionTitle('Produtos Novos'),
        ],
      ),
    );
  }
}
