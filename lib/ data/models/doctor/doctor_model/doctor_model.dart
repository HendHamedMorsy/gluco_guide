import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'doctor_model.freezed.dart';
part 'doctor_model.g.dart';


@freezed
@HiveType(typeId: 0)
class DoctorModel with _$DoctorModel{

  const factory DoctorModel({
    @JsonKey(name: "data")
    DoctorData? doctorData,
    dynamic message,
  }) = _DoctorModel;

  factory DoctorModel.fromJson(Map<String, Object?> json) =>
      _$DoctorModelFromJson(json);

}

@freezed
@HiveType(typeId: 1)
class DoctorData with _$DoctorData{

  const factory DoctorData({
    @JsonKey(name: "token")
    DoctorToken? doctorToken,
    @JsonKey(name: "user")
    DoctorData? doctorData,
  }) = _DoctorData;

  factory DoctorData.fromJson(Map<String, Object?> json) =>
      _$DoctorDataFromJson(json);

}

@freezed
@HiveType(typeId: 2)
class DoctorToken with _$DoctorToken{

  const factory DoctorToken({
    @HiveField(0)
    @JsonKey(name: "access_token")
    String? accessToken,
    @JsonKey(name: "expired_at")
    dynamic expiredAt,
    String? type,
  }) =_DoctorToken;

  factory DoctorToken.fromJson(Map<String, Object?> json) =>
      _$DoctorTokenFromJson(json);
}

@freezed
@HiveType(typeId: 3)
class Doctor with _$Doctor{

  const factory Doctor({
    @HiveField(1)
    int? id,
    @HiveField(2)
    String? name,
    @HiveField(3)
    String? email,
    @HiveField(4)
    String? mobile,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
  @JsonKey(name: "updated_at")
    DateTime? updatedAt,
  }) =_Doctor;

  factory Doctor.fromJson(Map<String, Object?> json) =>
      _$DoctorFromJson(json);

}
