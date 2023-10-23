import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:weatherapp/feature/CurrentCityScreen/current_city_screen.dart';
import 'package:weatherapp/feature/SettingsScreen/settings_screen.dart';
import 'package:weatherapp/product/enums/custom_colors_enums.dart';
import 'package:weatherapp/product/extensions/color_extendisons.dart';

class HeaderTemp extends StatelessWidget {
  const HeaderTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Text(
        settingScreenViewModel.isCelsius
            ? '${currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.avgtempC.toString()}°'
            : '${currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.avgtempF.toString()}°',
        style: context.general.textTheme.displayMedium?.copyWith(
          fontWeight: FontWeight.bold,
          color: CustomColors.zucchini.color,
        ),
      );
    });
  }
}
