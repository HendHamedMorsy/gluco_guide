// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DoctorModelAdapter extends TypeAdapter<DoctorModel> {
  @override
  final int typeId = 0;

  @override
  DoctorModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DoctorModel();
  }

  @override
  void write(BinaryWriter writer, DoctorModel obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DoctorModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DoctorDataAdapter extends TypeAdapter<DoctorData> {
  @override
  final int typeId = 1;

  @override
  DoctorData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DoctorData();
  }

  @override
  void write(BinaryWriter writer, DoctorData obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DoctorDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DoctorTokenAdapter extends TypeAdapter<DoctorToken> {
  @override
  final int typeId = 2;

  @override
  DoctorToken read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DoctorToken(
      accessToken: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DoctorToken obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.accessToken);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DoctorTokenAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DoctorAdapter extends TypeAdapter<Doctor> {
  @override
  final int typeId = 3;

  @override
  Doctor read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Doctor(
      id: fields[1] as int?,
      name: fields[2] as String?,
      email: fields[3] as String?,
      mobile: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Doctor obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.mobile);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DoctorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
