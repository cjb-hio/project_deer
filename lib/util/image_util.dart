class LocalImageUtil {
  static String getAssetsPath(
    String name, {
    String? prefix,
    ImageFormat format = ImageFormat.png,
  }) {
    String p = prefix ?? "";
    return "assets/images/$p/$name.${format.name}";
  }
}

enum ImageFormat { png, webp }
