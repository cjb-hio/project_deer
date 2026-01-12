import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  String _password = "";
  String _userName = "";
  RxBool isLoginEnable = false.obs;

  late TextEditingController usernameController;
  late TextEditingController passwordController;

  @override
  void onInit() {
    super.onInit();

    usernameController = TextEditingController();
    usernameController.addListener(() {
      _userName = usernameController.value.text;
      _checkLoginEnable();
    });
    passwordController = TextEditingController();
    passwordController.addListener(() {
      _password = passwordController.value.text;
      _checkLoginEnable();
    });
  }

  @override
  void onClose() {
    super.onClose();
    usernameController.dispose();
    passwordController.dispose();
  }

  void updateUserName(String text) {
    _userName = text;
    _checkLoginEnable();
  }

  void updatePassword(String text) {
    _password = text;
    _checkLoginEnable();
  }

  void _checkLoginEnable() {
    isLoginEnable.value = _userName.length >= 11 && _password.length >= 6;
  }
}
