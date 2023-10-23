import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:weatherapp/feature/SettingsScreen/settings_screen_view_model.dart';
import 'package:weatherapp/product/constants/decoration_constants.dart';
import 'package:weatherapp/product/constants/string_constants.dart';
import 'package:weatherapp/product/enums/custom_colors_enums.dart';
import 'package:weatherapp/product/extensions/color_extendisons.dart';

final settingScreenViewModel = SettingsScreenViewModel();

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.trippleBerry.color,
        automaticallyImplyLeading: false,
        title: const _SettingsScreenAppBarTitle(),
      ),
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _SettingsScreenUnitsTitleText(),
            _SettingsScreenHeaderCard(),
            _NatificationsSettings(),
            _GeneralSettings(),
          ],
        ),
      ),
    );
  }
}

class _GeneralSettings extends StatelessWidget {
  const _GeneralSettings();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.low,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _GeneralSettingsTitle(),
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                DecorationConstants.lowBorderRadius,
              ),
            ),
            color: CustomColors.tangaroa.color,
            child: Column(
              children: [
                const _GeneralSettingsChangeTheme(),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: CustomColors.spelunking.color,
                  endIndent: 20,
                  indent: 20,
                ),
                const _GeneralSettingsLocation(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _GeneralSettingsLocation extends StatelessWidget {
  const _GeneralSettingsLocation();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      subtitle: Text(
        StringConstants.getWeatherYourLocation,
        style: context.general.textTheme.titleMedium?.copyWith(
          color: CustomColors.timeWarp.color,
        ),
      ),
      title: Text(
        StringConstants.location,
        style: context.general.textTheme.titleMedium?.copyWith(
          color: CustomColors.lightSpirit.color,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: CupertinoSwitch(
        value: true,
        activeColor: CustomColors.starfleetBlue.color,
        trackColor: CustomColors.blackIsBack.color,
        onChanged: (value) {},
      ),
    );
  }
}

class _GeneralSettingsChangeTheme extends StatelessWidget {
  const _GeneralSettingsChangeTheme();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        StringConstants.changeTheme,
        style: context.general.textTheme.titleMedium?.copyWith(
          color: CustomColors.lightSpirit.color,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: CupertinoSwitch(
        value: true,
        activeColor: CustomColors.starfleetBlue.color,
        trackColor: CustomColors.blackIsBack.color,
        onChanged: (value) {},
      ),
    );
  }
}

class _GeneralSettingsTitle extends StatelessWidget {
  const _GeneralSettingsTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstants.general,
      style: TextStyle(
        color: CustomColors.lightSpirit.color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _NatificationsSettings extends StatelessWidget {
  const _NatificationsSettings();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.low,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _NatificationSettingsTitle(),
          _NatificationsSettingsCard(),
        ],
      ),
    );
  }
}

class _NatificationsSettingsCard extends StatelessWidget {
  const _NatificationsSettingsCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          DecorationConstants.lowBorderRadius,
        ),
      ),
      color: CustomColors.tangaroa.color,
      child: Padding(
        padding: context.padding.low,
        child: const ListTile(
          title: _NatificationSettingsCardTitle(),
          subtitle: _NotificationsCardSubtitle(),
          trailing: _NatificationsCardTrailing(),
        ),
      ),
    );
  }
}

class _NatificationsCardTrailing extends StatelessWidget {
  const _NatificationsCardTrailing();

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: true,
      activeColor: CustomColors.starfleetBlue.color,
      trackColor: CustomColors.blackIsBack.color,
      onChanged: (value) {},
    );
  }
}

class _NotificationsCardSubtitle extends StatelessWidget {
  const _NotificationsCardSubtitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstants.beAwareOfTheWater,
      style: context.general.textTheme.titleMedium?.copyWith(
        color: CustomColors.timeWarp.color,
      ),
    );
  }
}

class _NatificationSettingsCardTitle extends StatelessWidget {
  const _NatificationSettingsCardTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstants.notifications,
      style: context.general.textTheme.titleMedium?.copyWith(
        color: CustomColors.lightSpirit.color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _NatificationSettingsTitle extends StatelessWidget {
  const _NatificationSettingsTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstants.notifications,
      style: context.general.textTheme.titleMedium?.copyWith(
        color: CustomColors.lightSpirit.color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _SettingsScreenAppBarTitle extends StatelessWidget {
  const _SettingsScreenAppBarTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstants.settings,
      style: context.general.textTheme.headlineMedium?.copyWith(
        color: CustomColors.terminatorChrome.color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _SettingsScreenHeaderCard extends StatelessWidget {
  const _SettingsScreenHeaderCard();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.low,
      child: Card(
        color: CustomColors.tangaroa.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            DecorationConstants.lowBorderRadius,
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _TempatureSettings(),
            Gutter(),
            _WindSpeedSettings(),
            Gutter(),
            _PrecipitationSettings(),
            Gutter(),
          ],
        ),
      ),
    );
  }
}

class _SettingsScreenUnitsTitleText extends StatelessWidget {
  const _SettingsScreenUnitsTitleText();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyLeftNormal,
      child: Text(StringConstants.units,
          style: context.general.textTheme.titleMedium?.copyWith(
            color: CustomColors.lightSpirit.color,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}

class _PrecipitationSettings extends StatelessWidget {
  const _PrecipitationSettings();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SettingsItemsTitle(
          tempatureTitle: StringConstants.precipitation,
        ),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              DecorationConstants.lowBorderRadius,
            ),
          ),
          color: CustomColors.blackIsBack.color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Gutter(),
              Observer(builder: (_) {
                return _CustomElevatedButton(
                  title: StringConstants.milimeters,
                  color: settingScreenViewModel.precipitation
                      ? CustomColors.spelunking.color
                      : CustomColors.blackIsBack.color,
                );
              }),
              const Gutter(),
              Observer(builder: (_) {
                return _CustomElevatedButton(
                  title: StringConstants.inches,
                  color: settingScreenViewModel.precipitation
                      ? CustomColors.blackIsBack.color
                      : CustomColors.spelunking.color,
                );
              }),
              const Gutter(),
            ],
          ),
        ),
      ],
    );
  }
}

class _WindSpeedSettings extends StatelessWidget {
  const _WindSpeedSettings();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SettingsItemsTitle(
          tempatureTitle: StringConstants.windSpeed,
        ),
        Card(
          color: CustomColors.blackIsBack.color,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Gutter(),
              Observer(
                builder: (_) {
                  return _CustomElevatedButton(
                    title: StringConstants.kmh,
                    color:
                        settingScreenViewModel.isKmh ? CustomColors.spelunking.color : CustomColors.blackIsBack.color,
                  );
                },
              ),
              const Gutter(),
              Observer(
                builder: (_) {
                  return _CustomElevatedButton(
                    title: StringConstants.mph,
                    color:
                        settingScreenViewModel.isKmh ? CustomColors.blackIsBack.color : CustomColors.spelunking.color,
                  );
                },
              ),
              const Gutter(),
            ],
          ),
        ),
      ],
    );
  }
}

class _TempatureSettings extends StatelessWidget {
  const _TempatureSettings();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SettingsItemsTitle(
          tempatureTitle: StringConstants.tempature,
        ),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              DecorationConstants.lowBorderRadius,
            ),
          ),
          color: CustomColors.blackIsBack.color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Gutter(),
              Observer(builder: (_) {
                return _CustomElevatedButton(
                  title: StringConstants.celsius,
                  color:
                      settingScreenViewModel.isCelsius ? CustomColors.spelunking.color : CustomColors.blackIsBack.color,
                );
              }),
              const Gutter(),
              Observer(builder: (_) {
                return _CustomElevatedButton(
                  title: StringConstants.fahrenheit,
                  color:
                      settingScreenViewModel.isCelsius ? CustomColors.blackIsBack.color : CustomColors.spelunking.color,
                );
              }),
              const Gutter(),
            ],
          ),
        ),
      ],
    );
  }
}

class _SettingsItemsTitle extends StatelessWidget {
  const _SettingsItemsTitle({required this.tempatureTitle});

  final String tempatureTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.low,
      child: Text(
        tempatureTitle,
        style: context.general.textTheme.labelLarge?.copyWith(
          color: CustomColors.timeWarp.color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _CustomElevatedButton extends StatelessWidget {
  const _CustomElevatedButton({required this.title, required this.color});
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              DecorationConstants.lowBorderRadius,
            ),
          ),
          backgroundColor: color,
          elevation: 0,
        ),
        onPressed: () {
          if (title == StringConstants.celsius || title == StringConstants.fahrenheit) {
            settingScreenViewModel.changeTempatureUnit();
          } else if (title == StringConstants.kmh || title == StringConstants.mph) {
            settingScreenViewModel.changeWindSpeedUnit();
          } else if (title == StringConstants.milimeters || title == StringConstants.inches) {
            settingScreenViewModel.changePrecipitationUnit();
          }
        },
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
