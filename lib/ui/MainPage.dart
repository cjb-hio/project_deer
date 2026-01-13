import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deer/core/go_router.dart';
import 'package:project_deer/style/text_style.dart';
import 'package:project_deer/ui/widget/load_image.dart';
import 'package:project_deer/util/time_util.dart';

import '../style/button_style.dart';

class MainPage extends GetView {
  const MainPage({super.key});

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
      body: Text("123"),
    );
  }
}
