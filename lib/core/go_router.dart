import 'package:get/get.dart';
import 'package:project_deer/ui/GuidePage.dart';
import 'package:project_deer/ui/LoginPage.dart';
import 'package:project_deer/ui/ShopInfoPage.dart';
import 'package:project_deer/ui/SplashPage.dart';

final List<GetPage> pageList = [
  GetPage(name: ROUTE_SPLASH, page: () => SplashPage()),
  GetPage(name: ROUTE_GUIDE, page: () => GuidePage()),
  GetPage(name: ROUTE_LOGIN, page: () => LoginPage()),
  GetPage(name: ROUTE_SHOP_INFO, page: () => ShopInfoPage()),
];

const String ROUTE_SPLASH = "/splash";
const String ROUTE_GUIDE = "/guide";
const String ROUTE_LOGIN = "/login";
const String ROUTE_SHOP_INFO = "/shopInfo";
