import 'package:flutter/material.dart';
import 'package:project_deer/util/image_util.dart';

class LoadAssetsImage extends StatelessWidget {
  final String name;
  final int? width;
  final int? height;

  const LoadAssetsImage(this.name, {super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Image.asset(LocalImageUtil.getAssetsPath(name));
  }
}
