import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:weatherapp/feature/AirConditionsDetails/air_conditions_details.dart';
import 'package:weatherapp/feature/CurrentCityScreen/current_city_screen_view_model.dart';
import 'package:weatherapp/feature/SettingsScreen/settings_screen.dart';
import 'package:weatherapp/feature/WelcomeScreen/welcome_screen.dart';
import 'package:weatherapp/product/Service/weather_service.dart';
import 'package:weatherapp/product/constants/decoration_constants.dart';
import 'package:weatherapp/product/constants/string_constants.dart';
import 'package:weatherapp/product/enums/custom_colors_enums.dart';
import 'package:weatherapp/product/enums/image_enums.dart';
import 'package:weatherapp/product/extensions/color_extendisons.dart';

import 'package:weatherapp/product/widgets/current_city_header.dart';

final currentCityViewModel = CurrentCityViewModel(
  lat: welcomeScreenViewModel.locationData?.latitude.toString(),
  lot: welcomeScreenViewModel.locationData?.longitude.toString(),
  weatherService: WeatherService(
    Dio(
      BaseOptions(baseUrl: ServicePath.BASEURL.rawValue),
    ),
  ),
);

class CurrentCityScreen extends StatelessWidget {
  const CurrentCityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CurrentCityScreenHeader(),
                _RowCard(),
                Gutter(),
                _MidListViewCard(),
                Gutter(),
                _CurrentCityScreenBottomCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CurrentCityScreenBottomCard extends StatelessWidget {
  const _CurrentCityScreenBottomCard();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.low,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            DecorationConstants.defaultButtonBorderRadius,
          ),
        ),
        color: CustomColors.tangaroa.color,
        child: Padding(
          padding: context.padding.low,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: context.padding.low,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _BottomCardTitle(),
                    _SeeMoreButton(),
                  ],
                ),
              ),
              Observer(builder: (_) {
                return Row(
                  children: [
                    _AirConditionsItems(
                      airConditionItemTitle: StringConstants.realFeel,
                      airConditionItemValue:
                          ' ${currentCityViewModel.weekWeatherForecast?.current?.feelslikeC.toString()}°',
                      airConditionItemIcon: Icon(
                        Icons.thermostat_outlined,
                        color: CustomColors.timeWarp.color,
                      ),
                    ),
                    _AirConditionsItems(
                      airConditionItemTitle: StringConstants.wind,
                      airConditionItemValue:
                          ' ${currentCityViewModel.weekWeatherForecast?.current?.windKph.toString()} km/h',
                      airConditionItemIcon: Icon(
                        Icons.air_outlined,
                        color: CustomColors.timeWarp.color,
                      ),
                    ),
                  ],
                );
              }),
              Observer(builder: (_) {
                return Row(
                  children: [
                    _AirConditionsItems(
                      airConditionItemTitle: StringConstants.changeOfRain,
                      airConditionItemValue: currentCityViewModel
                                  .hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.dailyWillItRain
                                  .toString() ==
                              1.0.toString()
                          ? ' ${currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.dailyChanceOfRain.toString()}%'
                          : ' 0%',
                      airConditionItemIcon: Icon(
                        Icons.water_drop,
                        color: CustomColors.timeWarp.color,
                      ),
                    ),
                    _AirConditionsItems(
                      airConditionItemTitle: StringConstants.uvIndex,
                      airConditionItemValue: ' ${currentCityViewModel.weekWeatherForecast?.current?.uv.toString()}',
                      airConditionItemIcon: Icon(
                        Icons.water_drop,
                        color: CustomColors.timeWarp.color,
                      ),
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomCardTitle extends StatelessWidget {
  const _BottomCardTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstants.airConditions,
      style: context.general.textTheme.bodySmall?.copyWith(
        fontWeight: FontWeight.bold,
        color: CustomColors.vividFuchsia.color,
      ),
    );
  }
}

class _SeeMoreButton extends StatelessWidget {
  const _SeeMoreButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            DecorationConstants.defaultButtonBorderRadius,
          ),
        ),
        backgroundColor: CustomColors.starfleetBlue.color,
        elevation: 0,
      ),
      onPressed: () {
        context.route.navigateToPage(const AirConditionsDetailsScreen());
      },
      child: Text(
        StringConstants.seeMore,
        style: context.general.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.bold,
          color: CustomColors.blueDenim.color,
        ),
      ),
    );
  }
}

class _AirConditionsItems extends StatelessWidget {
  const _AirConditionsItems(
      {Key? key,
      required this.airConditionItemTitle,
      required this.airConditionItemValue,
      required this.airConditionItemIcon})
      : super(key: key);

  final String airConditionItemTitle;
  final String airConditionItemValue;
  final Icon airConditionItemIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.low,
      child: Row(
        children: [
          Icon(
            airConditionItemIcon.icon,
            color: CustomColors.timeWarp.color,
          ),
          Padding(
            padding: context.padding.onlyLeftLow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: context.general.mediaQuery.size.width * 0.3,
                  child: Text(
                    airConditionItemTitle,
                    style: context.general.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: CustomColors.timeWarp.color,
                    ),
                  ),
                ),
                Text(
                  airConditionItemValue,
                  style: context.general.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: CustomColors.blueDepression.color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MidListViewCard extends StatelessWidget {
  const _MidListViewCard();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.low,
      child: Card(
        color: CustomColors.tangaroa.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            DecorationConstants.defaultButtonBorderRadius,
          ),
        ),
        child: Padding(
          padding: context.padding.low,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _MidListViewTitle(),
              _MidListView(),
            ],
          ),
        ),
      ),
    );
  }
}

class _MidListViewTitle extends StatelessWidget {
  const _MidListViewTitle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.low,
      child: Text(
        StringConstants.weeklyForecast,
        style: context.general.textTheme.labelMedium?.copyWith(
          fontWeight: FontWeight.bold,
          color: CustomColors.vividFuchsia.color,
        ),
      ),
    );
  }
}

class _MidListView extends StatelessWidget {
  const _MidListView();

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    List<String> dayOfWeekList = [
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat',
      'Sun',
    ];

    return Observer(builder: (_) {
      return Padding(
        padding: context.padding.onlyLeftLow,
        child: SizedBox(
          height: context.general.mediaQuery.size.height * 0.35,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: currentCityViewModel.weekWeatherForecast?.forecast?.forecastday?.length ?? 0,
            itemBuilder: (context, index) {
              final forecastDays = currentCityViewModel.weekWeatherForecast?.forecast?.forecastday;
              final dayOfWeek = (now.weekday + index - 1) % 7;
              dayOfWeekList[0] = 'Today';

              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: context.general.mediaQuery.size.width * 0.1,
                        child: Text(
                          dayOfWeekList[dayOfWeek],
                          style: context.general.textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: CustomColors.timeWarp.color,
                          ),
                        ),
                      ), // Hesaplanan günü yazdır
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: context.general.mediaQuery.size.width * 0.13,
                            child: Image.asset(
                              forecastDays?[index].day?.condition?.code == 1063
                                  ? ImageEnums.rainy.imagePath()
                                  : forecastDays?[index].day?.condition?.code == 1000
                                      ? ImageEnums.welcomeScreenHeadImage.imagePath()
                                      : forecastDays?[index].day?.condition?.code == 1003
                                          ? ImageEnums.cloud.imagePath()
                                          : ImageEnums.sunnyandcloudy.imagePath(),
                              height: context.general.mediaQuery.size.height * 0.05,
                            ),
                          ),
                          SizedBox(
                            width: context.general.mediaQuery.size.width * 0.13,
                            child: Padding(
                              padding: context.padding.onlyLeftLow,
                              child: Text(
                                forecastDays?[index].day?.condition?.code == 1063
                                    ? 'Rainy'
                                    : forecastDays?[index].day?.condition?.code == 1000
                                        ? 'Sunny'
                                        : forecastDays?[index].day?.condition?.code == 1003
                                            ? 'Cloudy'
                                            : 'Partly',
                                style: context.general.textTheme.labelMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.blueDepression.color,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: context.general.mediaQuery.size.width * 0.18,
                        child: Padding(
                          padding: context.padding.onlyRightMedium,
                          child: Text(
                            settingScreenViewModel.isCelsius
                                ? '${forecastDays?[index].day?.avgtempC.toString()}°'
                                : '${forecastDays?[index].day?.avgtempF.toString()}°',
                            style: context.general.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: CustomColors.blueDepression.color,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: CustomColors.spelunking.color,
                    endIndent: 20,
                  ),
                ],
              );
            },
          ),
        ),
      );
    });
  }
}

class _RowCard extends StatelessWidget {
  const _RowCard();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Padding(
        padding: context.padding.low,
        child: Card(
          color: CustomColors.tangaroa.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              DecorationConstants.defaultButtonBorderRadius,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _RowCardTitle(),
              _RowItemsBody(
                amForecast: settingScreenViewModel.isCelsius
                    ? currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday?.first.hour?.first.tempC
                            .toString() ??
                        'N/A'
                    : currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday?.first.hour?.first.tempF
                            .toString() ??
                        'N/A',
                midnightForecast: settingScreenViewModel.isCelsius
                    ? currentCityViewModel.hourlyForeCastWeatherMidnight?.forecast?.forecastday?.first.hour?.first.tempC
                            .toString() ??
                        'N/A'
                    : currentCityViewModel.hourlyForeCastWeatherMidnight?.forecast?.forecastday?.first.hour?.first.tempF
                            .toString() ??
                        'N/A',
                pmForecast: settingScreenViewModel.isCelsius
                    ? currentCityViewModel.hourlyForeCastWeatherPM?.forecast?.forecastday?.first.hour?.first.tempC
                            .toString() ??
                        'N/A'
                    : currentCityViewModel.hourlyForeCastWeatherPM?.forecast?.forecastday?.first.hour?.first.tempF
                            .toString() ??
                        'N/A',
              ),
            ],
          ),
        ),
      );
    });
  }
}

class _RowItemsBody extends StatelessWidget {
  const _RowItemsBody({
    required this.amForecast,
    required this.midnightForecast,
    required this.pmForecast,
  });

  final String amForecast;
  final String midnightForecast;
  final String pmForecast;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _RowCardItems(
          imagePath: ImageEnums.welcomeScreenHeadImage.imagePath(),
          temp: '$amForecast°',
          time: StringConstants.nineAM,
        ),
        const _RowCardDivider(),
        _RowCardItems(
          imagePath: ImageEnums.welcomeScreenHeadImage.imagePath(),
          temp: '$midnightForecast°',
          time: StringConstants.twelvePM,
        ),
        const _RowCardDivider(),
        _RowCardItems(
          imagePath: ImageEnums.welcomeScreenHeadImage.imagePath(),
          temp: '$pmForecast°',
          time: StringConstants.threePM,
        ),
      ],
    );
  }
}

class _RowCardTitle extends StatelessWidget {
  const _RowCardTitle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.normal,
      child: Text(
        StringConstants.todaysForecast,
        style: context.general.textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: CustomColors.vividFuchsia.color,
        ),
      ),
    );
  }
}

class _RowCardItems extends StatelessWidget {
  const _RowCardItems({
    Key? key,
    required this.time,
    required this.temp,
    required this.imagePath,
  }) : super(key: key);

  final String time;
  final String temp;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyLeftLow,
      child: Column(
        children: [
          _RowCardItemsTime(time: time),
          const _RowCardItemsImage(),
          _RowCardItemsTemp(temp: temp),
        ],
      ),
    );
  }
}

class _RowCardItemsTemp extends StatelessWidget {
  const _RowCardItemsTemp({
    required this.temp,
  });

  final String temp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyBottomLow,
      child: Observer(builder: (_) {
        return Text(
          temp,
          style: context.general.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: CustomColors.lightSpirit.color,
          ),
        );
      }),
    );
  }
}

class _RowCardItemsImage extends StatelessWidget {
  const _RowCardItemsImage();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageEnums.welcomeScreenHeadImage.imagePath(),
      height: context.general.mediaQuery.size.height * DecorationConstants.defaultImageHeight,
    );
  }
}

class _RowCardItemsTime extends StatelessWidget {
  const _RowCardItemsTime({
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Text(
      time,
      style: context.general.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: CustomColors.vividFuchsia.color,
      ),
    );
  }
}

class _RowCardDivider extends StatelessWidget {
  const _RowCardDivider();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.low,
      child: Container(
        height: context.general.mediaQuery.size.height * DecorationConstants.defaultDividerHeight,
        width: context.general.mediaQuery.size.width * DecorationConstants.defaultDividerWidth,
        color: CustomColors.spelunking.color,
      ),
    );
  }
}
