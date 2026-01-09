import 'package:flutter/material.dart';
import 'package:project_deer/util/image_util.dart';

class LoadAssetsImage extends StatelessWidget {
  final String name;
  final int? width;
  final int? height;
  final ImageFormat format;
  final BoxFit fit;

  const LoadAssetsImage(
    this.name, {
    super.key,
    this.width,
    this.height,
    this.format = ImageFormat.png,
    this.fit = BoxFit.scaleDown,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      LocalImageUtil.getAssetsPath(name, format: format),
      fit: fit,
    );
  }
}
