// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_screen_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchScreenViewModel on _SearchScreenViewModelBase, Store {
  late final _$weekWeatherForecastListAtom = Atom(
      name: '_SearchScreenViewModelBase.weekWeatherForecastList',
      context: context);

  @override
  List<WeekWeatherForecast>? get weekWeatherForecastList {
    _$weekWeatherForecastListAtom.reportRead();
    return super.weekWeatherForecastList;
  }

  @override
  set weekWeatherForecastList(List<WeekWeatherForecast>? value) {
    _$weekWeatherForecastListAtom
        .reportWrite(value, super.weekWeatherForecastList, () {
      super.weekWeatherForecastList = value;
    });
  }

  late final _$weatherServiceAtom =
      Atom(name: '_SearchScreenViewModelBase.weatherService', context: context);

  @override
  IWeatherService? get weatherService {
    _$weatherServiceAtom.reportRead();
    return super.weatherService;
  }

  @override
  set weatherService(IWeatherService? value) {
    _$weatherServiceAtom.reportWrite(value, super.weatherService, () {
      super.weatherService = value;
    });
  }

  late final _$weekWeatherForecastAtom = Atom(
      name: '_SearchScreenViewModelBase.weekWeatherForecast', context: context);

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

  late final _$fetchCityAsyncAction =
      AsyncAction('_SearchScreenViewModelBase.fetchCity', context: context);

  @override
  Future<void> fetchCity(String city) {
    return _$fetchCityAsyncAction.run(() => super.fetchCity(city));
  }

  @override
  String toString() {
    return '''
weekWeatherForecastList: ${weekWeatherForecastList},
weatherService: ${weatherService},
weekWeatherForecast: ${weekWeatherForecast}
    ''';
  }
}
