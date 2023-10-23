import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:weatherapp/feature/CustomTabBar/custom_tab_bar.dart';
import 'package:weatherapp/feature/MyCitiesScreen/my_cities_screen.dart';
import 'package:weatherapp/feature/SearchScreen/search_screen.dart';
import 'package:weatherapp/product/enums/custom_colors_enums.dart';
import 'package:weatherapp/product/enums/image_enums.dart';
import 'package:weatherapp/product/extensions/color_extendisons.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    super.key,
    required this.index,
    required this.leading,
  });
  final int index;
  final bool leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading
          ? Observer(
              builder: (context) => Image.asset(
                searchScreenViewModel
                            .weekWeatherForecastList![index].forecast!.forecastday?.first.day!.condition?.code ==
                        1063
                    ? ImageEnums.rainy.imagePath()
                    : searchScreenViewModel
                                .weekWeatherForecastList![index].forecast!.forecastday?.first.day!.condition?.code ==
                            1000
                        ? ImageEnums.welcomeScreenHeadImage.imagePath()
                        : searchScreenViewModel.weekWeatherForecastList![index].forecast!.forecastday?.first.day!
                                    .condition?.code ==
                                1003
                            ? ImageEnums.cloud.imagePath()
                            : ImageEnums.sunnyandcloudy.imagePath(),
                height: context.general.mediaQuery.size.height * 0.5,
              ),
            )
          : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      tileColor: CustomColors.tangaroa.color,
      onTap: () async {
        await myCitiesViewModel.cacheManager
            ?.cacheWeather('city', searchScreenViewModel.weekWeatherForecastList![index]);
        await myCitiesViewModel.getAllCachedModels();
        context.navigation.push(MaterialPageRoute(
          builder: (context) => const TabBarScreen(
            currentIndex: 1,
          ),
        ));
      },
      trailing: Text(
        '${searchScreenViewModel.weekWeatherForecastList![index].current?.tempC.toString()}°',
        style: context.general.textTheme.displayMedium?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      title: Text(
        searchScreenViewModel.weekWeatherForecastList![index].location?.name ?? '',
        style: context.general.textTheme.headlineSmall?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        searchScreenViewModel.weekWeatherForecast!.location?.localtime.toString().substring(11, 16) ?? '',
        style: context.general.textTheme.bodyLarge?.copyWith(
          color: CustomColors.freshClay.color,
        ),
      ),
    );
  }
}
