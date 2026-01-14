import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deer/core/main_router.dart';
import 'package:project_deer/ui/page/MainBookPage.dart';
import 'package:project_deer/ui/viewmodel/MainViewModel.dart';
import 'package:project_deer/ui/widget/load_image.dart';

class MainPage extends GetView<MainViewModel> {
  MainPage({super.key});

  final Map<String, String> _getBottomItemIconName = {
    "订单": "icon_order",
    "商品": "icon_commodity",
    "统计": "icon_statistics",
    "店铺": "icon_shop",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: _getBottomItemIconName.entries.map((entry) {
          return BottomNavigationBarItem(
            icon: LoadAssetsImage(entry.value, prefix: "home"),
            label: entry.key,
          );
        }).toList(),

        currentIndex: 0,
      ),

      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: RouteMain.routeMainBook,
        onGenerateRoute: (settings) {
          return GetPageRoute(settings: settings, page: () => MainBookPage());
        },
      ),
    );
  }
}
