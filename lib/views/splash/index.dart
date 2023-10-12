import 'package:flutter/material.dart';
import '/package.dart';

class Splash extends StatefulWidget {
  static String routeName = "/Splash";

  const Splash({super.key});

  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {
  final authController = Get.find<UsersController>();

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      String? token = UserModel.token;
      if (token == null) {
        Navigate.next(context, const Signin());
      } else {
        Navigate.popAndPushNamed(context, Index.routeName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Directionality(
          textDirection: App.textDirection,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Picture(Assets.images.logo),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
