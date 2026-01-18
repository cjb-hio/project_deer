
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deer/core/SliverAppBarDelegate.dart';
import 'package:project_deer/style/text_style.dart';
import 'package:project_deer/ui/viewmodel/MainBookViewModel.dart';
import 'package:project_deer/ui/widget/flexible_space_bar.dart';
import 'package:project_deer/ui/widget/load_image.dart';

class MainBookPage extends GetView<MainBookViewModel> {
  MainBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // SafeArea(
          //   child: SizedBox(
          //     height: 105,
          //     width: double.infinity,
          //     child: DecoratedBox(
          //       decoration: BoxDecoration(
          //         gradient: LinearGradient(
          //           colors: [Color(0xFF5793FA), Color(0xFF4647FA)],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return _buildHeaderSliver(context);
            },
            body: ListView.builder(
              padding: EdgeInsets.zero, // 移除默认内边距
              itemCount: 200,
              itemBuilder: (context, index) {
                return Text("item:$index", style: bodyTextMedium);
              },
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildHeaderSliver(BuildContext context) {
    return [
      SliverAppBar(
        pinned: true,
        stretch: true,
        centerTitle: true,
        expandedHeight: 100,
        flexibleSpace: MyFlexibleSpaceBar(
          title: Text(
            "订单",
            style: titleTextMedium.copyWith(color: Colors.white),
          ),
          titlePadding: const EdgeInsetsDirectional.only(start: 16.0, bottom: 14.0),
          background: LoadAssetsImage("order_bg", prefix: "order"),
          collapseMode: CollapseMode.pin,
          centerTitle: true,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: LoadAssetsImage(
              "icon_search",
              prefix: "order",
              width: 22,
              height: 22,
            ),
          ),
        ],
      ),

      SliverPersistentHeader(
        pinned: true,
        delegate: SliverAppBarDelegate(
          minHeight: 100,
          maxHeight: 100,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/order/order_bg1.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 0,
                right: 16,
                bottom: 8,
              ),
              child: Card(
                color: Colors.white,
                child: TabBar(
                  labelStyle: bodyTextMedium,
                  unselectedLabelStyle: bodyTextMedium,
                  splashFactory: NoSplash.splashFactory,
                  // 移除水波纹效果
                  labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                  indicator: BoxDecoration(),
                  tabs: _buildTabs(),
                  controller: controller.tabController,
                ),
              ),
            ),
          ),
        ),
      ),
    ];
  }

  List<Widget> _buildTabs() {
    List<Widget> list = [];
    for (var data in controller.tabList) {
      list.add(
        SizedBox(
          height: double.infinity,
          child: Tab(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoadAssetsImage(
                  data.icon,
                  prefix: "order",
                  width: 20,
                  height: 20,
                ),
                SizedBox(height: 2),
                Text(data.text),
              ],
            ),
          ),
        ),
      );
    }
    return list;
  }
}
