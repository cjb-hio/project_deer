import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deer/core/go_router.dart';

class LoginViewModel extends GetxController {
  String _password = "";
  String _userName = "";
  RxBool isLoginEnable = false.obs;

  late TextEditingController usernameController;
  late TextEditingController passwordController;

  @override
  void onInit() {
    debugPrint("onInit");
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
    debugPrint("onClose");
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

  void login() {
    Get.offNamed(ROUTE_SHOP_INFO);
  }
}
