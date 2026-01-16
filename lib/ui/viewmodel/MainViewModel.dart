import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deer/ui/page/MainBookPage.dart';

class MainViewModel extends GetxController {
  var curIndex = 0.obs;
  PageController pageController = PageController();

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void setCurIndexPage(int index) {
    curIndex.value = index;
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
