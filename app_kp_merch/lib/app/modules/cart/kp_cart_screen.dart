import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/common/kp_large_button.dart';
import 'package:app_kp_merch/app/data/models/cart_item_model.dart';
import 'package:app_kp_merch/app/utils/kp_theme.dart';

import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:app_kp_merch/app/modules/cart/widgets/kp_cart_item.dart';

class KpCartScreen extends StatefulWidget {
  const KpCartScreen({super.key});

  @override
  State<KpCartScreen> createState() => _KpCartScreenState();
}

class _KpCartScreenState extends State<KpCartScreen> {
  @override
  Widget build(BuildContext context) {
    int itemCount = 12;

    Widget _buildTotalPanel() {
      return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          padding: EdgeInsets.all(KpTheme.kDefaultPadding),
          margin: const EdgeInsets.all(5),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Total do pedido"),
                  Text("R\$56165,00"),
                ],
              ),
              KpLargeButton(
                'Continuar',
                icon: Icons.shopping_cart_checkout_outlined,
                onPressed: () {},
              )
            ],
          ),
        ),
      );
    }

    Widget _buildItemsList() {
      return SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: itemCount,
              itemBuilder: (context, index) {
                final product = ProductModel(
                  name: 'name $index',
                  price: 365.0,
                );

                final cartItem = CartItemModel(
                  product: product,
                  size: 30,
                );

                return KpCartItem(
                  cartItem,
                  isLast: index == (itemCount - 1),
                );
              },
            ),
            const SizedBox(
              height: 120,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meu Carrinho',
        ),
      ),
      body: Stack(
        children: [
          _buildItemsList(),
          _buildTotalPanel(),
        ],
      ),
    );
  }
}
