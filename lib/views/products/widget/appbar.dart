import 'package:flutter/material.dart';
import '/package.dart';
import 'icon.dart';

class AppBars extends StatelessWidget {
  final void Function()? onBack;
  final void Function()? onLiked;
  final bool isLiked;

  const AppBars({super.key, this.onBack, this.onLiked, this.isLiked = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(App.padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          MyIcon(
            icon: Icons.arrow_back_ios,
            color: Colors.black54,
            size: 15,
            padding: 12,
            isOutLine: true,
            onPressed: onBack,
          ),
          MyIcon(
            icon: isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? App.red : App.lightGrey,
            size: 15,
            padding: 12,
            isOutLine: false,
            onPressed: onLiked,
          ),
        ],
      ),
    );
  }
}
