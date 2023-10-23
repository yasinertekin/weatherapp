import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:weatherapp/feature/SearchScreen/search_screen_view_model.dart';
import 'package:weatherapp/product/Service/weather_service.dart';
import 'package:weatherapp/product/enums/custom_colors_enums.dart';
import 'package:weatherapp/product/extensions/color_extendisons.dart';
import 'package:weatherapp/product/widgets/search_card.dart';
import 'package:weatherapp/product/widgets/search_city_text_field.dart';

final searchScreenViewModel = SearchScreenViewModel(
  weatherService: WeatherService(
    Dio(
      BaseOptions(
        baseUrl: ServicePath.BASEURL.rawValue,
      ),
    ),
  ),
);

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: CustomColors.trippleBerry.color,
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        title: const SizedBox(
          height: 50,
          child: SearchCityTextField(
            autofocus: true,
          ),
        ),
      ),
      body: SizedBox(
        height: context.general.mediaQuery.size.height * 1,
        child: Column(
          children: [
            Observer(builder: (_) {
              return Expanded(
                child: ListView.builder(
                  itemCount: searchScreenViewModel.weekWeatherForecastList?.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SearchCard(
                      leading: true,
                      index: index,
                    ),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
