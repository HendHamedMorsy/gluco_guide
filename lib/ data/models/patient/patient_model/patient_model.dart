import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gluco_guide/%20data/models/doctor/doctor_model/doctor_model.dart';
import 'package:hive/hive.dart';
part 'patient_model.freezed.dart';
part 'patient_model.g.dart';

@freezed
@HiveType(typeId: 4)
class PatientModel with _$PatientModel{

  const factory PatientModel({
    @JsonKey(name: "data")
    PatientData? patientData,
    dynamic message,
  })= _PatientModel;
  factory PatientModel.fromJson(Map<String, Object?> json) =>
      _$PatientModelFromJson(json);

}

@freezed
@HiveType(typeId: 5)
class PatientData with _$PatientData{

  const factory PatientData({
    @JsonKey(name: "token")
    PatientToken? patientToken,
    @JsonKey(name: "user")
    Patient? patient,

  }) =_PatientData;

  factory PatientData.fromJson(Map<String, Object?> json) =>
      _$PatientDataFromJson(json);
}

@freezed
@HiveType(typeId: 6)
class PatientToken with _$PatientToken{

  const factory PatientToken({
    @HiveField(0)
    @JsonKey(name: "access_token")
    String? accessToken,
    @JsonKey(name: "expired_at")
    dynamic expiredAt,
    String? type,
  }) = _PatientToken;

  factory PatientToken.fromJson(Map<String, Object?> json) =>
      _$PatientTokenFromJson(json);

}

@freezed
class PatientResults with _$PatientResults{

  const factory PatientResults({
    int? id,
    @JsonKey(name: "user_id")
    int? userId,
    String? bmr,
    String? bmi,
    String? bfp,
    String? tdee,
    String? goal,
    String? proteins,
    String? fats,
    String? carbs,
    @JsonKey(name: "workout_id")
    int? workoutId,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
    ResultsWorkout? workout,
    @JsonKey(name: "user")
    Patient? patient,

  }) = _PatientResults;
  factory PatientResults.fromJson(Map<String, Object?> json) =>
      _$PatientResultsFromJson(json);
}

@freezed
@HiveType(typeId: 7)
class Patient with _$Patient{

  const factory Patient({
    int? id,
    @HiveField(0)
    String? name,
    @HiveField(1)
    String? email,
    @HiveField(2)
    String? mobile,
    @HiveField(6)
    Doctor? doctor,
    @HiveField(7)
    String? weight,
    @HiveField(8)
    String? height,
    @HiveField(9)
    int? age,
    @HiveField(10)
    String? gender,
    @HiveField(11)
    @JsonKey(name: "BGL")
    String? bgl,
    @HiveField(12) @JsonKey(name: "waist_circumference")
    String? waistCircumference,
    @HiveField(13)
    @JsonKey(name: "neck_circumference")
    String? neckCircumference,
    @HiveField(14)
    @JsonKey(name: "hip_circumference")
    String? hipCircumference,
    @HiveField(15)
    @JsonKey(name: "lifestyle_type")
    String? lifestyleType,
    @HiveField(16)
    @JsonKey(name: "diabetes_type")
    String? diabetesType,
    List<Illness>? illnesses,
    PatientResults? results,
    List<Diet>? diet,
    @JsonKey(name: "doctor_id")
    int? doctorId,
    @JsonKey(name: "remember_token")
    dynamic rememberToken,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
  }) = _Patient;

  factory Patient.fromJson(Map<String, Object?> json) =>
      _$PatientFromJson(json);
}

@freezed
class ResultsWorkout with _$ResultsWorkout{


  const factory ResultsWorkout({
    int? id,
    @JsonKey(name: "diabetes_type")
    String? diabetesType,
    WorkoutWorkout? workout,
  }) = _ResultsWorkout;

  factory ResultsWorkout.fromJson(Map<String, Object?> json) =>
      _$ResultsWorkoutFromJson(json);

}

@freezed
class WorkoutWorkout with _$WorkoutWorkout{

  const factory WorkoutWorkout({
    @JsonKey(name: "Maintain healthy life style")
    String? maintainHealthyLifeStyle,
    @JsonKey(name: "Loose weight")
    String? looseWeight,
    @JsonKey(name: "Gain muscle")
    String? gainMuscle,
  }) = _WorkoutWorkout;
  factory WorkoutWorkout.fromJson(Map<String, Object?> json) =>
      _$WorkoutWorkoutFromJson(json);

}

@freezed
class Diet with _$Diet{

  const factory Diet({
    int? id,
    @JsonKey(name: "name_ar")
    String? nameAr,
    @JsonKey(name: "name_en")
    String? nameEn,
    String? calories,
    String? fats,
    String? proteins,
    String? carbs,
  }) =_Diet;
  factory Diet.fromJson(Map<String, Object?> json) =>
      _$DietFromJson(json);
}

@freezed
class Illness with _$Illness{

 const factory Illness({
    int? id,
   @JsonKey(name: "name_ar")
    String? nameAr,
   @JsonKey(name: "name_en")
    String? nameEn,
   @JsonKey(name: "group_id")
    int? groupId,
    PatientPivot? pivot,
  }) =_Illness;
  factory Illness.fromJson(Map<String, Object?> json) =>
      _$IllnessFromJson(json);

}

@freezed
class PatientPivot with _$PatientPivot{

  const factory PatientPivot({
    @JsonKey(name: "user_id")
    int? userId,
    @JsonKey(name: "illness_id")
    int? illnessId,
  }) = _PatientPivot;

  factory PatientPivot.fromJson(Map<String, Object?> json) =>
      _$PatientPivotFromJson(json);

}
