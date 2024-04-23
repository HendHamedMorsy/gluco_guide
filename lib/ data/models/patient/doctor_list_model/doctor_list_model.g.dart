// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorListModelImpl _$$DoctorListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DoctorListModelImpl(
      doctorsList: (json['data'] as List<dynamic>?)
          ?.map((e) => DoctorListData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DoctorListModelImplToJson(
        _$DoctorListModelImpl instance) =>
    <String, dynamic>{
      'data': instance.doctorsList,
    };

_$DoctorListDataImpl _$$DoctorListDataImplFromJson(Map<String, dynamic> json) =>
    _$DoctorListDataImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      mobile: json['mobile'] as String?,
    );

Map<String, dynamic> _$$DoctorListDataImplToJson(
        _$DoctorListDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
    };
