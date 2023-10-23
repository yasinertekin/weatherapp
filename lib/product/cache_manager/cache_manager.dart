import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weatherapp/feature/MyCitiesScreen/my_cities_screen.dart';

import '../Models/Week_weather_forecast.dart/week_weather_forecast.dart';

abstract class ICacheManager {
  Future<void> cacheWeather(String key, WeekWeatherForecast weather);
  Future<void> getAllCachedModels();
  Future<void> deleteWeather(String key);
}

class CacheManager implements ICacheManager {
  final SharedPreferences sharedPreferences;

  CacheManager(this.sharedPreferences);

  @override
  Future<void> cacheWeather(String key, WeekWeatherForecast weather) async {
    final json = jsonEncode(weather.toJson());
    await sharedPreferences.setString(key, json);
  }

  @override
  Future<void> deleteWeather(String key) async {
    await sharedPreferences.remove(key);
  }

  @override
  Future<void> getAllCachedModels() async {
    final keys = sharedPreferences.getKeys();
    for (final key in keys) {
      final json = sharedPreferences.getString(key);
      final weather = WeekWeatherForecast.fromJson(jsonDecode(json!));
      myCitiesViewModel.myCitiesList.add(weather);
    }
  }
}
