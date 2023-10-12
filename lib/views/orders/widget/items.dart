import 'package:flutter/material.dart';
import '/package.dart';

class Items extends StatelessWidget {
  final List orders;

  const Items({super.key, this.orders = const []});

  @override
  Widget build(BuildContext context) {
    if (orders.isEmpty) {
      return SizedBox(
        child: Picture(Assets.images.emptyCart),
      );
    } else {
      return Column(
        children: orders.map((product) {
          App.console(product);

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
                                    Assets.images.genrate('order'),
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
                      title: product['date'],
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
                          title: product['total'].toString(),
                          fontSize: 14,
                        ),
                      ],
                    ),
                    trailing: Icon(Fonts.arrow_right.light),
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
