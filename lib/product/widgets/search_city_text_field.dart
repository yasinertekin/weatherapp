import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:weatherapp/feature/SearchScreen/search_screen.dart';
import 'package:weatherapp/product/enums/custom_colors_enums.dart';
import 'package:weatherapp/product/extensions/color_extendisons.dart';

class SearchCityTextField extends StatelessWidget {
  const SearchCityTextField({
    super.key,
    this.onTap,
    this.autofocus = false,
  });

  final void Function()? onTap;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      autofocus: autofocus,
      onChanged: (value) async {
        searchScreenViewModel.weekWeatherForecastList!.clear();
        searchScreenViewModel.fetchCity(value);
        searchScreenViewModel.weekWeatherForecastList!.add(searchScreenViewModel.weekWeatherForecast!);
      },
      decoration: InputDecoration(
        hintText: 'Search for cities',
        hintStyle: context.general.textTheme.bodyLarge?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        fillColor: CustomColors.tangaroa.color,
        filled: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
