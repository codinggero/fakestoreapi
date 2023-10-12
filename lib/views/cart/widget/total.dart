import 'package:flutter/material.dart';
import '/package.dart';

class Total extends StatelessWidget {
  final List products;
  const Total({super.key, required this.products});

  String getPrice(items) {
    double price = 0;
    for (var product in items) {
      price += (product['price'] * product['quantity']);
    }
    return price.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        TitleText(
          title: '${products.length} Items',
          color: App.grey,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        TitleText(
          title: '\$${getPrice(products)}',
          fontSize: 18,
        ),
      ],
    );
  }
}
