import 'package:flutter/material.dart';
import '/package.dart';

class Signup extends StatefulWidget {
  static String routeName = '/Signup';

  const Signup({super.key});

  @override
  State<Signup> createState() => SignupState();
}

class SignupState extends State<Signup> {
  final users = Get.find<UsersController>();

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
              Picture(Assets.images.signup),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: App.wp(48) - App.padding,
                    child: Input(
                      hintText: "firstname".tr,
                      controller: users.firstname,
                      prefixIcon: Icon(Fonts.user.light),
                    ),
                  ),
                  SizedBox(
                    width: App.wp(48) - App.padding,
                    child: Input(
                      hintText: "lastname".tr,
                      controller: users.lastname,
                      prefixIcon: Icon(Fonts.user2.light),
                    ),
                  )
                ],
              ),
              SizedBox(height: App.padding),
              Input(
                hintText: "username".tr,
                controller: users.username,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icon(Fonts.user_hair.light),
              ),
              SizedBox(height: App.padding),
              Input(
                hintText: "phone".tr,
                controller: users.phone,
                keyboardType: TextInputType.phone,
                prefixIcon: Icon(Fonts.phone.light),
              ),
              SizedBox(height: App.padding),
              Input(
                hintText: "email".tr,
                controller: users.email,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icon(Fonts.envelope1.light),
              ),
              SizedBox(height: App.padding),
              Input(
                hintText: "password".tr,
                controller: users.password,
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
                label: 'signup_btn'.tr,
                fontSize: 24,
                minimumSize: Size(App.wp(100), 60),
                onPressed: () async {
                  await users.signup(
                    firstname: users.firstname.text,
                    lastname: users.lastname.text,
                    username: users.username.text,
                    email: users.email.text,
                    password: users.password.text,
                    phone: users.phone.text,
                  );
                },
              ),
              SizedBox(height: App.padding),
              TextsButton(
                text: 'back_to_signin'.tr,
                color: App.kuroiBlack,
                onPressed: () {
                  Navigate.back(context, const Signin());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
