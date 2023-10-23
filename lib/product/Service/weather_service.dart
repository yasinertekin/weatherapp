import 'dart:io';

import 'package:dio/dio.dart';
import 'package:weatherapp/feature/WelcomeScreen/welcome_screen.dart';
import 'package:weatherapp/product/Models/HourlyForecastWeatherModel/hourly_forecast_weather_model.dart';
import 'package:weatherapp/product/Models/WeatherModel/weather_model.dart';
import 'package:weatherapp/product/Models/Week_weather_forecast.dart/week_weather_forecast.dart';

const String _apiKey = 'YOUR_API_KEY';

abstract class IWeatherService {
  IWeatherService(this.service);
  Future<WeatherModel?> fetchWeather(String lat, String lot);
  Future<HourlyForeCastWeather?> fetchHourlyForeCastWeather(String lat, String lot, String hour);
  Future<WeekWeatherForecast?> fetchWeek(String lat, String lot);
  Future<WeekWeatherForecast?> fetchCity(String city);

  final Dio service;
}

class WeatherService extends IWeatherService with Fetcher {
  WeatherService(Dio service) : super(service);
  @override
  Future<WeatherModel?> fetchWeather(String lat, String lot) async {
    return fetch(
      lat,
      lot,
    );
  }

  @override
  Future<HourlyForeCastWeather?> fetchHourlyForeCastWeather(String lat, String lot, String hour) async {
    final response = await service.get('forecast.json?key=_apiKey&q=$lat,$lot&days=1&hour=$hour');

    if (response.statusCode == HttpStatus.ok) {
      final Map<String, dynamic> jsonData = response.data;
      return HourlyForeCastWeather.fromJson(jsonData);
    }
    return null;
  }

  @override
  Future<WeekWeatherForecast?> fetchWeek(String lat, String lot) async {
    final response = await service.get('forecast.json?key=$_apiKey&q=$lat,$lot&days=7');

    if (response.statusCode == HttpStatus.ok) {
      final Map<String, dynamic> jsonData = response.data;
      return WeekWeatherForecast.fromJson(jsonData);
    }
    return null;
  }

  @override
  Future<WeekWeatherForecast?> fetchCity(String city) async {
    final response =
        await service.get('https://api.weatherapi.com/v1/forecast.json?key=$_apiKey&q=$city&days=1&aqi=no&alerts=no');

    if (response.statusCode == HttpStatus.ok) {
      final Map<String, dynamic> jsonData = response.data;
      return WeekWeatherForecast.fromJson(jsonData);
    }
    return null;
  }
}

mixin Fetcher on IWeatherService {
  Future<WeatherModel?> fetch(String lat, String lot) async {
    final response = await service.get('current.json?key=$_apiKey&q=$lat,$lot&aqi=no');

    if (response.statusCode == HttpStatus.ok) {
      final Map<String, dynamic> jsonData = response.data;
      return WeatherModel.fromJson(jsonData);
    }
    return null;
  }
}

enum ServicePath {
  BASEURL,
  CURRENTCITY,
}

extension ServicePathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.BASEURL:
        return 'http://api.weatherapi.com/v1/';
      case ServicePath.CURRENTCITY:
        return 'current.json?key=$_apiKey&q=${welcomeScreenViewModel.locationData},${welcomeScreenViewModel.locationData}&aqi=no';

      default:
        throw Exception('Not Found Service Path');
    }
  }
}
