import 'package:flutter/material.dart';
import 'package:weatherapp/product/enums/image_enums.dart';

class CurrentCityHeadImage extends StatelessWidget {
  const CurrentCityHeadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImageEnums.welcomeScreenHeadImage.imagePath());
  }
}
