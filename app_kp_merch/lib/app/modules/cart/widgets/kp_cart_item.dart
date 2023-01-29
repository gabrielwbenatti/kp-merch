import 'package:flutter/material.dart';

import 'package:app_kp_merch/app/data/models/cart_item_model.dart';
import 'package:app_kp_merch/app/utils/kp_theme.dart';

class KpCartItem extends StatelessWidget {
  const KpCartItem(
    this.cartItem, {
    this.isLast = false,
    super.key,
  });

  final CartItemModel cartItem;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        margin: EdgeInsets.only(
          left: KpTheme.kDefaultPadding,
          right: KpTheme.kDefaultPadding,
          top: KpTheme.kDefaultPadding,
          bottom: isLast ? KpTheme.kDefaultPadding : 0.0,
        ),
        child: Padding(
          padding: EdgeInsets.all(KpTheme.kDefaultPadding),
          child: Row(
            children: [
              cartItem.product.mainImage != null
                  ? Image.network(
                      cartItem.product.mainImage!,
                      fit: BoxFit.fitHeight,
                    )
                  : const FlutterLogo(),
              SizedBox(
                width: KpTheme.kDefaultPadding,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartItem.product.name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    if (cartItem.size != null)
                      Text(
                        'Tamanho: ${cartItem.size}',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Total item"),
                              Text(
                                "R\$ ${cartItem.quantity * cartItem.product.price}",
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(
                                  KpTheme.kDefaultRadius / 2),
                            ),
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.remove_circle_outline,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: Text(
                                    "${cartItem.quantity}",
                                  ),
                                ),
                                const Icon(
                                  Icons.add_circle_outline,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
