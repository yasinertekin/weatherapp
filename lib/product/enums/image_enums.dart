enum ImageEnums {
  homeScreenImage,
  welcomeScreenHeadImage,
  rainy,
  cloud,
  sunnyandcloudy,
}

// Enum değerlerine karşılık gelen metotları bu şekilde tanımlayabilirsiniz
extension ImageEnumsExtension on ImageEnums {
  String imageName() {
    switch (this) {
      case ImageEnums.homeScreenImage:
        return 'umbrella';
      case ImageEnums.welcomeScreenHeadImage:
        return 'sun';
      case ImageEnums.rainy:
        return 'rainy';
      case ImageEnums.cloud:
        return 'cloud';
      case ImageEnums.sunnyandcloudy:
        return 'sunnyandcloudy';

      default:
        return '';
    }
  }

  String imagePath() {
    String name = imageName();
    if (name.isNotEmpty) {
      return 'assets/images/$name.png';
    }
    return '';
  }
}
