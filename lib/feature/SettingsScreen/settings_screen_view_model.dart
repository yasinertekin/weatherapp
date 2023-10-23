import 'package:mobx/mobx.dart';
part 'settings_screen_view_model.g.dart';

class SettingsScreenViewModel = _SettingsScreenViewModelBase with _$SettingsScreenViewModel;

abstract class _SettingsScreenViewModelBase with Store {
  @observable
  bool isCelsius = true;

  @action
  void changeTempatureUnit() {
    isCelsius = !isCelsius;
  }

  @observable
  bool isKmh = true;

  @action
  void changeWindSpeedUnit() {
    isKmh = !isKmh;
  }

  @observable
  bool precipitation = true;

  @action
  void changePrecipitationUnit() {
    precipitation = !precipitation;
  }
}
