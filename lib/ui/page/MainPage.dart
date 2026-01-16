import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deer/ui/page/MainBookPage.dart';
import 'package:project_deer/ui/page/MainShopPage.dart';
import 'package:project_deer/ui/page/MainStatisticsPage.dart';
import 'package:project_deer/ui/page/MainStorePage.dart';
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

  List<Widget> _getPageView() {
    return [
      MainBookPage(),
      MainShopPage(),
      MainStatisticsPage(),
      MainStorePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: _buildBottomBarItem(),
          currentIndex: controller.curIndex.value,
          onTap: (index) {
            controller.setCurIndexPage(index);
          },

          selectedItemColor: Colors.blue, // 选中项标签颜色
          unselectedItemColor: Colors.grey, // 未选中项标签颜色

        ),
      ),

      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        itemBuilder: (context, index) {
          return _getPageView()[index];
        },
      ),
    );
  }

  List<BottomNavigationBarItem> _buildBottomBarItem() {
    List<BottomNavigationBarItem> list = [];
    for (int i = 0; i < _getBottomItemIconName.keys.length; i++) {
      bool isSelected = controller.curIndex.value == i;
      list.add(
        BottomNavigationBarItem(
          icon: LoadAssetsImage(
            _getBottomItemIconName.values.elementAt(i),
            prefix: "home",
            width: 24,
            height: 24,
            color: isSelected ? Colors.blue : Colors.grey,
          ),
          label: _getBottomItemIconName.keys.elementAt(i),
        ),
      );
    }
    return list;
  }
}
