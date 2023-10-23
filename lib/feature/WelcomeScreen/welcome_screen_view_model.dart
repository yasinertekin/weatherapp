import 'package:location/location.dart';
import 'package:mobx/mobx.dart';
part 'welcome_screen_view_model.g.dart';

class WelcomeScreenViewModel = _WelcomeScreenViewModelBase with _$WelcomeScreenViewModel;

abstract class _WelcomeScreenViewModelBase with Store {
  @observable
  LocationData? locationData;

  @observable
  String? hour;
}
