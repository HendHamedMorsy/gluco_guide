// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientModel _$PatientModelFromJson(Map<String, dynamic> json) {
  return _PatientModel.fromJson(json);
}

/// @nodoc
mixin _$PatientModel {
  @JsonKey(name: "data")
  PatientData? get patientData => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientModelCopyWith<PatientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientModelCopyWith<$Res> {
  factory $PatientModelCopyWith(
          PatientModel value, $Res Function(PatientModel) then) =
      _$PatientModelCopyWithImpl<$Res, PatientModel>;
  @useResult
  $Res call({@JsonKey(name: "data") PatientData? patientData, dynamic message});

  $PatientDataCopyWith<$Res>? get patientData;
}

/// @nodoc
class _$PatientModelCopyWithImpl<$Res, $Val extends PatientModel>
    implements $PatientModelCopyWith<$Res> {
  _$PatientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientData = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      patientData: freezed == patientData
          ? _value.patientData
          : patientData // ignore: cast_nullable_to_non_nullable
              as PatientData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientDataCopyWith<$Res>? get patientData {
    if (_value.patientData == null) {
      return null;
    }

    return $PatientDataCopyWith<$Res>(_value.patientData!, (value) {
      return _then(_value.copyWith(patientData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientModelImplCopyWith<$Res>
    implements $PatientModelCopyWith<$Res> {
  factory _$$PatientModelImplCopyWith(
          _$PatientModelImpl value, $Res Function(_$PatientModelImpl) then) =
      __$$PatientModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") PatientData? patientData, dynamic message});

  @override
  $PatientDataCopyWith<$Res>? get patientData;
}

/// @nodoc
class __$$PatientModelImplCopyWithImpl<$Res>
    extends _$PatientModelCopyWithImpl<$Res, _$PatientModelImpl>
    implements _$$PatientModelImplCopyWith<$Res> {
  __$$PatientModelImplCopyWithImpl(
      _$PatientModelImpl _value, $Res Function(_$PatientModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientData = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PatientModelImpl(
      patientData: freezed == patientData
          ? _value.patientData
          : patientData // ignore: cast_nullable_to_non_nullable
              as PatientData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientModelImpl implements _PatientModel {
  const _$PatientModelImpl(
      {@JsonKey(name: "data") this.patientData, this.message});

  factory _$PatientModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final PatientData? patientData;
  @override
  final dynamic message;

  @override
  String toString() {
    return 'PatientModel(patientData: $patientData, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientModelImpl &&
            (identical(other.patientData, patientData) ||
                other.patientData == patientData) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, patientData, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientModelImplCopyWith<_$PatientModelImpl> get copyWith =>
      __$$PatientModelImplCopyWithImpl<_$PatientModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientModelImplToJson(
      this,
    );
  }
}

abstract class _PatientModel implements PatientModel {
  const factory _PatientModel(
      {@JsonKey(name: "data") final PatientData? patientData,
      final dynamic message}) = _$PatientModelImpl;

  factory _PatientModel.fromJson(Map<String, dynamic> json) =
      _$PatientModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  PatientData? get patientData;
  @override
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$$PatientModelImplCopyWith<_$PatientModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientData _$PatientDataFromJson(Map<String, dynamic> json) {
  return _PatientData.fromJson(json);
}

/// @nodoc
mixin _$PatientData {
  @JsonKey(name: "token")
  PatientToken? get patientToken => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  Patient? get patient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientDataCopyWith<PatientData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientDataCopyWith<$Res> {
  factory $PatientDataCopyWith(
          PatientData value, $Res Function(PatientData) then) =
      _$PatientDataCopyWithImpl<$Res, PatientData>;
  @useResult
  $Res call(
      {@JsonKey(name: "token") PatientToken? patientToken,
      @JsonKey(name: "user") Patient? patient});

  $PatientTokenCopyWith<$Res>? get patientToken;
  $PatientCopyWith<$Res>? get patient;
}

/// @nodoc
class _$PatientDataCopyWithImpl<$Res, $Val extends PatientData>
    implements $PatientDataCopyWith<$Res> {
  _$PatientDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientToken = freezed,
    Object? patient = freezed,
  }) {
    return _then(_value.copyWith(
      patientToken: freezed == patientToken
          ? _value.patientToken
          : patientToken // ignore: cast_nullable_to_non_nullable
              as PatientToken?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientTokenCopyWith<$Res>? get patientToken {
    if (_value.patientToken == null) {
      return null;
    }

    return $PatientTokenCopyWith<$Res>(_value.patientToken!, (value) {
      return _then(_value.copyWith(patientToken: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $PatientCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientDataImplCopyWith<$Res>
    implements $PatientDataCopyWith<$Res> {
  factory _$$PatientDataImplCopyWith(
          _$PatientDataImpl value, $Res Function(_$PatientDataImpl) then) =
      __$$PatientDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "token") PatientToken? patientToken,
      @JsonKey(name: "user") Patient? patient});

  @override
  $PatientTokenCopyWith<$Res>? get patientToken;
  @override
  $PatientCopyWith<$Res>? get patient;
}

/// @nodoc
class __$$PatientDataImplCopyWithImpl<$Res>
    extends _$PatientDataCopyWithImpl<$Res, _$PatientDataImpl>
    implements _$$PatientDataImplCopyWith<$Res> {
  __$$PatientDataImplCopyWithImpl(
      _$PatientDataImpl _value, $Res Function(_$PatientDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientToken = freezed,
    Object? patient = freezed,
  }) {
    return _then(_$PatientDataImpl(
      patientToken: freezed == patientToken
          ? _value.patientToken
          : patientToken // ignore: cast_nullable_to_non_nullable
              as PatientToken?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientDataImpl implements _PatientData {
  const _$PatientDataImpl(
      {@JsonKey(name: "token") this.patientToken,
      @JsonKey(name: "user") this.patient});

  factory _$PatientDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientDataImplFromJson(json);

  @override
  @JsonKey(name: "token")
  final PatientToken? patientToken;
  @override
  @JsonKey(name: "user")
  final Patient? patient;

  @override
  String toString() {
    return 'PatientData(patientToken: $patientToken, patient: $patient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientDataImpl &&
            (identical(other.patientToken, patientToken) ||
                other.patientToken == patientToken) &&
            (identical(other.patient, patient) || other.patient == patient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, patientToken, patient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientDataImplCopyWith<_$PatientDataImpl> get copyWith =>
      __$$PatientDataImplCopyWithImpl<_$PatientDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientDataImplToJson(
      this,
    );
  }
}

abstract class _PatientData implements PatientData {
  const factory _PatientData(
      {@JsonKey(name: "token") final PatientToken? patientToken,
      @JsonKey(name: "user") final Patient? patient}) = _$PatientDataImpl;

  factory _PatientData.fromJson(Map<String, dynamic> json) =
      _$PatientDataImpl.fromJson;

  @override
  @JsonKey(name: "token")
  PatientToken? get patientToken;
  @override
  @JsonKey(name: "user")
  Patient? get patient;
  @override
  @JsonKey(ignore: true)
  _$$PatientDataImplCopyWith<_$PatientDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientToken _$PatientTokenFromJson(Map<String, dynamic> json) {
  return _PatientToken.fromJson(json);
}

/// @nodoc
mixin _$PatientToken {
  @HiveField(0)
  @JsonKey(name: "access_token")
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "expired_at")
  dynamic get expiredAt => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientTokenCopyWith<PatientToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientTokenCopyWith<$Res> {
  factory $PatientTokenCopyWith(
          PatientToken value, $Res Function(PatientToken) then) =
      _$PatientTokenCopyWithImpl<$Res, PatientToken>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "expired_at") dynamic expiredAt,
      String? type});
}

/// @nodoc
class _$PatientTokenCopyWithImpl<$Res, $Val extends PatientToken>
    implements $PatientTokenCopyWith<$Res> {
  _$PatientTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? expiredAt = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientTokenImplCopyWith<$Res>
    implements $PatientTokenCopyWith<$Res> {
  factory _$$PatientTokenImplCopyWith(
          _$PatientTokenImpl value, $Res Function(_$PatientTokenImpl) then) =
      __$$PatientTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "expired_at") dynamic expiredAt,
      String? type});
}

/// @nodoc
class __$$PatientTokenImplCopyWithImpl<$Res>
    extends _$PatientTokenCopyWithImpl<$Res, _$PatientTokenImpl>
    implements _$$PatientTokenImplCopyWith<$Res> {
  __$$PatientTokenImplCopyWithImpl(
      _$PatientTokenImpl _value, $Res Function(_$PatientTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? expiredAt = freezed,
    Object? type = freezed,
  }) {
    return _then(_$PatientTokenImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientTokenImpl implements _PatientToken {
  const _$PatientTokenImpl(
      {@HiveField(0) @JsonKey(name: "access_token") this.accessToken,
      @JsonKey(name: "expired_at") this.expiredAt,
      this.type});

  factory _$PatientTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientTokenImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "access_token")
  final String? accessToken;
  @override
  @JsonKey(name: "expired_at")
  final dynamic expiredAt;
  @override
  final String? type;

  @override
  String toString() {
    return 'PatientToken(accessToken: $accessToken, expiredAt: $expiredAt, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientTokenImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            const DeepCollectionEquality().equals(other.expiredAt, expiredAt) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken,
      const DeepCollectionEquality().hash(expiredAt), type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientTokenImplCopyWith<_$PatientTokenImpl> get copyWith =>
      __$$PatientTokenImplCopyWithImpl<_$PatientTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientTokenImplToJson(
      this,
    );
  }
}

abstract class _PatientToken implements PatientToken {
  const factory _PatientToken(
      {@HiveField(0) @JsonKey(name: "access_token") final String? accessToken,
      @JsonKey(name: "expired_at") final dynamic expiredAt,
      final String? type}) = _$PatientTokenImpl;

  factory _PatientToken.fromJson(Map<String, dynamic> json) =
      _$PatientTokenImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "access_token")
  String? get accessToken;
  @override
  @JsonKey(name: "expired_at")
  dynamic get expiredAt;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$PatientTokenImplCopyWith<_$PatientTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientResults _$PatientResultsFromJson(Map<String, dynamic> json) {
  return _PatientResults.fromJson(json);
}

/// @nodoc
mixin _$PatientResults {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "BMR")
  String? get bmr => throw _privateConstructorUsedError;
  @JsonKey(name: "BMI")
  String? get bmi => throw _privateConstructorUsedError;
  @JsonKey(name: "BFP")
  String? get bfp => throw _privateConstructorUsedError;
  @JsonKey(name: "TDEE")
  String? get tdee => throw _privateConstructorUsedError;
  String? get goal => throw _privateConstructorUsedError;
  String? get proteins => throw _privateConstructorUsedError;
  String? get fats => throw _privateConstructorUsedError;
  String? get carbs => throw _privateConstructorUsedError;
  @JsonKey(name: "workout_id")
  int? get workoutId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  ResultsWorkout? get workout => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  Patient? get patient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientResultsCopyWith<PatientResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientResultsCopyWith<$Res> {
  factory $PatientResultsCopyWith(
          PatientResults value, $Res Function(PatientResults) then) =
      _$PatientResultsCopyWithImpl<$Res, PatientResults>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "BMR") String? bmr,
      @JsonKey(name: "BMI") String? bmi,
      @JsonKey(name: "BFP") String? bfp,
      @JsonKey(name: "TDEE") String? tdee,
      String? goal,
      String? proteins,
      String? fats,
      String? carbs,
      @JsonKey(name: "workout_id") int? workoutId,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      ResultsWorkout? workout,
      @JsonKey(name: "user") Patient? patient});

  $ResultsWorkoutCopyWith<$Res>? get workout;
  $PatientCopyWith<$Res>? get patient;
}

/// @nodoc
class _$PatientResultsCopyWithImpl<$Res, $Val extends PatientResults>
    implements $PatientResultsCopyWith<$Res> {
  _$PatientResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? bmr = freezed,
    Object? bmi = freezed,
    Object? bfp = freezed,
    Object? tdee = freezed,
    Object? goal = freezed,
    Object? proteins = freezed,
    Object? fats = freezed,
    Object? carbs = freezed,
    Object? workoutId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? workout = freezed,
    Object? patient = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      bmr: freezed == bmr
          ? _value.bmr
          : bmr // ignore: cast_nullable_to_non_nullable
              as String?,
      bmi: freezed == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as String?,
      bfp: freezed == bfp
          ? _value.bfp
          : bfp // ignore: cast_nullable_to_non_nullable
              as String?,
      tdee: freezed == tdee
          ? _value.tdee
          : tdee // ignore: cast_nullable_to_non_nullable
              as String?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String?,
      proteins: freezed == proteins
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as String?,
      fats: freezed == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as String?,
      carbs: freezed == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as String?,
      workoutId: freezed == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workout: freezed == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as ResultsWorkout?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultsWorkoutCopyWith<$Res>? get workout {
    if (_value.workout == null) {
      return null;
    }

    return $ResultsWorkoutCopyWith<$Res>(_value.workout!, (value) {
      return _then(_value.copyWith(workout: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $PatientCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientResultsImplCopyWith<$Res>
    implements $PatientResultsCopyWith<$Res> {
  factory _$$PatientResultsImplCopyWith(_$PatientResultsImpl value,
          $Res Function(_$PatientResultsImpl) then) =
      __$$PatientResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "BMR") String? bmr,
      @JsonKey(name: "BMI") String? bmi,
      @JsonKey(name: "BFP") String? bfp,
      @JsonKey(name: "TDEE") String? tdee,
      String? goal,
      String? proteins,
      String? fats,
      String? carbs,
      @JsonKey(name: "workout_id") int? workoutId,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      ResultsWorkout? workout,
      @JsonKey(name: "user") Patient? patient});

  @override
  $ResultsWorkoutCopyWith<$Res>? get workout;
  @override
  $PatientCopyWith<$Res>? get patient;
}

/// @nodoc
class __$$PatientResultsImplCopyWithImpl<$Res>
    extends _$PatientResultsCopyWithImpl<$Res, _$PatientResultsImpl>
    implements _$$PatientResultsImplCopyWith<$Res> {
  __$$PatientResultsImplCopyWithImpl(
      _$PatientResultsImpl _value, $Res Function(_$PatientResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? bmr = freezed,
    Object? bmi = freezed,
    Object? bfp = freezed,
    Object? tdee = freezed,
    Object? goal = freezed,
    Object? proteins = freezed,
    Object? fats = freezed,
    Object? carbs = freezed,
    Object? workoutId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? workout = freezed,
    Object? patient = freezed,
  }) {
    return _then(_$PatientResultsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      bmr: freezed == bmr
          ? _value.bmr
          : bmr // ignore: cast_nullable_to_non_nullable
              as String?,
      bmi: freezed == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as String?,
      bfp: freezed == bfp
          ? _value.bfp
          : bfp // ignore: cast_nullable_to_non_nullable
              as String?,
      tdee: freezed == tdee
          ? _value.tdee
          : tdee // ignore: cast_nullable_to_non_nullable
              as String?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String?,
      proteins: freezed == proteins
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as String?,
      fats: freezed == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as String?,
      carbs: freezed == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as String?,
      workoutId: freezed == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workout: freezed == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as ResultsWorkout?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientResultsImpl implements _PatientResults {
  const _$PatientResultsImpl(
      {this.id,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "BMR") this.bmr,
      @JsonKey(name: "BMI") this.bmi,
      @JsonKey(name: "BFP") this.bfp,
      @JsonKey(name: "TDEE") this.tdee,
      this.goal,
      this.proteins,
      this.fats,
      this.carbs,
      @JsonKey(name: "workout_id") this.workoutId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      this.workout,
      @JsonKey(name: "user") this.patient});

  factory _$PatientResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientResultsImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "BMR")
  final String? bmr;
  @override
  @JsonKey(name: "BMI")
  final String? bmi;
  @override
  @JsonKey(name: "BFP")
  final String? bfp;
  @override
  @JsonKey(name: "TDEE")
  final String? tdee;
  @override
  final String? goal;
  @override
  final String? proteins;
  @override
  final String? fats;
  @override
  final String? carbs;
  @override
  @JsonKey(name: "workout_id")
  final int? workoutId;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  final ResultsWorkout? workout;
  @override
  @JsonKey(name: "user")
  final Patient? patient;

  @override
  String toString() {
    return 'PatientResults(id: $id, userId: $userId, bmr: $bmr, bmi: $bmi, bfp: $bfp, tdee: $tdee, goal: $goal, proteins: $proteins, fats: $fats, carbs: $carbs, workoutId: $workoutId, createdAt: $createdAt, updatedAt: $updatedAt, workout: $workout, patient: $patient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientResultsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bmr, bmr) || other.bmr == bmr) &&
            (identical(other.bmi, bmi) || other.bmi == bmi) &&
            (identical(other.bfp, bfp) || other.bfp == bfp) &&
            (identical(other.tdee, tdee) || other.tdee == tdee) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.proteins, proteins) ||
                other.proteins == proteins) &&
            (identical(other.fats, fats) || other.fats == fats) &&
            (identical(other.carbs, carbs) || other.carbs == carbs) &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.workout, workout) || other.workout == workout) &&
            (identical(other.patient, patient) || other.patient == patient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      bmr,
      bmi,
      bfp,
      tdee,
      goal,
      proteins,
      fats,
      carbs,
      workoutId,
      createdAt,
      updatedAt,
      workout,
      patient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientResultsImplCopyWith<_$PatientResultsImpl> get copyWith =>
      __$$PatientResultsImplCopyWithImpl<_$PatientResultsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientResultsImplToJson(
      this,
    );
  }
}

abstract class _PatientResults implements PatientResults {
  const factory _PatientResults(
      {final int? id,
      @JsonKey(name: "user_id") final int? userId,
      @JsonKey(name: "BMR") final String? bmr,
      @JsonKey(name: "BMI") final String? bmi,
      @JsonKey(name: "BFP") final String? bfp,
      @JsonKey(name: "TDEE") final String? tdee,
      final String? goal,
      final String? proteins,
      final String? fats,
      final String? carbs,
      @JsonKey(name: "workout_id") final int? workoutId,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt,
      final ResultsWorkout? workout,
      @JsonKey(name: "user") final Patient? patient}) = _$PatientResultsImpl;

  factory _PatientResults.fromJson(Map<String, dynamic> json) =
      _$PatientResultsImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "BMR")
  String? get bmr;
  @override
  @JsonKey(name: "BMI")
  String? get bmi;
  @override
  @JsonKey(name: "BFP")
  String? get bfp;
  @override
  @JsonKey(name: "TDEE")
  String? get tdee;
  @override
  String? get goal;
  @override
  String? get proteins;
  @override
  String? get fats;
  @override
  String? get carbs;
  @override
  @JsonKey(name: "workout_id")
  int? get workoutId;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  ResultsWorkout? get workout;
  @override
  @JsonKey(name: "user")
  Patient? get patient;
  @override
  @JsonKey(ignore: true)
  _$$PatientResultsImplCopyWith<_$PatientResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return _Patient.fromJson(json);
}

/// @nodoc
mixin _$Patient {
  int? get id => throw _privateConstructorUsedError;
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get mobile => throw _privateConstructorUsedError;
  @HiveField(6)
  Doctor? get doctor => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get weight => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get height => throw _privateConstructorUsedError;
  @HiveField(9)
  int? get age => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get gender => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: "BGL")
  String? get bgl => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: "waist_circumference")
  String? get waistCircumference => throw _privateConstructorUsedError;
  @HiveField(13)
  @JsonKey(name: "neck_circumference")
  String? get neckCircumference => throw _privateConstructorUsedError;
  @HiveField(14)
  @JsonKey(name: "hip_circumference")
  String? get hipCircumference => throw _privateConstructorUsedError;
  @HiveField(15)
  @JsonKey(name: "lifestyle_type")
  String? get lifestyleType => throw _privateConstructorUsedError;
  @HiveField(16)
  @JsonKey(name: "diabetes_type")
  String? get diabetesType => throw _privateConstructorUsedError;
  List<Illness>? get illnesses => throw _privateConstructorUsedError;
  PatientResults? get results => throw _privateConstructorUsedError;
  List<Diet>? get diet => throw _privateConstructorUsedError;
  @JsonKey(name: "doctor_id")
  int? get doctorId => throw _privateConstructorUsedError;
  @JsonKey(name: "remember_token")
  dynamic get rememberToken => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientCopyWith<Patient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCopyWith<$Res> {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) then) =
      _$PatientCopyWithImpl<$Res, Patient>;
  @useResult
  $Res call(
      {int? id,
      @HiveField(0) String? name,
      @HiveField(1) String? email,
      @HiveField(2) String? mobile,
      @HiveField(6) Doctor? doctor,
      @HiveField(7) String? weight,
      @HiveField(8) String? height,
      @HiveField(9) int? age,
      @HiveField(10) String? gender,
      @HiveField(11) @JsonKey(name: "BGL") String? bgl,
      @HiveField(12)
      @JsonKey(name: "waist_circumference")
      String? waistCircumference,
      @HiveField(13)
      @JsonKey(name: "neck_circumference")
      String? neckCircumference,
      @HiveField(14)
      @JsonKey(name: "hip_circumference")
      String? hipCircumference,
      @HiveField(15) @JsonKey(name: "lifestyle_type") String? lifestyleType,
      @HiveField(16) @JsonKey(name: "diabetes_type") String? diabetesType,
      List<Illness>? illnesses,
      PatientResults? results,
      List<Diet>? diet,
      @JsonKey(name: "doctor_id") int? doctorId,
      @JsonKey(name: "remember_token") dynamic rememberToken,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});

  $DoctorCopyWith<$Res>? get doctor;
  $PatientResultsCopyWith<$Res>? get results;
}

/// @nodoc
class _$PatientCopyWithImpl<$Res, $Val extends Patient>
    implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? mobile = freezed,
    Object? doctor = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? bgl = freezed,
    Object? waistCircumference = freezed,
    Object? neckCircumference = freezed,
    Object? hipCircumference = freezed,
    Object? lifestyleType = freezed,
    Object? diabetesType = freezed,
    Object? illnesses = freezed,
    Object? results = freezed,
    Object? diet = freezed,
    Object? doctorId = freezed,
    Object? rememberToken = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      bgl: freezed == bgl
          ? _value.bgl
          : bgl // ignore: cast_nullable_to_non_nullable
              as String?,
      waistCircumference: freezed == waistCircumference
          ? _value.waistCircumference
          : waistCircumference // ignore: cast_nullable_to_non_nullable
              as String?,
      neckCircumference: freezed == neckCircumference
          ? _value.neckCircumference
          : neckCircumference // ignore: cast_nullable_to_non_nullable
              as String?,
      hipCircumference: freezed == hipCircumference
          ? _value.hipCircumference
          : hipCircumference // ignore: cast_nullable_to_non_nullable
              as String?,
      lifestyleType: freezed == lifestyleType
          ? _value.lifestyleType
          : lifestyleType // ignore: cast_nullable_to_non_nullable
              as String?,
      diabetesType: freezed == diabetesType
          ? _value.diabetesType
          : diabetesType // ignore: cast_nullable_to_non_nullable
              as String?,
      illnesses: freezed == illnesses
          ? _value.illnesses
          : illnesses // ignore: cast_nullable_to_non_nullable
              as List<Illness>?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as PatientResults?,
      diet: freezed == diet
          ? _value.diet
          : diet // ignore: cast_nullable_to_non_nullable
              as List<Diet>?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int?,
      rememberToken: freezed == rememberToken
          ? _value.rememberToken
          : rememberToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorCopyWith<$Res>? get doctor {
    if (_value.doctor == null) {
      return null;
    }

    return $DoctorCopyWith<$Res>(_value.doctor!, (value) {
      return _then(_value.copyWith(doctor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientResultsCopyWith<$Res>? get results {
    if (_value.results == null) {
      return null;
    }

    return $PatientResultsCopyWith<$Res>(_value.results!, (value) {
      return _then(_value.copyWith(results: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientImplCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$$PatientImplCopyWith(
          _$PatientImpl value, $Res Function(_$PatientImpl) then) =
      __$$PatientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @HiveField(0) String? name,
      @HiveField(1) String? email,
      @HiveField(2) String? mobile,
      @HiveField(6) Doctor? doctor,
      @HiveField(7) String? weight,
      @HiveField(8) String? height,
      @HiveField(9) int? age,
      @HiveField(10) String? gender,
      @HiveField(11) @JsonKey(name: "BGL") String? bgl,
      @HiveField(12)
      @JsonKey(name: "waist_circumference")
      String? waistCircumference,
      @HiveField(13)
      @JsonKey(name: "neck_circumference")
      String? neckCircumference,
      @HiveField(14)
      @JsonKey(name: "hip_circumference")
      String? hipCircumference,
      @HiveField(15) @JsonKey(name: "lifestyle_type") String? lifestyleType,
      @HiveField(16) @JsonKey(name: "diabetes_type") String? diabetesType,
      List<Illness>? illnesses,
      PatientResults? results,
      List<Diet>? diet,
      @JsonKey(name: "doctor_id") int? doctorId,
      @JsonKey(name: "remember_token") dynamic rememberToken,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});

  @override
  $DoctorCopyWith<$Res>? get doctor;
  @override
  $PatientResultsCopyWith<$Res>? get results;
}

/// @nodoc
class __$$PatientImplCopyWithImpl<$Res>
    extends _$PatientCopyWithImpl<$Res, _$PatientImpl>
    implements _$$PatientImplCopyWith<$Res> {
  __$$PatientImplCopyWithImpl(
      _$PatientImpl _value, $Res Function(_$PatientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? mobile = freezed,
    Object? doctor = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? bgl = freezed,
    Object? waistCircumference = freezed,
    Object? neckCircumference = freezed,
    Object? hipCircumference = freezed,
    Object? lifestyleType = freezed,
    Object? diabetesType = freezed,
    Object? illnesses = freezed,
    Object? results = freezed,
    Object? diet = freezed,
    Object? doctorId = freezed,
    Object? rememberToken = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PatientImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      bgl: freezed == bgl
          ? _value.bgl
          : bgl // ignore: cast_nullable_to_non_nullable
              as String?,
      waistCircumference: freezed == waistCircumference
          ? _value.waistCircumference
          : waistCircumference // ignore: cast_nullable_to_non_nullable
              as String?,
      neckCircumference: freezed == neckCircumference
          ? _value.neckCircumference
          : neckCircumference // ignore: cast_nullable_to_non_nullable
              as String?,
      hipCircumference: freezed == hipCircumference
          ? _value.hipCircumference
          : hipCircumference // ignore: cast_nullable_to_non_nullable
              as String?,
      lifestyleType: freezed == lifestyleType
          ? _value.lifestyleType
          : lifestyleType // ignore: cast_nullable_to_non_nullable
              as String?,
      diabetesType: freezed == diabetesType
          ? _value.diabetesType
          : diabetesType // ignore: cast_nullable_to_non_nullable
              as String?,
      illnesses: freezed == illnesses
          ? _value._illnesses
          : illnesses // ignore: cast_nullable_to_non_nullable
              as List<Illness>?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as PatientResults?,
      diet: freezed == diet
          ? _value._diet
          : diet // ignore: cast_nullable_to_non_nullable
              as List<Diet>?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int?,
      rememberToken: freezed == rememberToken
          ? _value.rememberToken
          : rememberToken // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientImpl implements _Patient {
  const _$PatientImpl(
      {this.id,
      @HiveField(0) this.name,
      @HiveField(1) this.email,
      @HiveField(2) this.mobile,
      @HiveField(6) this.doctor,
      @HiveField(7) this.weight,
      @HiveField(8) this.height,
      @HiveField(9) this.age,
      @HiveField(10) this.gender,
      @HiveField(11) @JsonKey(name: "BGL") this.bgl,
      @HiveField(12)
      @JsonKey(name: "waist_circumference")
      this.waistCircumference,
      @HiveField(13)
      @JsonKey(name: "neck_circumference")
      this.neckCircumference,
      @HiveField(14) @JsonKey(name: "hip_circumference") this.hipCircumference,
      @HiveField(15) @JsonKey(name: "lifestyle_type") this.lifestyleType,
      @HiveField(16) @JsonKey(name: "diabetes_type") this.diabetesType,
      final List<Illness>? illnesses,
      this.results,
      final List<Diet>? diet,
      @JsonKey(name: "doctor_id") this.doctorId,
      @JsonKey(name: "remember_token") this.rememberToken,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt})
      : _illnesses = illnesses,
        _diet = diet;

  factory _$PatientImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientImplFromJson(json);

  @override
  final int? id;
  @override
  @HiveField(0)
  final String? name;
  @override
  @HiveField(1)
  final String? email;
  @override
  @HiveField(2)
  final String? mobile;
  @override
  @HiveField(6)
  final Doctor? doctor;
  @override
  @HiveField(7)
  final String? weight;
  @override
  @HiveField(8)
  final String? height;
  @override
  @HiveField(9)
  final int? age;
  @override
  @HiveField(10)
  final String? gender;
  @override
  @HiveField(11)
  @JsonKey(name: "BGL")
  final String? bgl;
  @override
  @HiveField(12)
  @JsonKey(name: "waist_circumference")
  final String? waistCircumference;
  @override
  @HiveField(13)
  @JsonKey(name: "neck_circumference")
  final String? neckCircumference;
  @override
  @HiveField(14)
  @JsonKey(name: "hip_circumference")
  final String? hipCircumference;
  @override
  @HiveField(15)
  @JsonKey(name: "lifestyle_type")
  final String? lifestyleType;
  @override
  @HiveField(16)
  @JsonKey(name: "diabetes_type")
  final String? diabetesType;
  final List<Illness>? _illnesses;
  @override
  List<Illness>? get illnesses {
    final value = _illnesses;
    if (value == null) return null;
    if (_illnesses is EqualUnmodifiableListView) return _illnesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PatientResults? results;
  final List<Diet>? _diet;
  @override
  List<Diet>? get diet {
    final value = _diet;
    if (value == null) return null;
    if (_diet is EqualUnmodifiableListView) return _diet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "doctor_id")
  final int? doctorId;
  @override
  @JsonKey(name: "remember_token")
  final dynamic rememberToken;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Patient(id: $id, name: $name, email: $email, mobile: $mobile, doctor: $doctor, weight: $weight, height: $height, age: $age, gender: $gender, bgl: $bgl, waistCircumference: $waistCircumference, neckCircumference: $neckCircumference, hipCircumference: $hipCircumference, lifestyleType: $lifestyleType, diabetesType: $diabetesType, illnesses: $illnesses, results: $results, diet: $diet, doctorId: $doctorId, rememberToken: $rememberToken, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.bgl, bgl) || other.bgl == bgl) &&
            (identical(other.waistCircumference, waistCircumference) ||
                other.waistCircumference == waistCircumference) &&
            (identical(other.neckCircumference, neckCircumference) ||
                other.neckCircumference == neckCircumference) &&
            (identical(other.hipCircumference, hipCircumference) ||
                other.hipCircumference == hipCircumference) &&
            (identical(other.lifestyleType, lifestyleType) ||
                other.lifestyleType == lifestyleType) &&
            (identical(other.diabetesType, diabetesType) ||
                other.diabetesType == diabetesType) &&
            const DeepCollectionEquality()
                .equals(other._illnesses, _illnesses) &&
            (identical(other.results, results) || other.results == results) &&
            const DeepCollectionEquality().equals(other._diet, _diet) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            const DeepCollectionEquality()
                .equals(other.rememberToken, rememberToken) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        email,
        mobile,
        doctor,
        weight,
        height,
        age,
        gender,
        bgl,
        waistCircumference,
        neckCircumference,
        hipCircumference,
        lifestyleType,
        diabetesType,
        const DeepCollectionEquality().hash(_illnesses),
        results,
        const DeepCollectionEquality().hash(_diet),
        doctorId,
        const DeepCollectionEquality().hash(rememberToken),
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      __$$PatientImplCopyWithImpl<_$PatientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientImplToJson(
      this,
    );
  }
}

abstract class _Patient implements Patient {
  const factory _Patient(
      {final int? id,
      @HiveField(0) final String? name,
      @HiveField(1) final String? email,
      @HiveField(2) final String? mobile,
      @HiveField(6) final Doctor? doctor,
      @HiveField(7) final String? weight,
      @HiveField(8) final String? height,
      @HiveField(9) final int? age,
      @HiveField(10) final String? gender,
      @HiveField(11) @JsonKey(name: "BGL") final String? bgl,
      @HiveField(12)
      @JsonKey(name: "waist_circumference")
      final String? waistCircumference,
      @HiveField(13)
      @JsonKey(name: "neck_circumference")
      final String? neckCircumference,
      @HiveField(14)
      @JsonKey(name: "hip_circumference")
      final String? hipCircumference,
      @HiveField(15)
      @JsonKey(name: "lifestyle_type")
      final String? lifestyleType,
      @HiveField(16) @JsonKey(name: "diabetes_type") final String? diabetesType,
      final List<Illness>? illnesses,
      final PatientResults? results,
      final List<Diet>? diet,
      @JsonKey(name: "doctor_id") final int? doctorId,
      @JsonKey(name: "remember_token") final dynamic rememberToken,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt}) = _$PatientImpl;

  factory _Patient.fromJson(Map<String, dynamic> json) = _$PatientImpl.fromJson;

  @override
  int? get id;
  @override
  @HiveField(0)
  String? get name;
  @override
  @HiveField(1)
  String? get email;
  @override
  @HiveField(2)
  String? get mobile;
  @override
  @HiveField(6)
  Doctor? get doctor;
  @override
  @HiveField(7)
  String? get weight;
  @override
  @HiveField(8)
  String? get height;
  @override
  @HiveField(9)
  int? get age;
  @override
  @HiveField(10)
  String? get gender;
  @override
  @HiveField(11)
  @JsonKey(name: "BGL")
  String? get bgl;
  @override
  @HiveField(12)
  @JsonKey(name: "waist_circumference")
  String? get waistCircumference;
  @override
  @HiveField(13)
  @JsonKey(name: "neck_circumference")
  String? get neckCircumference;
  @override
  @HiveField(14)
  @JsonKey(name: "hip_circumference")
  String? get hipCircumference;
  @override
  @HiveField(15)
  @JsonKey(name: "lifestyle_type")
  String? get lifestyleType;
  @override
  @HiveField(16)
  @JsonKey(name: "diabetes_type")
  String? get diabetesType;
  @override
  List<Illness>? get illnesses;
  @override
  PatientResults? get results;
  @override
  List<Diet>? get diet;
  @override
  @JsonKey(name: "doctor_id")
  int? get doctorId;
  @override
  @JsonKey(name: "remember_token")
  dynamic get rememberToken;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultsWorkout _$ResultsWorkoutFromJson(Map<String, dynamic> json) {
  return _ResultsWorkout.fromJson(json);
}

/// @nodoc
mixin _$ResultsWorkout {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "diabetes_type")
  String? get diabetesType => throw _privateConstructorUsedError;
  WorkoutWorkout? get workout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsWorkoutCopyWith<ResultsWorkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsWorkoutCopyWith<$Res> {
  factory $ResultsWorkoutCopyWith(
          ResultsWorkout value, $Res Function(ResultsWorkout) then) =
      _$ResultsWorkoutCopyWithImpl<$Res, ResultsWorkout>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "diabetes_type") String? diabetesType,
      WorkoutWorkout? workout});

  $WorkoutWorkoutCopyWith<$Res>? get workout;
}

/// @nodoc
class _$ResultsWorkoutCopyWithImpl<$Res, $Val extends ResultsWorkout>
    implements $ResultsWorkoutCopyWith<$Res> {
  _$ResultsWorkoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? diabetesType = freezed,
    Object? workout = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      diabetesType: freezed == diabetesType
          ? _value.diabetesType
          : diabetesType // ignore: cast_nullable_to_non_nullable
              as String?,
      workout: freezed == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as WorkoutWorkout?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkoutWorkoutCopyWith<$Res>? get workout {
    if (_value.workout == null) {
      return null;
    }

    return $WorkoutWorkoutCopyWith<$Res>(_value.workout!, (value) {
      return _then(_value.copyWith(workout: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultsWorkoutImplCopyWith<$Res>
    implements $ResultsWorkoutCopyWith<$Res> {
  factory _$$ResultsWorkoutImplCopyWith(_$ResultsWorkoutImpl value,
          $Res Function(_$ResultsWorkoutImpl) then) =
      __$$ResultsWorkoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "diabetes_type") String? diabetesType,
      WorkoutWorkout? workout});

  @override
  $WorkoutWorkoutCopyWith<$Res>? get workout;
}

/// @nodoc
class __$$ResultsWorkoutImplCopyWithImpl<$Res>
    extends _$ResultsWorkoutCopyWithImpl<$Res, _$ResultsWorkoutImpl>
    implements _$$ResultsWorkoutImplCopyWith<$Res> {
  __$$ResultsWorkoutImplCopyWithImpl(
      _$ResultsWorkoutImpl _value, $Res Function(_$ResultsWorkoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? diabetesType = freezed,
    Object? workout = freezed,
  }) {
    return _then(_$ResultsWorkoutImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      diabetesType: freezed == diabetesType
          ? _value.diabetesType
          : diabetesType // ignore: cast_nullable_to_non_nullable
              as String?,
      workout: freezed == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as WorkoutWorkout?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsWorkoutImpl implements _ResultsWorkout {
  const _$ResultsWorkoutImpl(
      {this.id,
      @JsonKey(name: "diabetes_type") this.diabetesType,
      this.workout});

  factory _$ResultsWorkoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsWorkoutImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "diabetes_type")
  final String? diabetesType;
  @override
  final WorkoutWorkout? workout;

  @override
  String toString() {
    return 'ResultsWorkout(id: $id, diabetesType: $diabetesType, workout: $workout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsWorkoutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.diabetesType, diabetesType) ||
                other.diabetesType == diabetesType) &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, diabetesType, workout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsWorkoutImplCopyWith<_$ResultsWorkoutImpl> get copyWith =>
      __$$ResultsWorkoutImplCopyWithImpl<_$ResultsWorkoutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsWorkoutImplToJson(
      this,
    );
  }
}

abstract class _ResultsWorkout implements ResultsWorkout {
  const factory _ResultsWorkout(
      {final int? id,
      @JsonKey(name: "diabetes_type") final String? diabetesType,
      final WorkoutWorkout? workout}) = _$ResultsWorkoutImpl;

  factory _ResultsWorkout.fromJson(Map<String, dynamic> json) =
      _$ResultsWorkoutImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "diabetes_type")
  String? get diabetesType;
  @override
  WorkoutWorkout? get workout;
  @override
  @JsonKey(ignore: true)
  _$$ResultsWorkoutImplCopyWith<_$ResultsWorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkoutWorkout _$WorkoutWorkoutFromJson(Map<String, dynamic> json) {
  return _WorkoutWorkout.fromJson(json);
}

/// @nodoc
mixin _$WorkoutWorkout {
  @JsonKey(name: "Maintain healthy life style")
  String? get maintainHealthyLifeStyle => throw _privateConstructorUsedError;
  @JsonKey(name: "Loose weight")
  String? get looseWeight => throw _privateConstructorUsedError;
  @JsonKey(name: "Gain muscle")
  String? get gainMuscle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutWorkoutCopyWith<WorkoutWorkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutWorkoutCopyWith<$Res> {
  factory $WorkoutWorkoutCopyWith(
          WorkoutWorkout value, $Res Function(WorkoutWorkout) then) =
      _$WorkoutWorkoutCopyWithImpl<$Res, WorkoutWorkout>;
  @useResult
  $Res call(
      {@JsonKey(name: "Maintain healthy life style")
      String? maintainHealthyLifeStyle,
      @JsonKey(name: "Loose weight") String? looseWeight,
      @JsonKey(name: "Gain muscle") String? gainMuscle});
}

/// @nodoc
class _$WorkoutWorkoutCopyWithImpl<$Res, $Val extends WorkoutWorkout>
    implements $WorkoutWorkoutCopyWith<$Res> {
  _$WorkoutWorkoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maintainHealthyLifeStyle = freezed,
    Object? looseWeight = freezed,
    Object? gainMuscle = freezed,
  }) {
    return _then(_value.copyWith(
      maintainHealthyLifeStyle: freezed == maintainHealthyLifeStyle
          ? _value.maintainHealthyLifeStyle
          : maintainHealthyLifeStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      looseWeight: freezed == looseWeight
          ? _value.looseWeight
          : looseWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      gainMuscle: freezed == gainMuscle
          ? _value.gainMuscle
          : gainMuscle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutWorkoutImplCopyWith<$Res>
    implements $WorkoutWorkoutCopyWith<$Res> {
  factory _$$WorkoutWorkoutImplCopyWith(_$WorkoutWorkoutImpl value,
          $Res Function(_$WorkoutWorkoutImpl) then) =
      __$$WorkoutWorkoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Maintain healthy life style")
      String? maintainHealthyLifeStyle,
      @JsonKey(name: "Loose weight") String? looseWeight,
      @JsonKey(name: "Gain muscle") String? gainMuscle});
}

/// @nodoc
class __$$WorkoutWorkoutImplCopyWithImpl<$Res>
    extends _$WorkoutWorkoutCopyWithImpl<$Res, _$WorkoutWorkoutImpl>
    implements _$$WorkoutWorkoutImplCopyWith<$Res> {
  __$$WorkoutWorkoutImplCopyWithImpl(
      _$WorkoutWorkoutImpl _value, $Res Function(_$WorkoutWorkoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maintainHealthyLifeStyle = freezed,
    Object? looseWeight = freezed,
    Object? gainMuscle = freezed,
  }) {
    return _then(_$WorkoutWorkoutImpl(
      maintainHealthyLifeStyle: freezed == maintainHealthyLifeStyle
          ? _value.maintainHealthyLifeStyle
          : maintainHealthyLifeStyle // ignore: cast_nullable_to_non_nullable
              as String?,
      looseWeight: freezed == looseWeight
          ? _value.looseWeight
          : looseWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      gainMuscle: freezed == gainMuscle
          ? _value.gainMuscle
          : gainMuscle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutWorkoutImpl implements _WorkoutWorkout {
  const _$WorkoutWorkoutImpl(
      {@JsonKey(name: "Maintain healthy life style")
      this.maintainHealthyLifeStyle,
      @JsonKey(name: "Loose weight") this.looseWeight,
      @JsonKey(name: "Gain muscle") this.gainMuscle});

  factory _$WorkoutWorkoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutWorkoutImplFromJson(json);

  @override
  @JsonKey(name: "Maintain healthy life style")
  final String? maintainHealthyLifeStyle;
  @override
  @JsonKey(name: "Loose weight")
  final String? looseWeight;
  @override
  @JsonKey(name: "Gain muscle")
  final String? gainMuscle;

  @override
  String toString() {
    return 'WorkoutWorkout(maintainHealthyLifeStyle: $maintainHealthyLifeStyle, looseWeight: $looseWeight, gainMuscle: $gainMuscle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutWorkoutImpl &&
            (identical(
                    other.maintainHealthyLifeStyle, maintainHealthyLifeStyle) ||
                other.maintainHealthyLifeStyle == maintainHealthyLifeStyle) &&
            (identical(other.looseWeight, looseWeight) ||
                other.looseWeight == looseWeight) &&
            (identical(other.gainMuscle, gainMuscle) ||
                other.gainMuscle == gainMuscle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, maintainHealthyLifeStyle, looseWeight, gainMuscle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutWorkoutImplCopyWith<_$WorkoutWorkoutImpl> get copyWith =>
      __$$WorkoutWorkoutImplCopyWithImpl<_$WorkoutWorkoutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutWorkoutImplToJson(
      this,
    );
  }
}

abstract class _WorkoutWorkout implements WorkoutWorkout {
  const factory _WorkoutWorkout(
          {@JsonKey(name: "Maintain healthy life style")
          final String? maintainHealthyLifeStyle,
          @JsonKey(name: "Loose weight") final String? looseWeight,
          @JsonKey(name: "Gain muscle") final String? gainMuscle}) =
      _$WorkoutWorkoutImpl;

  factory _WorkoutWorkout.fromJson(Map<String, dynamic> json) =
      _$WorkoutWorkoutImpl.fromJson;

  @override
  @JsonKey(name: "Maintain healthy life style")
  String? get maintainHealthyLifeStyle;
  @override
  @JsonKey(name: "Loose weight")
  String? get looseWeight;
  @override
  @JsonKey(name: "Gain muscle")
  String? get gainMuscle;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutWorkoutImplCopyWith<_$WorkoutWorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Diet _$DietFromJson(Map<String, dynamic> json) {
  return _Diet.fromJson(json);
}

/// @nodoc
mixin _$Diet {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name_ar")
  String? get nameAr => throw _privateConstructorUsedError;
  @JsonKey(name: "name_en")
  String? get nameEn => throw _privateConstructorUsedError;
  String? get calories => throw _privateConstructorUsedError;
  String? get fats => throw _privateConstructorUsedError;
  String? get proteins => throw _privateConstructorUsedError;
  String? get carbs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DietCopyWith<Diet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietCopyWith<$Res> {
  factory $DietCopyWith(Diet value, $Res Function(Diet) then) =
      _$DietCopyWithImpl<$Res, Diet>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "name_ar") String? nameAr,
      @JsonKey(name: "name_en") String? nameEn,
      String? calories,
      String? fats,
      String? proteins,
      String? carbs});
}

/// @nodoc
class _$DietCopyWithImpl<$Res, $Val extends Diet>
    implements $DietCopyWith<$Res> {
  _$DietCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameAr = freezed,
    Object? nameEn = freezed,
    Object? calories = freezed,
    Object? fats = freezed,
    Object? proteins = freezed,
    Object? carbs = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nameAr: freezed == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      nameEn: freezed == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String?,
      fats: freezed == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as String?,
      proteins: freezed == proteins
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as String?,
      carbs: freezed == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DietImplCopyWith<$Res> implements $DietCopyWith<$Res> {
  factory _$$DietImplCopyWith(
          _$DietImpl value, $Res Function(_$DietImpl) then) =
      __$$DietImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "name_ar") String? nameAr,
      @JsonKey(name: "name_en") String? nameEn,
      String? calories,
      String? fats,
      String? proteins,
      String? carbs});
}

/// @nodoc
class __$$DietImplCopyWithImpl<$Res>
    extends _$DietCopyWithImpl<$Res, _$DietImpl>
    implements _$$DietImplCopyWith<$Res> {
  __$$DietImplCopyWithImpl(_$DietImpl _value, $Res Function(_$DietImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameAr = freezed,
    Object? nameEn = freezed,
    Object? calories = freezed,
    Object? fats = freezed,
    Object? proteins = freezed,
    Object? carbs = freezed,
  }) {
    return _then(_$DietImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nameAr: freezed == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      nameEn: freezed == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String?,
      fats: freezed == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as String?,
      proteins: freezed == proteins
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as String?,
      carbs: freezed == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DietImpl implements _Diet {
  const _$DietImpl(
      {this.id,
      @JsonKey(name: "name_ar") this.nameAr,
      @JsonKey(name: "name_en") this.nameEn,
      this.calories,
      this.fats,
      this.proteins,
      this.carbs});

  factory _$DietImpl.fromJson(Map<String, dynamic> json) =>
      _$$DietImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "name_ar")
  final String? nameAr;
  @override
  @JsonKey(name: "name_en")
  final String? nameEn;
  @override
  final String? calories;
  @override
  final String? fats;
  @override
  final String? proteins;
  @override
  final String? carbs;

  @override
  String toString() {
    return 'Diet(id: $id, nameAr: $nameAr, nameEn: $nameEn, calories: $calories, fats: $fats, proteins: $proteins, carbs: $carbs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DietImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameAr, nameAr) || other.nameAr == nameAr) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.fats, fats) || other.fats == fats) &&
            (identical(other.proteins, proteins) ||
                other.proteins == proteins) &&
            (identical(other.carbs, carbs) || other.carbs == carbs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, nameAr, nameEn, calories, fats, proteins, carbs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DietImplCopyWith<_$DietImpl> get copyWith =>
      __$$DietImplCopyWithImpl<_$DietImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DietImplToJson(
      this,
    );
  }
}

abstract class _Diet implements Diet {
  const factory _Diet(
      {final int? id,
      @JsonKey(name: "name_ar") final String? nameAr,
      @JsonKey(name: "name_en") final String? nameEn,
      final String? calories,
      final String? fats,
      final String? proteins,
      final String? carbs}) = _$DietImpl;

  factory _Diet.fromJson(Map<String, dynamic> json) = _$DietImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "name_ar")
  String? get nameAr;
  @override
  @JsonKey(name: "name_en")
  String? get nameEn;
  @override
  String? get calories;
  @override
  String? get fats;
  @override
  String? get proteins;
  @override
  String? get carbs;
  @override
  @JsonKey(ignore: true)
  _$$DietImplCopyWith<_$DietImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Illness _$IllnessFromJson(Map<String, dynamic> json) {
  return _Illness.fromJson(json);
}

/// @nodoc
mixin _$Illness {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name_ar")
  String? get nameAr => throw _privateConstructorUsedError;
  @JsonKey(name: "name_en")
  String? get nameEn => throw _privateConstructorUsedError;
  @JsonKey(name: "group_id")
  int? get groupId => throw _privateConstructorUsedError;
  PatientPivot? get pivot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IllnessCopyWith<Illness> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IllnessCopyWith<$Res> {
  factory $IllnessCopyWith(Illness value, $Res Function(Illness) then) =
      _$IllnessCopyWithImpl<$Res, Illness>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "name_ar") String? nameAr,
      @JsonKey(name: "name_en") String? nameEn,
      @JsonKey(name: "group_id") int? groupId,
      PatientPivot? pivot});

  $PatientPivotCopyWith<$Res>? get pivot;
}

/// @nodoc
class _$IllnessCopyWithImpl<$Res, $Val extends Illness>
    implements $IllnessCopyWith<$Res> {
  _$IllnessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameAr = freezed,
    Object? nameEn = freezed,
    Object? groupId = freezed,
    Object? pivot = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nameAr: freezed == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      nameEn: freezed == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as PatientPivot?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientPivotCopyWith<$Res>? get pivot {
    if (_value.pivot == null) {
      return null;
    }

    return $PatientPivotCopyWith<$Res>(_value.pivot!, (value) {
      return _then(_value.copyWith(pivot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IllnessImplCopyWith<$Res> implements $IllnessCopyWith<$Res> {
  factory _$$IllnessImplCopyWith(
          _$IllnessImpl value, $Res Function(_$IllnessImpl) then) =
      __$$IllnessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "name_ar") String? nameAr,
      @JsonKey(name: "name_en") String? nameEn,
      @JsonKey(name: "group_id") int? groupId,
      PatientPivot? pivot});

  @override
  $PatientPivotCopyWith<$Res>? get pivot;
}

/// @nodoc
class __$$IllnessImplCopyWithImpl<$Res>
    extends _$IllnessCopyWithImpl<$Res, _$IllnessImpl>
    implements _$$IllnessImplCopyWith<$Res> {
  __$$IllnessImplCopyWithImpl(
      _$IllnessImpl _value, $Res Function(_$IllnessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameAr = freezed,
    Object? nameEn = freezed,
    Object? groupId = freezed,
    Object? pivot = freezed,
  }) {
    return _then(_$IllnessImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nameAr: freezed == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      nameEn: freezed == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as PatientPivot?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IllnessImpl implements _Illness {
  const _$IllnessImpl(
      {this.id,
      @JsonKey(name: "name_ar") this.nameAr,
      @JsonKey(name: "name_en") this.nameEn,
      @JsonKey(name: "group_id") this.groupId,
      this.pivot});

  factory _$IllnessImpl.fromJson(Map<String, dynamic> json) =>
      _$$IllnessImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "name_ar")
  final String? nameAr;
  @override
  @JsonKey(name: "name_en")
  final String? nameEn;
  @override
  @JsonKey(name: "group_id")
  final int? groupId;
  @override
  final PatientPivot? pivot;

  @override
  String toString() {
    return 'Illness(id: $id, nameAr: $nameAr, nameEn: $nameEn, groupId: $groupId, pivot: $pivot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IllnessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameAr, nameAr) || other.nameAr == nameAr) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.pivot, pivot) || other.pivot == pivot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nameAr, nameEn, groupId, pivot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IllnessImplCopyWith<_$IllnessImpl> get copyWith =>
      __$$IllnessImplCopyWithImpl<_$IllnessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IllnessImplToJson(
      this,
    );
  }
}

abstract class _Illness implements Illness {
  const factory _Illness(
      {final int? id,
      @JsonKey(name: "name_ar") final String? nameAr,
      @JsonKey(name: "name_en") final String? nameEn,
      @JsonKey(name: "group_id") final int? groupId,
      final PatientPivot? pivot}) = _$IllnessImpl;

  factory _Illness.fromJson(Map<String, dynamic> json) = _$IllnessImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "name_ar")
  String? get nameAr;
  @override
  @JsonKey(name: "name_en")
  String? get nameEn;
  @override
  @JsonKey(name: "group_id")
  int? get groupId;
  @override
  PatientPivot? get pivot;
  @override
  @JsonKey(ignore: true)
  _$$IllnessImplCopyWith<_$IllnessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientPivot _$PatientPivotFromJson(Map<String, dynamic> json) {
  return _PatientPivot.fromJson(json);
}

/// @nodoc
mixin _$PatientPivot {
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "illness_id")
  int? get illnessId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientPivotCopyWith<PatientPivot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientPivotCopyWith<$Res> {
  factory $PatientPivotCopyWith(
          PatientPivot value, $Res Function(PatientPivot) then) =
      _$PatientPivotCopyWithImpl<$Res, PatientPivot>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "illness_id") int? illnessId});
}

/// @nodoc
class _$PatientPivotCopyWithImpl<$Res, $Val extends PatientPivot>
    implements $PatientPivotCopyWith<$Res> {
  _$PatientPivotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? illnessId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      illnessId: freezed == illnessId
          ? _value.illnessId
          : illnessId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientPivotImplCopyWith<$Res>
    implements $PatientPivotCopyWith<$Res> {
  factory _$$PatientPivotImplCopyWith(
          _$PatientPivotImpl value, $Res Function(_$PatientPivotImpl) then) =
      __$$PatientPivotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "illness_id") int? illnessId});
}

/// @nodoc
class __$$PatientPivotImplCopyWithImpl<$Res>
    extends _$PatientPivotCopyWithImpl<$Res, _$PatientPivotImpl>
    implements _$$PatientPivotImplCopyWith<$Res> {
  __$$PatientPivotImplCopyWithImpl(
      _$PatientPivotImpl _value, $Res Function(_$PatientPivotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? illnessId = freezed,
  }) {
    return _then(_$PatientPivotImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      illnessId: freezed == illnessId
          ? _value.illnessId
          : illnessId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientPivotImpl implements _PatientPivot {
  const _$PatientPivotImpl(
      {@JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "illness_id") this.illnessId});

  factory _$PatientPivotImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientPivotImplFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "illness_id")
  final int? illnessId;

  @override
  String toString() {
    return 'PatientPivot(userId: $userId, illnessId: $illnessId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientPivotImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.illnessId, illnessId) ||
                other.illnessId == illnessId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, illnessId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientPivotImplCopyWith<_$PatientPivotImpl> get copyWith =>
      __$$PatientPivotImplCopyWithImpl<_$PatientPivotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientPivotImplToJson(
      this,
    );
  }
}

abstract class _PatientPivot implements PatientPivot {
  const factory _PatientPivot(
      {@JsonKey(name: "user_id") final int? userId,
      @JsonKey(name: "illness_id") final int? illnessId}) = _$PatientPivotImpl;

  factory _PatientPivot.fromJson(Map<String, dynamic> json) =
      _$PatientPivotImpl.fromJson;

  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "illness_id")
  int? get illnessId;
  @override
  @JsonKey(ignore: true)
  _$$PatientPivotImplCopyWith<_$PatientPivotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
