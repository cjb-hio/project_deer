
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deer/ui/viewmodel/MainShopViewModel.dart'
    show MainShopViewModel;

class MainShopPage extends GetView<MainShopViewModel> {
  const MainShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: Colors.red));
  }
}
