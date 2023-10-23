import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:location/location.dart';
import 'package:weatherapp/feature/CustomTabBar/custom_tab_bar.dart';
import 'package:weatherapp/feature/WelcomeScreen/welcome_screen_view_model.dart';
import 'package:weatherapp/product/constants/string_constants.dart';
import 'package:weatherapp/product/enums/custom_colors_enums.dart';
import 'package:weatherapp/product/enums/image_enums.dart';
import 'package:weatherapp/product/extensions/color_extendisons.dart';

final welcomeScreenViewModel = WelcomeScreenViewModel();

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _WelcomeScreenBody(),
    );
  }
}

class _WelcomeScreenBody extends StatelessWidget {
  const _WelcomeScreenBody();

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    double saatDouble = now.hour.toDouble() + 3;

    welcomeScreenViewModel.hour = saatDouble.toString();

    return const SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _WelcomeScreenImage(),
            _WelcomeScreenTitle(),
            _WelcomeScreenDesc(),
            _WelcomeScreenCircleAvatarButton(),
          ],
        ),
      ),
    );
  }
}

class _WelcomeScreenCircleAvatarButton extends StatelessWidget {
  const _WelcomeScreenCircleAvatarButton();

  @override
  Widget build(BuildContext context) {
    const double circleAvatarRadius = 25;
    return Padding(
      padding: context.padding.onlyTopHigh,
      child: CircleAvatar(
        radius: circleAvatarRadius,
        backgroundColor: CustomColors.starfleetBlue.color,
        child: IconButton(
          onPressed: () async {
            try {
              Location location = Location();

              bool serviceEnabled = await location.serviceEnabled();
              if (!serviceEnabled) {
                serviceEnabled = await location.requestService();
                if (!serviceEnabled) {
                  return;
                }
              }

              PermissionStatus permissionGranted = await location.hasPermission();
              if (permissionGranted == PermissionStatus.denied) {
                permissionGranted = await location.requestPermission();
                if (permissionGranted != PermissionStatus.granted) {
                  return;
                }
              }
              welcomeScreenViewModel.locationData = await location.getLocation();

              if (welcomeScreenViewModel.locationData != null) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TabBarScreen(
                              currentIndex: 0,
                            )));
              } else {}
            } catch (e) {
              // Handle any exceptions that may occur during location fetching
            }
          },
          icon: const Icon(Icons.location_on),
        ),
      ),
    );
  }
}

class _WelcomeScreenDesc extends StatelessWidget {
  const _WelcomeScreenDesc();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstants.welcomeScreenDescription,
      style: context.general.textTheme.headlineSmall?.copyWith(
        color: CustomColors.timeWarp.color,
      ),
    );
  }
}

class _WelcomeScreenTitle extends StatelessWidget {
  const _WelcomeScreenTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstants.appName,
      style: context.general.textTheme.displayMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: CustomColors.beluga.color,
      ),
    );
  }
}

class _WelcomeScreenImage extends StatelessWidget {
  const _WelcomeScreenImage();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageEnums.homeScreenImage.imagePath(),
    );
  }
}
