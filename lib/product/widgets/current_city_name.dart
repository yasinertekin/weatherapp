import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:weatherapp/feature/CurrentCityScreen/current_city_screen.dart';
import 'package:weatherapp/product/enums/custom_colors_enums.dart';
import 'package:weatherapp/product/extensions/color_extendisons.dart';

class CurrentCityName extends StatelessWidget {
  const CurrentCityName({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Text(
          currentCityViewModel.weatherModel?.location?.region ?? '',
          style: context.general.textTheme.headlineLarge!.copyWith(
            fontWeight: FontWeight.bold,
            color: CustomColors.zucchini.color,
          ),
        );
      },
    );
  }
}
