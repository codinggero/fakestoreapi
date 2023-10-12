import 'package:flutter/material.dart';
import '/package.dart';
import 'quantity.dart';

class Items extends StatelessWidget {
  final List products;
  final Function(dynamic) increment;
  final Function(dynamic) decrement;

  const Items({
    super.key,
    this.products = const [],
    required this.increment,
    required this.decrement,
  });

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return SizedBox(
        child: Picture(Assets.images.emptyCart),
      );
    } else {
      return Column(
        children: products.map((product) {
          return Container(
            height: 80,
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 0.8,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          height: App.hp(12),
                          width: App.wp(22),
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: App.lightGrey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Picture(
                                    product['image'],
                                    height: App.hp(10),
                                    width: App.wp(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: TitleText(
                      title: product['title'],
                      maxLines: 2,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                    subtitle: Row(
                      children: <Widget>[
                        TitleText(
                          title: '\$ ',
                          color: App.red,
                          fontSize: 12,
                        ),
                        TitleText(
                          title: product['price'].toString(),
                          fontSize: 14,
                        ),
                      ],
                    ),
                    trailing: Quantity(
                      quantity: product['quantity'],
                      increment: () => increment(product),
                      decrement: () => decrement(product),
                    ),
                  ),
                )
              ],
            ),
          );
        }).toList(),
      );
    }
  }
}
