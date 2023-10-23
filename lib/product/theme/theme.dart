import 'package:flutter/material.dart';
import 'package:weatherapp/product/enums/custom_colors_enums.dart';
import 'package:weatherapp/product/extensions/color_extendisons.dart';

class Themes {
  final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.red,
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  final darkTheme = ThemeData(
    scaffoldBackgroundColor: CustomColors.trippleBerry.color,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
