import 'package:weatherapp/feature/CurrentCityScreen/current_city_screen.dart';
import 'package:weatherapp/feature/SettingsScreen/settings_screen.dart';
import 'package:weatherapp/product/enums/air_conditions_details.dart';

import '../constants/string_constants.dart';

extension AirConditionsDetailExtension on AirConditionsDetails {
  String? get airConditions {
    switch (this) {
      case AirConditionsDetails.uvindex:
        return '${currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.uv.toString()}';
      case AirConditionsDetails.wind:
        return settingScreenViewModel.isKmh
            ? ' ${currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.maxwindKph.toString()}km/h'
            : '${currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.maxwindMph.toString()}mph';

      case AirConditionsDetails.humidity:
        return '${currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.avghumidity.toString()}%';
      case AirConditionsDetails.visibility:
        return '${currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.avgvisKm.toString()}km';
      case AirConditionsDetails.feelslike:
        return '${currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.hour?.first.feelslikeC.toString()}°';
      case AirConditionsDetails.changeofrain:
        currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.dailyWillItRain.toString() ==
                1.0.toString()
            ? 'Change Of Rain ${StringConstants.changeOfRain} ${currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.dailyChanceOfRain.toString()}%'
            : ' 0%';

      case AirConditionsDetails.pressure:
        return settingScreenViewModel.precipitation
            ? ' ${currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.totalprecipIn.toString()} in'
            : ' ${currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.day?.totalprecipMm.toString()} mm';

      case AirConditionsDetails.sunset:
        return '${currentCityViewModel.hourlyForeCastWeatherAM?.forecast?.forecastday!.first.astro?.sunset.toString()}';

      default:
        return null;
    }
    return null;
  }
}
