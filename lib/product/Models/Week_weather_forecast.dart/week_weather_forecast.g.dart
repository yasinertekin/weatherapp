// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_weather_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeekWeatherForecast _$WeekWeatherForecastFromJson(Map<String, dynamic> json) =>
    WeekWeatherForecast(
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : CurrentModel.fromJson(json['current'] as Map<String, dynamic>),
      forecast: json['forecast'] == null
          ? null
          : ForeCastWeek.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeekWeatherForecastToJson(
        WeekWeatherForecast instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
      'forecast': instance.forecast,
    };

ForeCastWeek _$ForeCastWeekFromJson(Map<String, dynamic> json) => ForeCastWeek(
      forecastday: (json['forecastday'] as List<dynamic>?)
          ?.map((e) => Forecastday.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForeCastWeekToJson(ForeCastWeek instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastday,
    };

Forecastday _$ForecastdayFromJson(Map<String, dynamic> json) => Forecastday(
      date: json['date'] as String?,
      dateEpoch: json['date_epoch'] as int?,
      day: json['day'] == null
          ? null
          : Day.fromJson(json['day'] as Map<String, dynamic>),
      astro: json['astro'] == null
          ? null
          : Astro.fromJson(json['astro'] as Map<String, dynamic>),
      hour: (json['hour'] as List<dynamic>?)
          ?.map((e) => Hour.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastdayToJson(Forecastday instance) =>
    <String, dynamic>{
      'date': instance.date,
      'date_epoch': instance.dateEpoch,
      'day': instance.day,
      'astro': instance.astro,
      'hour': instance.hour,
    };
