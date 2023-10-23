// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_cities_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyCitiesViewModel on _MyCitiesViewModelBase, Store {
  late final _$myCitiesListAtom =
      Atom(name: '_MyCitiesViewModelBase.myCitiesList', context: context);

  @override
  ObservableList<WeekWeatherForecast> get myCitiesList {
    _$myCitiesListAtom.reportRead();
    return super.myCitiesList;
  }

  @override
  set myCitiesList(ObservableList<WeekWeatherForecast> value) {
    _$myCitiesListAtom.reportWrite(value, super.myCitiesList, () {
      super.myCitiesList = value;
    });
  }

  late final _$isCardOpenAtom =
      Atom(name: '_MyCitiesViewModelBase.isCardOpen', context: context);

  @override
  bool get isCardOpen {
    _$isCardOpenAtom.reportRead();
    return super.isCardOpen;
  }

  @override
  set isCardOpen(bool value) {
    _$isCardOpenAtom.reportWrite(value, super.isCardOpen, () {
      super.isCardOpen = value;
    });
  }

  late final _$addCityAsyncAction =
      AsyncAction('_MyCitiesViewModelBase.addCity', context: context);

  @override
  Future<void> addCity(WeekWeatherForecast city) {
    return _$addCityAsyncAction.run(() => super.addCity(city));
  }

  late final _$deleteCityAsyncAction =
      AsyncAction('_MyCitiesViewModelBase.deleteCity', context: context);

  @override
  Future<void> deleteCity(WeekWeatherForecast city) {
    return _$deleteCityAsyncAction.run(() => super.deleteCity(city));
  }

  late final _$getAllCachedModelsAsyncAction = AsyncAction(
      '_MyCitiesViewModelBase.getAllCachedModels',
      context: context);

  @override
  Future<void> getAllCachedModels() {
    return _$getAllCachedModelsAsyncAction
        .run(() => super.getAllCachedModels());
  }

  late final _$changeIsCardOpenAsyncAction =
      AsyncAction('_MyCitiesViewModelBase.changeIsCardOpen', context: context);

  @override
  Future<void> changeIsCardOpen() {
    return _$changeIsCardOpenAsyncAction.run(() => super.changeIsCardOpen());
  }

  @override
  String toString() {
    return '''
myCitiesList: ${myCitiesList},
isCardOpen: ${isCardOpen}
    ''';
  }
}
