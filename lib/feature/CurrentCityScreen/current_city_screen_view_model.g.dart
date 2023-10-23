// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_city_screen_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CurrentCityViewModel on _CurrentCityViewModelBase, Store {
  late final _$weatherServiceAtom =
      Atom(name: '_CurrentCityViewModelBase.weatherService', context: context);

  @override
  IWeatherService get weatherService {
    _$weatherServiceAtom.reportRead();
    return super.weatherService;
  }

  @override
  set weatherService(IWeatherService value) {
    _$weatherServiceAtom.reportWrite(value, super.weatherService, () {
      super.weatherService = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_CurrentCityViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$latAtom =
      Atom(name: '_CurrentCityViewModelBase.lat', context: context);

  @override
  String? get lat {
    _$latAtom.reportRead();
    return super.lat;
  }

  @override
  set lat(String? value) {
    _$latAtom.reportWrite(value, super.lat, () {
      super.lat = value;
    });
  }

  late final _$lotAtom =
      Atom(name: '_CurrentCityViewModelBase.lot', context: context);

  @override
  String? get lot {
    _$lotAtom.reportRead();
    return super.lot;
  }

  @override
  set lot(String? value) {
    _$lotAtom.reportWrite(value, super.lot, () {
      super.lot = value;
    });
  }

  late final _$weatherModelAtom =
      Atom(name: '_CurrentCityViewModelBase.weatherModel', context: context);

  @override
  WeatherModel? get weatherModel {
    _$weatherModelAtom.reportRead();
    return super.weatherModel;
  }

  @override
  set weatherModel(WeatherModel? value) {
    _$weatherModelAtom.reportWrite(value, super.weatherModel, () {
      super.weatherModel = value;
    });
  }

  late final _$hourlyForeCastWeatherMidnightAtom = Atom(
      name: '_CurrentCityViewModelBase.hourlyForeCastWeatherMidnight',
      context: context);

  @override
  HourlyForeCastWeather? get hourlyForeCastWeatherMidnight {
    _$hourlyForeCastWeatherMidnightAtom.reportRead();
    return super.hourlyForeCastWeatherMidnight;
  }

  @override
  set hourlyForeCastWeatherMidnight(HourlyForeCastWeather? value) {
    _$hourlyForeCastWeatherMidnightAtom
        .reportWrite(value, super.hourlyForeCastWeatherMidnight, () {
      super.hourlyForeCastWeatherMidnight = value;
    });
  }

  late final _$hourlyForeCastWeatherAMAtom = Atom(
      name: '_CurrentCityViewModelBase.hourlyForeCastWeatherAM',
      context: context);

  @override
  HourlyForeCastWeather? get hourlyForeCastWeatherAM {
    _$hourlyForeCastWeatherAMAtom.reportRead();
    return super.hourlyForeCastWeatherAM;
  }

  @override
  set hourlyForeCastWeatherAM(HourlyForeCastWeather? value) {
    _$hourlyForeCastWeatherAMAtom
        .reportWrite(value, super.hourlyForeCastWeatherAM, () {
      super.hourlyForeCastWeatherAM = value;
    });
  }

  late final _$hourlyForeCastWeatherPMAtom = Atom(
      name: '_CurrentCityViewModelBase.hourlyForeCastWeatherPM',
      context: context);

  @override
  HourlyForeCastWeather? get hourlyForeCastWeatherPM {
    _$hourlyForeCastWeatherPMAtom.reportRead();
    return super.hourlyForeCastWeatherPM;
  }

  @override
  set hourlyForeCastWeatherPM(HourlyForeCastWeather? value) {
    _$hourlyForeCastWeatherPMAtom
        .reportWrite(value, super.hourlyForeCastWeatherPM, () {
      super.hourlyForeCastWeatherPM = value;
    });
  }

  late final _$weekWeatherForecastAtom = Atom(
      name: '_CurrentCityViewModelBase.weekWeatherForecast', context: context);

  @override
  WeekWeatherForecast? get weekWeatherForecast {
    _$weekWeatherForecastAtom.reportRead();
    return super.weekWeatherForecast;
  }

  @override
  set weekWeatherForecast(WeekWeatherForecast? value) {
    _$weekWeatherForecastAtom.reportWrite(value, super.weekWeatherForecast, () {
      super.weekWeatherForecast = value;
    });
  }

  late final _$fetchHourlyForeCastWeatherMidnightAsyncAction = AsyncAction(
      '_CurrentCityViewModelBase.fetchHourlyForeCastWeatherMidnight',
      context: context);

  @override
  Future<void> fetchHourlyForeCastWeatherMidnight() {
    return _$fetchHourlyForeCastWeatherMidnightAsyncAction
        .run(() => super.fetchHourlyForeCastWeatherMidnight());
  }

  late final _$fetchHourlyForeCastWeatherAMAsyncAction = AsyncAction(
      '_CurrentCityViewModelBase.fetchHourlyForeCastWeatherAM',
      context: context);

  @override
  Future<void> fetchHourlyForeCastWeatherAM() {
    return _$fetchHourlyForeCastWeatherAMAsyncAction
        .run(() => super.fetchHourlyForeCastWeatherAM());
  }

  late final _$fetchHourlyForeCastWeatherPMAsyncAction = AsyncAction(
      '_CurrentCityViewModelBase.fetchHourlyForeCastWeatherPM',
      context: context);

  @override
  Future<void> fetchHourlyForeCastWeatherPM() {
    return _$fetchHourlyForeCastWeatherPMAsyncAction
        .run(() => super.fetchHourlyForeCastWeatherPM());
  }

  late final _$fetchWeatherAsyncAction =
      AsyncAction('_CurrentCityViewModelBase.fetchWeather', context: context);

  @override
  Future<void> fetchWeather(String lat, String lot) {
    return _$fetchWeatherAsyncAction.run(() => super.fetchWeather(lat, lot));
  }

  late final _$fetchWeekAsyncAction =
      AsyncAction('_CurrentCityViewModelBase.fetchWeek', context: context);

  @override
  Future<void> fetchWeek() {
    return _$fetchWeekAsyncAction.run(() => super.fetchWeek());
  }

  late final _$_CurrentCityViewModelBaseActionController =
      ActionController(name: '_CurrentCityViewModelBase', context: context);

  @override
  void changeLoading() {
    final _$actionInfo = _$_CurrentCityViewModelBaseActionController
        .startAction(name: '_CurrentCityViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_CurrentCityViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fetchHourlyForeCastWeather() {
    final _$actionInfo =
        _$_CurrentCityViewModelBaseActionController.startAction(
            name: '_CurrentCityViewModelBase.fetchHourlyForeCastWeather');
    try {
      return super.fetchHourlyForeCastWeather();
    } finally {
      _$_CurrentCityViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
weatherService: ${weatherService},
isLoading: ${isLoading},
lat: ${lat},
lot: ${lot},
weatherModel: ${weatherModel},
hourlyForeCastWeatherMidnight: ${hourlyForeCastWeatherMidnight},
hourlyForeCastWeatherAM: ${hourlyForeCastWeatherAM},
hourlyForeCastWeatherPM: ${hourlyForeCastWeatherPM},
weekWeatherForecast: ${weekWeatherForecast}
    ''';
  }
}
