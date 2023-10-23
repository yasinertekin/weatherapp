// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_screen_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SettingsScreenViewModel on _SettingsScreenViewModelBase, Store {
  late final _$isCelsiusAtom =
      Atom(name: '_SettingsScreenViewModelBase.isCelsius', context: context);

  @override
  bool get isCelsius {
    _$isCelsiusAtom.reportRead();
    return super.isCelsius;
  }

  @override
  set isCelsius(bool value) {
    _$isCelsiusAtom.reportWrite(value, super.isCelsius, () {
      super.isCelsius = value;
    });
  }

  late final _$isKmhAtom =
      Atom(name: '_SettingsScreenViewModelBase.isKmh', context: context);

  @override
  bool get isKmh {
    _$isKmhAtom.reportRead();
    return super.isKmh;
  }

  @override
  set isKmh(bool value) {
    _$isKmhAtom.reportWrite(value, super.isKmh, () {
      super.isKmh = value;
    });
  }

  late final _$precipitationAtom = Atom(
      name: '_SettingsScreenViewModelBase.precipitation', context: context);

  @override
  bool get precipitation {
    _$precipitationAtom.reportRead();
    return super.precipitation;
  }

  @override
  set precipitation(bool value) {
    _$precipitationAtom.reportWrite(value, super.precipitation, () {
      super.precipitation = value;
    });
  }

  late final _$_SettingsScreenViewModelBaseActionController =
      ActionController(name: '_SettingsScreenViewModelBase', context: context);

  @override
  void changeTempatureUnit() {
    final _$actionInfo = _$_SettingsScreenViewModelBaseActionController
        .startAction(name: '_SettingsScreenViewModelBase.changeTempatureUnit');
    try {
      return super.changeTempatureUnit();
    } finally {
      _$_SettingsScreenViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeWindSpeedUnit() {
    final _$actionInfo = _$_SettingsScreenViewModelBaseActionController
        .startAction(name: '_SettingsScreenViewModelBase.changeWindSpeedUnit');
    try {
      return super.changeWindSpeedUnit();
    } finally {
      _$_SettingsScreenViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePrecipitationUnit() {
    final _$actionInfo =
        _$_SettingsScreenViewModelBaseActionController.startAction(
            name: '_SettingsScreenViewModelBase.changePrecipitationUnit');
    try {
      return super.changePrecipitationUnit();
    } finally {
      _$_SettingsScreenViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isCelsius: ${isCelsius},
isKmh: ${isKmh},
precipitation: ${precipitation}
    ''';
  }
}
