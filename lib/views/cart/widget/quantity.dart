import 'package:flutter/material.dart';

class Quantity extends StatelessWidget {
  final num quantity;
  final void Function()? decrement;
  final void Function()? increment;

  const Quantity({
    super.key,
    this.quantity = 0,
    this.increment,
    this.decrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: decrement,
        ),
        Text(
          quantity.toString(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: increment,
        ),
      ],
    );
  }
}
