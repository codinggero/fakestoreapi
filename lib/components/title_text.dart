import 'package:flutter/material.dart';
import '/package.dart';

class TitleText extends StatelessWidget {
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final int? maxLines;

  const TitleText({
    super.key,
    required this.title,
    this.fontSize = 18,
    this.color = const Color(0xff1d2635),
    this.fontWeight = FontWeight.w800,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      style: GoogleFonts.mulish(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
