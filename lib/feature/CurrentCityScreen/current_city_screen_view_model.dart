import 'package:weatherapp/product/Models/HourlyForecastWeatherModel/hourly_forecast_weather_model.dart';
import 'package:weatherapp/product/Models/WeatherModel/weather_model.dart';
import 'package:weatherapp/product/Models/Week_weather_forecast.dart/week_weather_forecast.dart';
import 'package:weatherapp/product/Service/weather_service.dart';

import 'package:mobx/mobx.dart';

part 'current_city_screen_view_model.g.dart';

class CurrentCityViewModel = _CurrentCityViewModelBase with _$CurrentCityViewModel;

abstract class _CurrentCityViewModelBase with Store {
  @observable
  IWeatherService weatherService;

  @observable
  bool isLoading = true;

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @observable
  String? lat;

  @observable
  String? lot;

  _CurrentCityViewModelBase({required this.weatherService, required this.lat, required this.lot}) {
    fetchHourlyForeCastWeather();
  }

  @observable
  WeatherModel? weatherModel;

  @observable
  HourlyForeCastWeather? hourlyForeCastWeatherMidnight;

  @observable
  HourlyForeCastWeather? hourlyForeCastWeatherAM;

  @observable
  HourlyForeCastWeather? hourlyForeCastWeatherPM;

  @observable
  WeekWeatherForecast? weekWeatherForecast;

  @action
  fetchHourlyForeCastWeather() {
    fetchWeather(
      lat!,
      lot!,
    );
    fetchHourlyForeCastWeatherMidnight();
    fetchHourlyForeCastWeatherAM();
    fetchHourlyForeCastWeatherPM();
    fetchWeek();
    changeLoading();
  }

  @action
  Future<void> fetchHourlyForeCastWeatherMidnight() async {
    hourlyForeCastWeatherMidnight = await weatherService.fetchHourlyForeCastWeather(lat!, lot!, '00');
  }

  @action
  Future<void> fetchHourlyForeCastWeatherAM() async {
    hourlyForeCastWeatherAM = await weatherService.fetchHourlyForeCastWeather(lat!, lot!, '9');
  }

  @action
  Future<void> fetchHourlyForeCastWeatherPM() async {
    hourlyForeCastWeatherPM = await weatherService.fetchHourlyForeCastWeather(lat!, lot!, '15');
  }

  @action
  Future<void> fetchWeather(String lat, String lot) async {
    weatherModel = await weatherService.fetchWeather(
      lat,
      lot,
    );
  }

  @action
  Future<void> fetchWeek() async {
    weekWeatherForecast = await weatherService.fetchWeek(
      lat!,
      lot!,
    );
  }
}
