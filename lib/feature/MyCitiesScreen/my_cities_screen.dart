import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:weatherapp/feature/CurrentCityScreen/current_city_screen.dart';
import 'package:weatherapp/feature/MyCitiesScreen/my_cities_view_model.dart';
import 'package:weatherapp/feature/SearchScreen/search_screen.dart';
import 'package:weatherapp/feature/SettingsScreen/settings_screen.dart';
import 'package:weatherapp/product/constants/string_constants.dart';
import 'package:weatherapp/product/enums/index.dart';
import 'package:weatherapp/product/extensions/color_extendisons.dart';
import 'package:weatherapp/product/widgets/search_city_text_field.dart';

final myCitiesViewModel = MyCitiesViewModel();

class MyCitiesScreen extends StatelessWidget {
  const MyCitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.trippleBerry.color,
        automaticallyImplyLeading: false,
        title: Text(
          StringConstants.myCities,
          style: context.general.textTheme.headlineLarge!.copyWith(
            color: CustomColors.terminatorChrome.color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Observer(
            builder: (_) {
              return Padding(
                padding: context.padding.low,
                child: SearchCityTextField(
                  onTap: () async {
                    context.navigation.push(
                      MaterialPageRoute(
                        builder: (context) => const SearchScreen(),
                      ),
                    );
                  },
                ),
              );
            },
          ),
          Observer(builder: (_) {
            myCitiesViewModel.myCitiesList.toSet().toList();
            return Expanded(
              child: ListView.builder(
                itemCount: myCitiesViewModel.myCitiesList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: context.padding.low,
                    child: Dismissible(
                      key: UniqueKey(),
                      onDismissed: (direction) {
                        myCitiesViewModel.myCitiesList.removeAt(index);
                      },
                      background: Container(
                        color: Colors.red,
                        child: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                      child: Card(
                        color: CustomColors.tangaroa.color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 5,
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          tileColor: CustomColors.tangaroa.color,
                          title: currentCityViewModel.weatherModel?.location?.region ==
                                  myCitiesViewModel.myCitiesList[index].location!.name!
                              ? Row(
                                  children: [
                                    Text(
                                      myCitiesViewModel.myCitiesList[index].location!.name!,
                                      style: context.general.textTheme.titleLarge!.copyWith(
                                        color: CustomColors.terminatorChrome.color,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: CustomColors.terminatorChrome.color,
                                    )
                                  ],
                                )
                              : Text(
                                  myCitiesViewModel.myCitiesList[index].location!.name!,
                                  style: context.general.textTheme.titleLarge!.copyWith(
                                    color: CustomColors.terminatorChrome.color,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          trailing: Text(
                            settingScreenViewModel.isCelsius
                                ? '${myCitiesViewModel.myCitiesList[index].current!.tempC.toString()}°'
                                : '${myCitiesViewModel.myCitiesList[index].current!.tempF.toString()}°',
                            style: context.general.textTheme.displayMedium!.copyWith(
                              color: CustomColors.terminatorChrome.color,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            myCitiesViewModel.myCitiesList[index].location?.localtime?.toString() ?? '',
                            style: context.general.textTheme.bodyMedium!.copyWith(
                              color: CustomColors.timeWarp.color,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          })
        ],
      ),
    );
  }
}
