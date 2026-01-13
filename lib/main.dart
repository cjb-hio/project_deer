import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deer/core/go_router.dart';

import 'core/AppBindings.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: ROUTE_SHOP_INFO,
      getPages: pageList,
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        cardColor: Colors.white,
        canvasColor: Colors.white,

        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.blue, // 全局光标颜色
          selectionHandleColor: Colors.blue,
        ),

        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        inputDecorationTheme: InputDecorationThemeData(
          hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.withAlpha(60)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
      initialBinding: AppBinding(),
    ),
  );
}
