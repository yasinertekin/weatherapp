import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:weatherapp/product/Models/ConditionModel/condition_model.dart';
import 'package:weatherapp/product/Models/CurrentModel/current_model.dart';
import 'package:weatherapp/product/Models/LocationModel/location_model.dart';

part 'hourly_forecast_weather_model.g.dart';

@JsonSerializable()
class HourlyForeCastWeather with EquatableMixin {
  @JsonKey(name: 'location')
  LocationModel? location;
  @JsonKey(name: 'current')
  CurrentModel? current;
  @JsonKey(name: 'forecast')
  Forecast? forecast;

  HourlyForeCastWeather({
    this.location,
    this.current,
    this.forecast,
  });

  factory HourlyForeCastWeather.fromJson(Map<String, dynamic> json) => _$HourlyForeCastWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyForeCastWeatherToJson(this);

  @override
  List<Object?> get props => [location, current, forecast];

  HourlyForeCastWeather copyWith({
    LocationModel? location,
    CurrentModel? current,
    Forecast? forecast,
  }) {
    return HourlyForeCastWeather(
      location: location ?? this.location,
      current: current ?? this.current,
      forecast: forecast ?? this.forecast,
    );
  }
}

@JsonSerializable()
class Forecast with EquatableMixin {
  @JsonKey(name: 'forecastday')
  List<Forecastday>? forecastday;

  Forecast({
    this.forecastday,
  });

  factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastToJson(this);

  @override
  List<Object?> get props => [forecastday];

  Forecast copyWith({
    List<Forecastday>? forecastday,
  }) {
    return Forecast(
      forecastday: forecastday ?? this.forecastday,
    );
  }
}

@JsonSerializable()
class Forecastday with EquatableMixin {
  @JsonKey(name: 'date')
  String? date;
  @JsonKey(name: 'date_epoch')
  double? dateEpoch;
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
    double? dateEpoch,
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

@JsonSerializable()
class Day with EquatableMixin {
  @JsonKey(name: 'maxtemp_c')
  double? maxtempC;
  @JsonKey(name: 'maxtemp_f')
  double? maxtempF;
  @JsonKey(name: 'mintemp_c')
  double? mintempC;
  @JsonKey(name: 'mintemp_f')
  double? mintempF;
  @JsonKey(name: 'avgtemp_c')
  double? avgtempC;
  @JsonKey(name: 'avgtemp_f')
  double? avgtempF;
  @JsonKey(name: 'maxwind_mph')
  double? maxwindMph;
  @JsonKey(name: 'maxwind_kph')
  double? maxwindKph;
  @JsonKey(name: 'totalprecip_mm')
  double? totalprecipMm;
  @JsonKey(name: 'totalprecip_in')
  double? totalprecipIn;
  @JsonKey(name: 'totalsnow_cm')
  double? totalsnowCm;
  @JsonKey(name: 'avgvis_km')
  double? avgvisKm;
  @JsonKey(name: 'avgvis_miles')
  double? avgvisMiles;
  @JsonKey(name: 'avghumidity')
  double? avghumidity;
  @JsonKey(name: 'daily_will_it_rain')
  double? dailyWillItRain;
  @JsonKey(name: 'daily_chance_of_rain')
  double? dailyChanceOfRain;
  @JsonKey(name: 'daily_will_it_snow')
  double? dailyWillItSnow;
  @JsonKey(name: 'daily_chance_of_snow')
  double? dailyChanceOfSnow;
  @JsonKey(name: 'condition')
  ConditionModel? condition;
  @JsonKey(name: 'uv')
  double? uv;

  Day({
    this.maxtempC,
    this.maxtempF,
    this.mintempC,
    this.mintempF,
    this.avgtempC,
    this.avgtempF,
    this.maxwindMph,
    this.maxwindKph,
    this.totalprecipMm,
    this.totalprecipIn,
    this.totalsnowCm,
    this.avgvisKm,
    this.avgvisMiles,
    this.avghumidity,
    this.dailyWillItRain,
    this.dailyChanceOfRain,
    this.dailyWillItSnow,
    this.dailyChanceOfSnow,
    this.condition,
    this.uv,
  });

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);

  Map<String, dynamic> toJson() => _$DayToJson(this);

  @override
  List<Object?> get props => [
        maxtempC,
        maxtempF,
        mintempC,
        mintempF,
        avgtempC,
        avgtempF,
        maxwindMph,
        maxwindKph,
        totalprecipMm,
        totalprecipIn,
        totalsnowCm,
        avgvisKm,
        avgvisMiles,
        avghumidity,
        dailyWillItRain,
        dailyChanceOfRain,
        dailyWillItSnow,
        dailyChanceOfSnow,
        condition,
        uv
      ];

  Day copyWith({
    double? maxtempC,
    double? maxtempF,
    double? mintempC,
    double? mintempF,
    double? avgtempC,
    double? avgtempF,
    double? maxwindMph,
    double? maxwindKph,
    double? totalprecipMm,
    double? totalprecipIn,
    double? totalsnowCm,
    double? avgvisKm,
    double? avgvisMiles,
    double? avghumidity,
    double? dailyWillItRain,
    double? dailyChanceOfRain,
    double? dailyWillItSnow,
    double? dailyChanceOfSnow,
    ConditionModel? condition,
    double? uv,
  }) {
    return Day(
      maxtempC: maxtempC ?? this.maxtempC,
      maxtempF: maxtempF ?? this.maxtempF,
      mintempC: mintempC ?? this.mintempC,
      mintempF: mintempF ?? this.mintempF,
      avgtempC: avgtempC ?? this.avgtempC,
      avgtempF: avgtempF ?? this.avgtempF,
      maxwindMph: maxwindMph ?? this.maxwindMph,
      maxwindKph: maxwindKph ?? this.maxwindKph,
      totalprecipMm: totalprecipMm ?? this.totalprecipMm,
      totalprecipIn: totalprecipIn ?? this.totalprecipIn,
      totalsnowCm: totalsnowCm ?? this.totalsnowCm,
      avgvisKm: avgvisKm ?? this.avgvisKm,
      avgvisMiles: avgvisMiles ?? this.avgvisMiles,
      avghumidity: avghumidity ?? this.avghumidity,
      dailyWillItRain: dailyWillItRain ?? this.dailyWillItRain,
      dailyChanceOfRain: dailyChanceOfRain ?? this.dailyChanceOfRain,
      dailyWillItSnow: dailyWillItSnow ?? this.dailyWillItSnow,
      dailyChanceOfSnow: dailyChanceOfSnow ?? this.dailyChanceOfSnow,
      condition: condition ?? this.condition,
      uv: uv ?? this.uv,
    );
  }
}

@JsonSerializable()
class Hour with EquatableMixin {
  @JsonKey(name: 'time_epoch')
  double? timeEpoch;
  @JsonKey(name: 'time')
  String? time;
  @JsonKey(name: 'temp_c')
  double? tempC;
  @JsonKey(name: 'temp_f')
  double? tempF;
  @JsonKey(name: 'is_day')
  double? isDay;
  @JsonKey(name: 'condition')
  ConditionModel? condition;
  @JsonKey(name: 'wind_mph')
  double? windMph;
  @JsonKey(name: 'wind_kph')
  double? windKph;
  @JsonKey(name: 'wind_degree')
  double? windDegree;
  @JsonKey(name: 'wind_dir')
  String? windDir;
  @JsonKey(name: 'pressure_mb')
  double? pressureMb;
  @JsonKey(name: 'pressure_in')
  double? pressureIn;
  @JsonKey(name: 'precip_mm')
  double? precipMm;
  @JsonKey(name: 'precip_in')
  double? precipIn;
  @JsonKey(name: 'humidity')
  double? humidity;
  @JsonKey(name: 'cloud')
  double? cloud;
  @JsonKey(name: 'feelslike_c')
  double? feelslikeC;
  @JsonKey(name: 'feelslike_f')
  double? feelslikeF;
  @JsonKey(name: 'windchill_c')
  double? windchillC;
  @JsonKey(name: 'windchill_f')
  double? windchillF;
  @JsonKey(name: 'heatindex_c')
  double? heatindexC;
  @JsonKey(name: 'heatindex_f')
  double? heatindexF;
  @JsonKey(name: 'dewpoint_c')
  double? dewpointC;
  @JsonKey(name: 'dewpoint_f')
  double? dewpointF;
  @JsonKey(name: 'will_it_rain')
  double? willItRain;
  @JsonKey(name: 'chance_of_rain')
  double? chanceOfRain;
  @JsonKey(name: 'will_it_snow')
  double? willItSnow;
  @JsonKey(name: 'chance_of_snow')
  double? chanceOfSnow;
  @JsonKey(name: 'vis_km')
  double? visKm;
  @JsonKey(name: 'vis_miles')
  double? visMiles;
  @JsonKey(name: 'gust_mph')
  double? gustMph;
  @JsonKey(name: 'gust_kph')
  double? gustKph;
  @JsonKey(name: 'uv')
  double? uv;

  Hour({
    this.timeEpoch,
    this.time,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.willItRain,
    this.chanceOfRain,
    this.willItSnow,
    this.chanceOfSnow,
    this.visKm,
    this.visMiles,
    this.gustMph,
    this.gustKph,
    this.uv,
  });

  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);

  Map<String, dynamic> toJson() => _$HourToJson(this);

  @override
  List<Object?> get props => [
        timeEpoch,
        time,
        tempC,
        tempF,
        isDay,
        condition,
        windMph,
        windKph,
        windDegree,
        windDir,
        pressureMb,
        pressureIn,
        precipMm,
        precipIn,
        humidity,
        cloud,
        feelslikeC,
        feelslikeF,
        windchillC,
        windchillF,
        heatindexC,
        heatindexF,
        dewpointC,
        dewpointF,
        willItRain,
        chanceOfRain,
        willItSnow,
        chanceOfSnow,
        visKm,
        visMiles,
        gustMph,
        gustKph,
        uv
      ];

  Hour copyWith({
    double? timeEpoch,
    String? time,
    double? tempC,
    double? tempF,
    double? isDay,
    ConditionModel? condition,
    double? windMph,
    double? windKph,
    double? windDegree,
    String? windDir,
    double? pressureMb,
    double? pressureIn,
    double? precipMm,
    double? precipIn,
    double? humidity,
    double? cloud,
    double? feelslikeC,
    double? feelslikeF,
    double? windchillC,
    double? windchillF,
    double? heatindexC,
    double? heatindexF,
    double? dewpointC,
    double? dewpointF,
    double? willItRain,
    double? chanceOfRain,
    double? willItSnow,
    double? chanceOfSnow,
    double? visKm,
    double? visMiles,
    double? gustMph,
    double? gustKph,
    double? uv,
  }) {
    return Hour(
      timeEpoch: timeEpoch ?? this.timeEpoch,
      time: time ?? this.time,
      tempC: tempC ?? this.tempC,
      tempF: tempF ?? this.tempF,
      isDay: isDay ?? this.isDay,
      condition: condition ?? this.condition,
      windMph: windMph ?? this.windMph,
      windKph: windKph ?? this.windKph,
      windDegree: windDegree ?? this.windDegree,
      windDir: windDir ?? this.windDir,
      pressureMb: pressureMb ?? this.pressureMb,
      pressureIn: pressureIn ?? this.pressureIn,
      precipMm: precipMm ?? this.precipMm,
      precipIn: precipIn ?? this.precipIn,
      humidity: humidity ?? this.humidity,
      cloud: cloud ?? this.cloud,
      feelslikeC: feelslikeC ?? this.feelslikeC,
      feelslikeF: feelslikeF ?? this.feelslikeF,
      windchillC: windchillC ?? this.windchillC,
      windchillF: windchillF ?? this.windchillF,
      heatindexC: heatindexC ?? this.heatindexC,
      heatindexF: heatindexF ?? this.heatindexF,
      dewpointC: dewpointC ?? this.dewpointC,
      dewpointF: dewpointF ?? this.dewpointF,
      willItRain: willItRain ?? this.willItRain,
      chanceOfRain: chanceOfRain ?? this.chanceOfRain,
      willItSnow: willItSnow ?? this.willItSnow,
      chanceOfSnow: chanceOfSnow ?? this.chanceOfSnow,
      visKm: visKm ?? this.visKm,
      visMiles: visMiles ?? this.visMiles,
      gustMph: gustMph ?? this.gustMph,
      gustKph: gustKph ?? this.gustKph,
      uv: uv ?? this.uv,
    );
  }
}

@JsonSerializable()
class Astro with EquatableMixin {
  @JsonKey(name: 'sunrise')
  String? sunrise;
  @JsonKey(name: 'sunset')
  String? sunset;
  @JsonKey(name: 'moonrise')
  String? moonrise;
  @JsonKey(name: 'moonset')
  String? moonset;
  @JsonKey(name: 'moon_phase')
  String? moonPhase;
  @JsonKey(name: 'moon_illumination')
  String? moonIllumination;
  @JsonKey(name: 'is_moon_up')
  double? isMoonUp;
  @JsonKey(name: 'is_sun_up')
  double? isSunUp;

  Astro({
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.moonPhase,
    this.moonIllumination,
    this.isMoonUp,
    this.isSunUp,
  });

  factory Astro.fromJson(Map<String, dynamic> json) => _$AstroFromJson(json);

  Map<String, dynamic> toJson() => _$AstroToJson(this);

  @override
  List<Object?> get props => [sunrise, sunset, moonrise, moonset, moonPhase, moonIllumination, isMoonUp, isSunUp];

  Astro copyWith({
    String? sunrise,
    String? sunset,
    String? moonrise,
    String? moonset,
    String? moonPhase,
    String? moonIllumination,
    double? isMoonUp,
    double? isSunUp,
  }) {
    return Astro(
      sunrise: sunrise ?? this.sunrise,
      sunset: sunset ?? this.sunset,
      moonrise: moonrise ?? this.moonrise,
      moonset: moonset ?? this.moonset,
      moonPhase: moonPhase ?? this.moonPhase,
      moonIllumination: moonIllumination ?? this.moonIllumination,
      isMoonUp: isMoonUp ?? this.isMoonUp,
      isSunUp: isSunUp ?? this.isSunUp,
    );
  }
}
