import 'package:get/get.dart';
import 'package:project_deer/ui/viewmodel/LoginViewModel.dart';
import 'package:project_deer/ui/viewmodel/MainBookViewModel.dart';
import 'package:project_deer/ui/viewmodel/MainShopViewModel.dart';
import 'package:project_deer/ui/viewmodel/MainViewModel.dart';
import 'package:project_deer/ui/viewmodel/ShopInfoViewModel.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    // 在这里注册所有需要的依赖
    Get.lazyPut<LoginViewModel>(() => LoginViewModel());
    Get.lazyPut<StoreInfoViewModel>(() => StoreInfoViewModel());

    Get.lazyPut<MainViewModel>(() => MainViewModel());
    Get.lazyPut<MainShopViewModel>(() => MainShopViewModel());
    Get.lazyPut<MainBookViewModel>(() => MainBookViewModel());
  }
}
