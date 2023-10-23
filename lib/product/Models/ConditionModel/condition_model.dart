import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'condition_model.g.dart';

@JsonSerializable()
class ConditionModel with EquatableMixin {
  @JsonKey(name: 'text')
  String? text;
  @JsonKey(name: 'icon')
  String? icon;
  @JsonKey(name: 'code')
  double? code;

  ConditionModel({
    this.text,
    this.icon,
    this.code,
  });

  factory ConditionModel.fromJson(Map<String, dynamic> json) => _$ConditionModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionModelToJson(this);

  @override
  List<Object?> get props => [text, icon, code];

  ConditionModel copyWith({
    String? text,
    String? icon,
    double? code,
  }) {
    return ConditionModel(
      text: text ?? this.text,
      icon: icon ?? this.icon,
      code: code ?? this.code,
    );
  }
}
