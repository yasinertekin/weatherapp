import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:weatherapp/product/Models/CurrentModel/current_model.dart';
import 'package:weatherapp/product/Models/LocationModel/location_model.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel with EquatableMixin {
  @JsonKey(name: 'location')
  LocationModel? location;
  @JsonKey(name: 'current')
  CurrentModel? current;

  WeatherModel({
    this.location,
    this.current,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);

  @override
  List<Object?> get props => [location, current];

  WeatherModel copyWith({
    LocationModel? location,
    CurrentModel? current,
  }) {
    return WeatherModel(
      location: location ?? this.location,
      current: current ?? this.current,
    );
  }
}
