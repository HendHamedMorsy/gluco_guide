// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SensorModelImpl _$$SensorModelImplFromJson(Map<String, dynamic> json) =>
    _$SensorModelImpl(
      oxygenSaturation: json['oxygen_saturation'] as String?,
      heartRate: json['heart_rate'] as String?,
      temperature: json['temperature'] as String?,
    );

Map<String, dynamic> _$$SensorModelImplToJson(_$SensorModelImpl instance) =>
    <String, dynamic>{
      'oxygen_saturation': instance.oxygenSaturation,
      'heart_rate': instance.heartRate,
      'temperature': instance.temperature,
    };
