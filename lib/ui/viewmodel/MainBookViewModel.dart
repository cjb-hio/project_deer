import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBookViewModel extends GetxController
    with GetTickerProviderStateMixin {
  late TabController tabController;

  final tabList = <_TabData>[
    _TabData("新订单", "xdd_n", "xdd_s"),
    _TabData("待配送", "dps_n", "dps_s"),
    _TabData("待完成", "dwc_n", "dwc_s"),
    _TabData("已完成", "ywc_n", "ywc_s"),
    _TabData("已取消", "yqx_n", "yqx_s"),
  ];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: tabList.length, vsync: this);
  }

  @override
  void onClose() {
    super.onClose();

    tabController.dispose();
  }
}

class _TabData {
  String text;
  String icon;
  String selectedIcon;

  _TabData(this.text, this.icon, this.selectedIcon);
}
