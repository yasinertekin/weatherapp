// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_screen_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WelcomeScreenViewModel on _WelcomeScreenViewModelBase, Store {
  late final _$locationDataAtom =
      Atom(name: '_WelcomeScreenViewModelBase.locationData', context: context);

  @override
  LocationData? get locationData {
    _$locationDataAtom.reportRead();
    return super.locationData;
  }

  @override
  set locationData(LocationData? value) {
    _$locationDataAtom.reportWrite(value, super.locationData, () {
      super.locationData = value;
    });
  }

  late final _$hourAtom =
      Atom(name: '_WelcomeScreenViewModelBase.hour', context: context);

  @override
  String? get hour {
    _$hourAtom.reportRead();
    return super.hour;
  }

  @override
  set hour(String? value) {
    _$hourAtom.reportWrite(value, super.hour, () {
      super.hour = value;
    });
  }

  @override
  String toString() {
    return '''
locationData: ${locationData},
hour: ${hour}
    ''';
  }
}
