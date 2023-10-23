import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weatherapp/product/Models/Week_weather_forecast.dart/week_weather_forecast.dart';
import 'package:weatherapp/product/cache_manager/cache_manager.dart';
part 'my_cities_view_model.g.dart';

class MyCitiesViewModel = _MyCitiesViewModelBase with _$MyCitiesViewModel;

abstract class _MyCitiesViewModelBase with Store {
  ICacheManager? cacheManager;

  _MyCitiesViewModelBase() {
    cacheWeatherInitialize();
  }

  Future<void> cacheWeatherInitialize() async {
    cacheManager = CacheManager(
      await SharedPreferences.getInstance(),
    );
    await getAllCachedModels();
  }

  @observable
  ObservableList<WeekWeatherForecast> myCitiesList = ObservableList<WeekWeatherForecast>();

  @observable
  bool isCardOpen = false;

  @action
  Future<void> addCity(WeekWeatherForecast city) async {
    myCitiesList.add(city);
    await cacheManager!.cacheWeather('city', city);
  }

  @action
  Future<void> deleteCity(WeekWeatherForecast city) async {
    myCitiesList.remove(city);
    await cacheManager!.deleteWeather('city');
  }

  @action
  Future<void> getAllCachedModels() async {
    await cacheManager!.getAllCachedModels();
  }

  @action
  Future<void> changeIsCardOpen() async {
    isCardOpen = !isCardOpen;
  }
}
