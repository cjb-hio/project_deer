import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deer/style/text_style.dart';
import 'package:project_deer/ui/viewmodel/ShopInfoViewModel.dart';
import 'package:project_deer/ui/widget/load_image.dart';

class ShopInfoPage extends GetView<ShopInfoViewModel> {
  const ShopInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: LoadAssetsImage("ic_back_black"),
        ),
        title: Text("店铺审核资料", style: titleTextLargeNoBold),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("店铺资料", style: titleTextMedium),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Text("店主手持身份证或营业执照", style: hintTextMediumStyle),
            ],
          ),

          TextField()
        ],
      ),
    );
  }
}
