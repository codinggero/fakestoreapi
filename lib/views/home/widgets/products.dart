import 'package:flutter/material.dart';
import '/package.dart';

class ProductCard extends StatelessWidget {
  final dynamic products;
  final void Function()? onTap;

  const ProductCard({super.key, this.products, this.onTap});

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(20));
    return InkWell(
      borderRadius: borderRadius,
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: borderRadius,
              color: Color(0xFFeeeeee),
            ),
            child: Stack(
              children: [
                Picture(
                  products['image'],
                  width: App.wp(45),
                  height: App.hp(25),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: Picture(
                    products['image'],
                    width: App.wp(5),
                    height: App.wp(5),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            products['title'],
            maxLines: 2,
            style: const TextStyle(
              color: Color(0xFF212121),
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 10),
          _buildSoldPoint(
            products['rating']['rate'],
            products['rating']['count'],
          ),
          const SizedBox(height: 10),
          Text(
            '\$${products['price'].toStringAsFixed(2)}',
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121)),
          )
        ],
      ),
    );
  }

  Widget _buildSoldPoint(dynamic rate, dynamic count) {
    return Row(
      children: [
        Picture(Assets.images.rating, width: 20, height: 20),
        const SizedBox(width: 8),
        Text(
          '$rate',
          style: const TextStyle(
            color: Color(0xFF616161),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 8),
        const Text(
          '|',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xFF616161),
              fontSize: 14),
        ),
        const SizedBox(width: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            color: const Color(0xFF101010).withOpacity(0.08),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: Text(
            '$count sold',
            style: const TextStyle(
              color: Color(0xFF35383F),
              fontWeight: FontWeight.w500,
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}
