import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel with EquatableMixin {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'region')
  String? region;
  @JsonKey(name: 'country')
  String? country;
  @JsonKey(name: 'lat')
  double? lat;
  @JsonKey(name: 'lon')
  double? lon;
  @JsonKey(name: 'tz_id')
  String? tzId;
  @JsonKey(name: 'localtime_epoch')
  double? localtimeEpoch;
  @JsonKey(name: 'localtime')
  String? localtime;

  LocationModel({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) => _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);

  @override
  List<Object?> get props => [name, region, country, lat, lon, tzId, localtimeEpoch, localtime];

  LocationModel copyWith({
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    String? tzId,
    double? localtimeEpoch,
    String? localtime,
  }) {
    return LocationModel(
      name: name ?? this.name,
      region: region ?? this.region,
      country: country ?? this.country,
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
      tzId: tzId ?? this.tzId,
      localtimeEpoch: localtimeEpoch ?? this.localtimeEpoch,
      localtime: localtime ?? this.localtime,
    );
  }
}
