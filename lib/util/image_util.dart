class LocalImageUtil {
  static String getAssetsPath(
    String name, {
    ImageFormat format = ImageFormat.png,
  }) {
    return "assets/images/$name.${format.name}";
  }
}

enum ImageFormat { png, webp }
