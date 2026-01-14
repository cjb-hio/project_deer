import 'package:get/get.dart';
import 'package:project_deer/ui/page/GuidePage.dart';
import 'package:project_deer/ui/page/LoginPage.dart';
import 'package:project_deer/ui/page/MainPage.dart';
import 'package:project_deer/ui/page/StoreInfoPage.dart';

import '../ui/page/SplashPage.dart';
import '../ui/page/StoreInfoResultPage.dart';

final List<GetPage> pageList = [
  GetPage(name: ROUTE_SPLASH, page: () => SplashPage()),
  GetPage(name: ROUTE_GUIDE, page: () => GuidePage()),
  GetPage(name: ROUTE_LOGIN, page: () => LoginPage()),
  GetPage(name: ROUTE_SHOP_INFO, page: () => StoreInfoPage()),
  GetPage(name: ROUTE_SHOP_RESULT, page: () => StoreInfoResultPage()),
  GetPage(name: ROUTE_Main, page: () => MainPage()),
];

const String ROUTE_SPLASH = "/splash";
const String ROUTE_GUIDE = "/guide";
const String ROUTE_LOGIN = "/login";
const String ROUTE_SHOP_INFO = "/shopInfo";
const String ROUTE_SHOP_RESULT = "/shopInfoResult";
const String ROUTE_Main = "/mainPage";