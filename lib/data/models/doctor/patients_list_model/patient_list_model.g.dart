// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientListModelImpl _$$PatientListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientListModelImpl(
      patientsList: (json['data'] as List<dynamic>?)
          ?.map((e) => Patient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientListModelImplToJson(
        _$PatientListModelImpl instance) =>
    <String, dynamic>{
      'data': instance.patientsList,
    };
