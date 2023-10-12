import 'package:flutter/material.dart';
import '/package.dart';

class UsersController extends GetxController {
  var isLoggedIn = false.obs;

  TextEditingController email = TextEditingController(text: 'kevin@gmail.com');
  TextEditingController password = TextEditingController(text: 'kev02937@');
  TextEditingController username = TextEditingController(text: 'kevinryan');
  TextEditingController firstname = TextEditingController(text: 'kevin');
  TextEditingController lastname = TextEditingController(text: 'ryan');
  TextEditingController phone = TextEditingController(text: '1-567-094-1345');

  final Apis apis = Apis();

  Future login({required String username, required String password}) async {
    try {
      Res response = await apis.login(username: username, password: password);
      if (response.success) {
        String token = response.data['token'];
        response = await apis.getUser(id: 3);
        if (response.success) {
          await UserModel.put('token', token);
          await UserModel.putAll(response.data);
          Get.offAndToNamed(Splash.routeName);
        } else {
          Get.snackbar('Oops!', response.message);
        }
      } else {
        Get.snackbar('Oops!', response.message);
      }
    } catch (error) {
      Get.snackbar('Oops!', error.toString());
    }
  }

  Future signup({
    required String email,
    required String username,
    required String password,
    required String firstname,
    required String lastname,
    required String phone,
  }) async {
    return apis
        .addUser(
            email: email,
            username: username,
            password: password,
            firstname: firstname,
            lastname: lastname,
            phone: phone)
        .then((response) {
      if (response.success) {
      } else {
        Get.snackbar('Oops!', response.message);
      }
    }, onError: (error) {
      Get.snackbar('Oops!', error.toString());
    });
  }
}
