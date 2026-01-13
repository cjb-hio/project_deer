import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deer/style/text_style.dart';
import 'package:project_deer/ui/viewmodel/ShopInfoViewModel.dart';
import 'package:project_deer/ui/widget/edit_item.dart';
import 'package:project_deer/ui/widget/load_image.dart';

import '../style/button_style.dart';

class StoreInfoPage extends GetView<StoreInfoViewModel> {
  const StoreInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading: IconButton(
          onPressed: () {},
          icon: LoadAssetsImage("ic_back_black"),
        ),
        title: Text("店铺审核资料", style: titleTextLargeNoBold),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            SizedBox(height: 8),
            Text("店铺资料", style: titleTextMedium),
            SizedBox(height: 8),
            Center(
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      padding: EdgeInsets.zero, // 移除默认内边距
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    icon: LoadAssetsImage(
                      "icon_zj",
                      prefix: "store",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text("店主手持身份证或营业执照", style: hintTextMediumStyle),
                ],
              ),
            ),

            SizedBox(height: 16),
            EditWithNameItem("店铺名称", hintText: "请填写店铺名称"),
            SizedBox(height: 8),
            EditWithGoItem("主营范围"),
            SizedBox(height: 8),
            EditWithGoItem("店铺地址"),
            SizedBox(height: 16),
            Text("店主信息", style: titleTextMedium),
            SizedBox(height: 16),
            EditWithNameItem("店主姓名", hintText: "请填写店主姓名"),
            SizedBox(height: 8),
            EditWithNameItem("联系电话", hintText: "请填写店主联系电话"),

            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.goToStoreResult();
              },
              style: sureButtonStyle,
              child: Text("提交"),
            ),
          ],
        ),
      ),
    );
  }
}
