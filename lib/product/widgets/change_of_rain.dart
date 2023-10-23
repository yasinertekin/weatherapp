import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:weatherapp/feature/CurrentCityScreen/current_city_screen.dart';
import 'package:weatherapp/product/constants/string_constants.dart';
import 'package:weatherapp/product/enums/custom_colors_enums.dart';
import 'package:weatherapp/product/extensions/color_extendisons.dart';

class CurrentCityChangeOfRain extends StatelessWidget {
  const CurrentCityChangeOfRain({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Text(
        currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.dailyWillItRain.toString() ==
                1.0.toString()
            ? '${StringConstants.changeOfRain} ${currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.dailyChanceOfRain.toString()}%'
            : ' 0%',
        style: context.general.textTheme.labelLarge?.copyWith(
          color: CustomColors.timeWarp.color,
        ),
      );
    });
  }
}
