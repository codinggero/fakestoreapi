import 'package:flutter/material.dart';
import '/package.dart';

class ProductImage extends StatelessWidget {
  final double opacity;
  final Listenable animation;
  final String image;

  final Widget Function(BuildContext, Widget?) builder;

  const ProductImage({
    super.key,
    required this.opacity,
    required this.animation,
    required this.image,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: builder,
      animation: animation,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Picture(
            image,
            width: App.wp(100),
            height: App.hp(35),
          ),
        ],
      ),
    );
  }
}
