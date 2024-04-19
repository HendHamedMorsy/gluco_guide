import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctor_model.freezed.dart';
part 'doctor_model.g.dart';


@freezed
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
class DoctorToken with _$DoctorToken{

  const factory DoctorToken({
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
class Doctor with _$Doctor{

  const factory Doctor({
    int? id,
    String? name,
    String? email,
    String? mobile,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
  @JsonKey(name: "updated_at")
    DateTime? updatedAt,
  }) =_Doctor;

  factory Doctor.fromJson(Map<String, Object?> json) =>
      _$DoctorFromJson(json);

}
