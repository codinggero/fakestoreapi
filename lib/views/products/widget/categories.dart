import 'package:flutter/material.dart';
import '/package.dart';

class ProuctsCatagories extends StatelessWidget {
  final dynamic category;
  const ProuctsCatagories({super.key, this.category});

  List<Widget> get children {
    List<Widget> child = [];
    child.add(TitleText(
      title: category,
      fontSize: 16,
      color: App.darkgrey,
    ));
    return child;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const TitleText(
          title: "Categories",
          fontSize: 14,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: children,
        )
      ],
    );
  }
}
