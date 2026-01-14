import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deer/ui/page/MainBookPage.dart';

class MainViewModel extends GetxController {
  var curIndex = 0.obs;

  List<Widget> pages = [MainBookPage()];
}
