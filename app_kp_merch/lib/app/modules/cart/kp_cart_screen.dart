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
    final List<CartItemModel> items = [
      CartItemModel(
        product: ProductModel(name: 'teste 1', price: 12.0),
        quantity: 2,
      ),
      CartItemModel(product: ProductModel(name: 'teste 2', price: 152.0)),
      CartItemModel(
        product: ProductModel(name: 'teste 3', price: 12.0),
        quantity: 7,
      ),
      CartItemModel(product: ProductModel(name: 'teste 4', price: 16.0)),
      CartItemModel(
        product: ProductModel(name: 'teste 5', price: 111.0),
        quantity: 3,
      ),
      CartItemModel(
        product: ProductModel(name: 'teste 6', price: 11.0),
        quantity: 5,
      ),
    ];

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
              itemCount: items.length,
              itemBuilder: (context, index) {
                final product = ProductModel(
                  name: 'name $index',
                  price: 365.0,
                );

                final cartItem = CartItemModel(
                  product: product,
                  size: 30,
                );

                return KpCartItem(cartItem);
              },
            ),
            const SizedBox(
              height: 120,
            ),
          ],
        ),
      );
    }

    Widget buildEmptyCart() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Carrinho de compras vazio",
            ),
            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Voltar"),
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
      body: (items.isEmpty)
          ? buildEmptyCart()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: KpTheme.kDefaultPadding,
                    right: KpTheme.kDefaultPadding,
                    top: (KpTheme.kDefaultPadding / 2),
                    bottom: (KpTheme.kDefaultPadding / 2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Resumo do Pedido",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Total do pedido"),
                          Text("R\$ 271,66"),
                        ],
                      ),
                      Text(
                          "${items.length} ${items.length == 1 ? 'item' : 'itens'}"),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: KpTheme.kDefaultPadding),
                    itemBuilder: (context, index) {
                      return KpCartItem(items[index]);
                    },
                    itemCount: items.length,
                  ),
                ),
              ],
            ),
    );
  }
}
