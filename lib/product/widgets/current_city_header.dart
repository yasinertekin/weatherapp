import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:weatherapp/product/widgets/change_of_rain.dart';
import 'package:weatherapp/product/widgets/current_city_head_image.dart';
import 'package:weatherapp/product/widgets/current_city_header_temp.dart';
import 'package:weatherapp/product/widgets/current_city_name.dart';

class CurrentCityScreenHeader extends StatelessWidget {
  const CurrentCityScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.medium,
      child: const Column(
        children: [
          CurrentCityName(),
          CurrentCityChangeOfRain(),
          CurrentCityHeadImage(),
          HeaderTemp(),
        ],
      ),
    );
  }
}
