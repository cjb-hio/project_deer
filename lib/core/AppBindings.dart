import 'package:get/get.dart';
import 'package:project_deer/ui/viewmodel/LoginViewModel.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    // 在这里注册所有需要的依赖
    Get.lazyPut<LoginViewModel>(() => LoginViewModel());
  }
}
