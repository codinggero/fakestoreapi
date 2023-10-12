import 'package:flutter/material.dart';
import '/package.dart';

class Rating extends StatelessWidget {
  final num? rate;
  const Rating({super.key, this.rate});

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    if (rate == null) {
      for (var i = 0; i < 5; i++) {
        children.add(
          const Icon(Icons.star_border, size: 17),
        );
      }
    } else {
      for (var i = 0; i < 5; i++) {
        if (i < rate!) {
          children.add(Icon(Icons.star, color: App.yellowColor, size: 17));
        } else {
          children.add(
            const Icon(Icons.star_border, size: 17),
          );
        }
      }
    }

    return Row(children: children);
  }
}
