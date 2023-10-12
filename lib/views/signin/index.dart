import 'package:flutter/material.dart';
import '/package.dart';

class Signin extends StatefulWidget {
  static String routeName = '/Signin';
  const Signin({super.key});

  @override
  State<Signin> createState() => SigninState();
}

class SigninState extends State<Signin> {
  final auth = Get.find<UsersController>();

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(App.padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Picture(Assets.images.signin),
              SizedBox(height: App.padding),
              Input(
                hintText: "username".tr,
                controller: auth.username,
                prefixIcon: Icon(Fonts.envelope1.light),
              ),
              SizedBox(height: App.padding),
              Input(
                hintText: "password".tr,
                controller: auth.password,
                obscureText: obscureText,
                prefixIcon: Icon(Fonts.lock.light),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      if (obscureText) {
                        obscureText = false;
                      } else {
                        obscureText = true;
                      }
                    });
                  },
                  icon: obscureText == true
                      ? Icon(Fonts.eye.light)
                      : Icon(Fonts.eye_slash.light),
                ),
              ),
              SizedBox(height: App.padding),
              Button(
                label: 'signin_btn'.tr,
                fontSize: 24,
                minimumSize: Size(App.wp(100), 60),
                onPressed: () async {
                  await auth.login(
                    username: auth.username.text,
                    password: auth.password.text,
                  );
                },
              ),
              SizedBox(height: App.padding),
              TextsButton(
                text: 'create_an_account'.tr,
                color: App.kuroiBlack,
                onPressed: () {
                  Navigate.next(context, const Signup());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
