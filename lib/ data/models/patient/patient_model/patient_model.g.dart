// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientModelImpl _$$PatientModelImplFromJson(Map<String, dynamic> json) =>
    _$PatientModelImpl(
      patientData: json['data'] == null
          ? null
          : PatientData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'],
    );

Map<String, dynamic> _$$PatientModelImplToJson(_$PatientModelImpl instance) =>
    <String, dynamic>{
      'data': instance.patientData,
      'message': instance.message,
    };

_$PatientDataImpl _$$PatientDataImplFromJson(Map<String, dynamic> json) =>
    _$PatientDataImpl(
      patientToken: json['token'] == null
          ? null
          : PatientToken.fromJson(json['token'] as Map<String, dynamic>),
      patient: json['user'] == null
          ? null
          : Patient.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PatientDataImplToJson(_$PatientDataImpl instance) =>
    <String, dynamic>{
      'token': instance.patientToken,
      'user': instance.patient,
    };

_$PatientTokenImpl _$$PatientTokenImplFromJson(Map<String, dynamic> json) =>
    _$PatientTokenImpl(
      accessToken: json['access_token'] as String?,
      expiredAt: json['expired_at'],
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$PatientTokenImplToJson(_$PatientTokenImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expired_at': instance.expiredAt,
      'type': instance.type,
    };

_$PatientResultsImpl _$$PatientResultsImplFromJson(Map<String, dynamic> json) =>
    _$PatientResultsImpl(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      bmr: json['bmr'] as String?,
      bmi: json['bmi'] as String?,
      bfp: json['bfp'] as String?,
      tdee: json['tdee'] as String?,
      goal: json['goal'] as String?,
      proteins: json['proteins'] as String?,
      fats: json['fats'] as String?,
      carbs: json['carbs'] as String?,
      workoutId: json['workout_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      workout: json['workout'] == null
          ? null
          : ResultsWorkout.fromJson(json['workout'] as Map<String, dynamic>),
      patient: json['user'] == null
          ? null
          : Patient.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PatientResultsImplToJson(
        _$PatientResultsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'bmr': instance.bmr,
      'bmi': instance.bmi,
      'bfp': instance.bfp,
      'tdee': instance.tdee,
      'goal': instance.goal,
      'proteins': instance.proteins,
      'fats': instance.fats,
      'carbs': instance.carbs,
      'workout_id': instance.workoutId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'workout': instance.workout,
      'user': instance.patient,
    };

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      mobile: json['mobile'] as String?,
      doctor: json['doctor'] == null
          ? null
          : Doctor.fromJson(json['doctor'] as Map<String, dynamic>),
      weight: json['weight'] as String?,
      height: json['height'] as String?,
      age: json['age'] as int?,
      gender: json['gender'] as String?,
      bgl: json['BGL'] as String?,
      waistCircumference: json['waist_circumference'] as String?,
      neckCircumference: json['neck_circumference'] as String?,
      hipCircumference: json['hip_circumference'] as String?,
      lifestyleType: json['lifestyle_type'] as String?,
      diabetesType: json['diabetes_type'] as String?,
      illnesses: (json['illnesses'] as List<dynamic>?)
          ?.map((e) => Illness.fromJson(e as Map<String, dynamic>))
          .toList(),
      results: json['results'] == null
          ? null
          : PatientResults.fromJson(json['results'] as Map<String, dynamic>),
      diet: (json['diet'] as List<dynamic>?)
          ?.map((e) => Diet.fromJson(e as Map<String, dynamic>))
          .toList(),
      doctorId: json['doctor_id'] as int?,
      rememberToken: json['remember_token'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'doctor': instance.doctor,
      'weight': instance.weight,
      'height': instance.height,
      'age': instance.age,
      'gender': instance.gender,
      'BGL': instance.bgl,
      'waist_circumference': instance.waistCircumference,
      'neck_circumference': instance.neckCircumference,
      'hip_circumference': instance.hipCircumference,
      'lifestyle_type': instance.lifestyleType,
      'diabetes_type': instance.diabetesType,
      'illnesses': instance.illnesses,
      'results': instance.results,
      'diet': instance.diet,
      'doctor_id': instance.doctorId,
      'remember_token': instance.rememberToken,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$ResultsWorkoutImpl _$$ResultsWorkoutImplFromJson(Map<String, dynamic> json) =>
    _$ResultsWorkoutImpl(
      id: json['id'] as int?,
      diabetesType: json['diabetes_type'] as String?,
      workout: json['workout'] == null
          ? null
          : WorkoutWorkout.fromJson(json['workout'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultsWorkoutImplToJson(
        _$ResultsWorkoutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'diabetes_type': instance.diabetesType,
      'workout': instance.workout,
    };

_$WorkoutWorkoutImpl _$$WorkoutWorkoutImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutWorkoutImpl(
      maintainHealthyLifeStyle: json['Maintain healthy life style'] as String?,
      looseWeight: json['Loose weight'] as String?,
      gainMuscle: json['Gain muscle'] as String?,
    );

Map<String, dynamic> _$$WorkoutWorkoutImplToJson(
        _$WorkoutWorkoutImpl instance) =>
    <String, dynamic>{
      'Maintain healthy life style': instance.maintainHealthyLifeStyle,
      'Loose weight': instance.looseWeight,
      'Gain muscle': instance.gainMuscle,
    };

_$DietImpl _$$DietImplFromJson(Map<String, dynamic> json) => _$DietImpl(
      id: json['id'] as int?,
      nameAr: json['name_ar'] as String?,
      nameEn: json['name_en'] as String?,
      calories: json['calories'] as String?,
      fats: json['fats'] as String?,
      proteins: json['proteins'] as String?,
      carbs: json['carbs'] as String?,
    );

Map<String, dynamic> _$$DietImplToJson(_$DietImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_ar': instance.nameAr,
      'name_en': instance.nameEn,
      'calories': instance.calories,
      'fats': instance.fats,
      'proteins': instance.proteins,
      'carbs': instance.carbs,
    };

_$IllnessImpl _$$IllnessImplFromJson(Map<String, dynamic> json) =>
    _$IllnessImpl(
      id: json['id'] as int?,
      nameAr: json['name_ar'] as String?,
      nameEn: json['name_en'] as String?,
      groupId: json['group_id'] as int?,
      pivot: json['pivot'] == null
          ? null
          : PatientPivot.fromJson(json['pivot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IllnessImplToJson(_$IllnessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_ar': instance.nameAr,
      'name_en': instance.nameEn,
      'group_id': instance.groupId,
      'pivot': instance.pivot,
    };

_$PatientPivotImpl _$$PatientPivotImplFromJson(Map<String, dynamic> json) =>
    _$PatientPivotImpl(
      userId: json['user_id'] as int?,
      illnessId: json['illness_id'] as int?,
    );

Map<String, dynamic> _$$PatientPivotImplToJson(_$PatientPivotImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'illness_id': instance.illnessId,
    };
