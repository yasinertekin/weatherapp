import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'cache_location_model.g.dart';

@JsonSerializable()
class CacheLocationModel with EquatableMixin {
  @JsonKey(name: 'lat')
  String? lat;
  @JsonKey(name: 'lot')
  String? lot;

  CacheLocationModel({
    this.lat,
    this.lot,
  });

  factory CacheLocationModel.fromJson(Map<String, dynamic> json) => _$CacheLocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$CacheLocationModelToJson(this);

  @override
  List<Object?> get props => [lat, lot];

  CacheLocationModel copyWith({
    String? lat,
    String? lot,
  }) {
    return CacheLocationModel(
      lat: lat ?? this.lat,
      lot: lot ?? this.lot,
    );
  }
}
