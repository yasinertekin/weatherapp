import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:weatherapp/product/Models/CurrentModel/current_model.dart';
import 'package:weatherapp/product/Models/HourlyForecastWeatherModel/hourly_forecast_weather_model.dart';
import 'package:weatherapp/product/Models/LocationModel/location_model.dart';

part 'week_weather_forecast.g.dart';

@JsonSerializable()
class WeekWeatherForecast with EquatableMixin {
  @JsonKey(name: 'location')
  LocationModel? location;
  @JsonKey(name: 'current')
  CurrentModel? current;
  @JsonKey(name: 'forecast')
  ForeCastWeek? forecast;

  WeekWeatherForecast({
    this.location,
    this.current,
    this.forecast,
  });

  factory WeekWeatherForecast.fromJson(Map<String, dynamic> json) => _$WeekWeatherForecastFromJson(json);

  Map<String, dynamic> toJson() => _$WeekWeatherForecastToJson(this);

  @override
  List<Object?> get props => [location, current, forecast];

  WeekWeatherForecast copyWith({
    LocationModel? location,
    CurrentModel? current,
    ForeCastWeek? forecast,
  }) {
    return WeekWeatherForecast(
      location: location ?? this.location,
      current: current ?? this.current,
      forecast: forecast ?? this.forecast,
    );
  }
}

@JsonSerializable()
class ForeCastWeek with EquatableMixin {
  @JsonKey(name: 'forecastday')
  List<Forecastday>? forecastday;

  ForeCastWeek({
    this.forecastday,
  });

  factory ForeCastWeek.fromJson(Map<String, dynamic> json) => _$ForeCastWeekFromJson(json);

  Map<String, dynamic> toJson() => _$ForeCastWeekToJson(this);

  @override
  List<Object?> get props => [forecastday];

  ForeCastWeek copyWith({
    List<Forecastday>? forecastday,
  }) {
    return ForeCastWeek(
      forecastday: forecastday ?? this.forecastday,
    );
  }
}

@JsonSerializable()
class Forecastday with EquatableMixin {
  @JsonKey(name: 'date')
  String? date;
  @JsonKey(name: 'date_epoch')
  int? dateEpoch;
  @JsonKey(name: 'day')
  Day? day;
  @JsonKey(name: 'astro')
  Astro? astro;
  @JsonKey(name: 'hour')
  List<Hour>? hour;

  Forecastday({
    this.date,
    this.dateEpoch,
    this.day,
    this.astro,
    this.hour,
  });

  factory Forecastday.fromJson(Map<String, dynamic> json) => _$ForecastdayFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastdayToJson(this);

  @override
  List<Object?> get props => [date, dateEpoch, day, astro, hour];

  Forecastday copyWith({
    String? date,
    int? dateEpoch,
    Day? day,
    Astro? astro,
    List<Hour>? hour,
  }) {
    return Forecastday(
      date: date ?? this.date,
      dateEpoch: dateEpoch ?? this.dateEpoch,
      day: day ?? this.day,
      astro: astro ?? this.astro,
      hour: hour ?? this.hour,
    );
  }
}
