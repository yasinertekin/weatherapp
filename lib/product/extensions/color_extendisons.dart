import 'package:flutter/material.dart';
import 'package:weatherapp/product/enums/custom_colors_enums.dart';

extension CustomColorsExtension on CustomColors {
  Color get color {
    switch (this) {
      case CustomColors.black:
        return const Color(0xff000000);
      case CustomColors.beluga:
        return const Color(0xfff0f1f1);
      case CustomColors.white:
        return const Color(0xffffffff);
      case CustomColors.voluptuousViolet:
        return const Color(0xff7d00e6);
      case CustomColors.trippleBerry:
        return const Color(0xff0b131e);
      case CustomColors.timeWarp:
        return const Color(0xff9399a2);
      case CustomColors.starfleetBlue:
        return const Color(0xff0095ff);
      case CustomColors.zucchini:
        return const Color(0xffdde0e4);
      case CustomColors.vividFuchsia:
        return const Color(0xff9399a2);
      case CustomColors.lightSpirit:
        return const Color(0xffc4cad3);
      case CustomColors.spelunking:
        return const Color(0xff35455E);
      case CustomColors.tangaroa:
        return const Color(0xff202b3b);
      case CustomColors.blueDepression:
        return const Color(0xffc4cad3);
      case CustomColors.blueDenim:
        return const Color(0xfff5f5f5);
      case CustomColors.terminatorChrome:
        return const Color(0xffdde0e4);
      case CustomColors.freshClay:
        return const Color(0xff9399a2);
      case CustomColors.donerKebab:
        return const Color(0xffdde0e4);
      case CustomColors.blackIsBack:
        return const Color(0xff0b131e);
    }
  }
}
