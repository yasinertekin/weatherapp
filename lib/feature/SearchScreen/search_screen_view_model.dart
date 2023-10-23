import 'package:mobx/mobx.dart';
import 'package:weatherapp/product/Models/Week_weather_forecast.dart/week_weather_forecast.dart';
import 'package:weatherapp/product/Service/weather_service.dart';
part 'search_screen_view_model.g.dart';

class SearchScreenViewModel = _SearchScreenViewModelBase with _$SearchScreenViewModel;

abstract class _SearchScreenViewModelBase with Store {
  @observable
  List<WeekWeatherForecast>? weekWeatherForecastList = [];

  @observable
  IWeatherService? weatherService;

  _SearchScreenViewModelBase({
    required this.weatherService,
  });

  @observable
  WeekWeatherForecast? weekWeatherForecast;

  @action
  Future<void> fetchCity(String city) async {
    weekWeatherForecast = await weatherService!.fetchCity(city);
  }
}
