import 'package:flutter/material.dart';

class MenueTitle extends StatelessWidget {
  final String? left;
  final String? right;

  final void Function()? onPressed;
  const MenueTitle({
    super.key,
    this.left,
    this.right,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (left != null)
          Text(
            '$left',
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xFF212121)),
          ),
        if (right != null)
          TextButton(
            onPressed: onPressed,
            child: Text(
              '$right',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF212121),
              ),
            ),
          ),
      ],
    );
  }
}
