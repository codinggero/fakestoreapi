import 'package:flutter/material.dart';
import '/package.dart';

class MyIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;
  final double padding;
  final bool isOutLine;
  final void Function()? onPressed;

  const MyIcon({
    super.key,
    required this.icon,
    this.color = const Color(0xffa8a09b),
    this.size = 20,
    this.padding = 10,
    this.isOutLine = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: InkWell(
        splashColor: Theme.of(context).primaryColorLight,
        onTap: onPressed,
        child: Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            border: Border.all(
                color: App.iconColor,
                style: isOutLine ? BorderStyle.solid : BorderStyle.none),
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            color: isOutLine ? Colors.transparent : App.background,
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  color: Color(0xfff8f8f8),
                  blurRadius: 5,
                  spreadRadius: 10,
                  offset: Offset(5, 5)),
            ],
          ),
          child: Icon(icon, color: color, size: size),
        ),
      ),
    );
  }
}
