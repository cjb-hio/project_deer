import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deer/core/go_router.dart';
import 'package:project_deer/style/button_style.dart';
import 'package:project_deer/style/text_style.dart';
import 'package:project_deer/ui/widget/load_image.dart';
import 'package:project_deer/util/time_util.dart';

class StoreInfoResultPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: LoadAssetsImage("ic_back_black", width: 24, height: 24),
            ),
            Text("审核结果", style: titleTextMedium),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 48),
              LoadAssetsImage("icon_success", prefix: "store"),
              SizedBox(height: 24),
              Text("恭喜店铺资料审核成功", style: bodyTextMedium),
              SizedBox(height: 6),
              Text(TimeUtil.getNowTime(), style: hintTextSmallStyle),
              SizedBox(height: 6),
              Text(
                "预计完成时间  ${TimeUtil.getNextDate(format: "MM月dd日", next: 1)}",
                style: hintTextSmallStyle,
              ),
              SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed(ROUTE_Main);
                  },
                  style: sureButtonStyle,
                  child: Text("进入"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
