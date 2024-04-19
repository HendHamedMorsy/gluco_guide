// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorModelImpl _$$DoctorModelImplFromJson(Map<String, dynamic> json) =>
    _$DoctorModelImpl(
      doctorData: json['data'] == null
          ? null
          : DoctorData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'],
    );

Map<String, dynamic> _$$DoctorModelImplToJson(_$DoctorModelImpl instance) =>
    <String, dynamic>{
      'data': instance.doctorData,
      'message': instance.message,
    };

_$DoctorDataImpl _$$DoctorDataImplFromJson(Map<String, dynamic> json) =>
    _$DoctorDataImpl(
      doctorToken: json['token'] == null
          ? null
          : DoctorToken.fromJson(json['token'] as Map<String, dynamic>),
      doctorData: json['user'] == null
          ? null
          : DoctorData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DoctorDataImplToJson(_$DoctorDataImpl instance) =>
    <String, dynamic>{
      'token': instance.doctorToken,
      'user': instance.doctorData,
    };

_$DoctorTokenImpl _$$DoctorTokenImplFromJson(Map<String, dynamic> json) =>
    _$DoctorTokenImpl(
      accessToken: json['access_token'] as String?,
      expiredAt: json['expired_at'],
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$DoctorTokenImplToJson(_$DoctorTokenImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expired_at': instance.expiredAt,
      'type': instance.type,
    };

_$DoctorImpl _$$DoctorImplFromJson(Map<String, dynamic> json) => _$DoctorImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      mobile: json['mobile'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$DoctorImplToJson(_$DoctorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
