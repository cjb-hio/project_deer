

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_deer/core/go_router.dart';
import 'package:project_deer/ui/widget/load_image.dart';
import 'package:project_deer/util/image_util.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CarouselSlider(
        items: _getBannerList(() {
          context.go(ROUTE_LOGIN);
        }),
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height, // 关键：使用屏幕高度
          viewportFraction: 1.0, // 关键：每页占满宽度),
          enableInfiniteScroll: false,
        ),
      ),
    );
  }
}

List<Widget>? _getBannerList(GestureTapCallback callback) {
  final List<String> imageList = ['app_start_1', 'app_start_2', 'app_start_3'];
  final List<Widget> list = [];
  for (int i = 0; i < imageList.length; i++) {
    if (i == imageList.length - 1) {
      list.add(
        GestureDetector(
          child: LoadAssetsImage(
            imageList[i],
            format: ImageFormat.webp,
            fit: BoxFit.cover,
          ),
          onTap: () {
            callback();
          },
        ),
      );
    } else {
      list.add(
        LoadAssetsImage(
          imageList[i],
          format: ImageFormat.webp,
          fit: BoxFit.cover,
        ),
      );
    }
  }

  return list;
}
