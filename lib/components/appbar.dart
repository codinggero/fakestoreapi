import 'package:flutter/material.dart';
import '/package.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(24)),
            onTap: () {
              //Navigator.pushNamed(context, ProfileScreen.route());
            },
            child: CircleAvatar(
              backgroundImage: Picture.imageProvider(Assets.images.user),
              radius: 24,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    DateTime.now().greeting,
                    style: const TextStyle(
                      color: Color(0xFF757575),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '${UserModel.username}'.cap(),
                    style: const TextStyle(
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            iconSize: 28,
            icon: Icon(Fonts.bell.light),
            onPressed: () {},
          ),
          const SizedBox(width: 16),
          IconButton(
            iconSize: 28,
            icon: Icon(Fonts.heart.light),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
