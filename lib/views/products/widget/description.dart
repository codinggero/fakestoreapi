import 'package:flutter/material.dart';
import '/package.dart';

class Description extends StatelessWidget {
  final String label;
  final String description;

  const Description({
    super.key,
    this.label = 'Description',
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TitleText(
          title: label,
          fontSize: 14,
        ),
        const SizedBox(height: 20),
        Text(description),
      ],
    );
  }
}
