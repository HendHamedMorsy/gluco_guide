import 'package:freezed_annotation/freezed_annotation.dart';

part 'sensor_model.freezed.dart';
part 'sensor_model.g.dart';

@freezed
class SensorModel with _$SensorModel{

  const factory SensorModel({
    @JsonKey(name: "oxygen_saturation")
    String? oxygenSaturation,
    @JsonKey(name: "heart_rate")
    String? heartRate,
    String? temperature,
  }) = _SensorModel;

  factory SensorModel.fromJson(Map<String, Object?> json) =>
      _$SensorModelFromJson(json);
}
