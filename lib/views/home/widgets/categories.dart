import 'package:flutter/material.dart';
import '/package.dart';

class Categories extends StatefulWidget {
  static String routeName = "/Categories";
  final List categories;
  final void Function(dynamic) onTap;

  const Categories({
    super.key,
    required this.categories,
    required this.onTap,
  });

  @override
  State<Categories> createState() => CategoriesState();
}

class CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.categories.length,
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        maxCrossAxisExtent: App.wp(30),
        mainAxisExtent: App.hp(18),
      ),
      itemBuilder: ((context, index) {
        String title = widget.categories[index];
        return GestureDetector(
          onTap: () => widget.onTap(title),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0x10101014),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Picture(
                    Assets.images.genrate(title),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  title.cap(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xff424242),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
