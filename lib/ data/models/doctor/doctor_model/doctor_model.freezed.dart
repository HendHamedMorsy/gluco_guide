// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) {
  return _DoctorModel.fromJson(json);
}

/// @nodoc
mixin _$DoctorModel {
  @JsonKey(name: "data")
  DoctorData? get doctorData => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorModelCopyWith<DoctorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorModelCopyWith<$Res> {
  factory $DoctorModelCopyWith(
          DoctorModel value, $Res Function(DoctorModel) then) =
      _$DoctorModelCopyWithImpl<$Res, DoctorModel>;
  @useResult
  $Res call({@JsonKey(name: "data") DoctorData? doctorData, dynamic message});

  $DoctorDataCopyWith<$Res>? get doctorData;
}

/// @nodoc
class _$DoctorModelCopyWithImpl<$Res, $Val extends DoctorModel>
    implements $DoctorModelCopyWith<$Res> {
  _$DoctorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorData = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      doctorData: freezed == doctorData
          ? _value.doctorData
          : doctorData // ignore: cast_nullable_to_non_nullable
              as DoctorData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorDataCopyWith<$Res>? get doctorData {
    if (_value.doctorData == null) {
      return null;
    }

    return $DoctorDataCopyWith<$Res>(_value.doctorData!, (value) {
      return _then(_value.copyWith(doctorData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorModelImplCopyWith<$Res>
    implements $DoctorModelCopyWith<$Res> {
  factory _$$DoctorModelImplCopyWith(
          _$DoctorModelImpl value, $Res Function(_$DoctorModelImpl) then) =
      __$$DoctorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") DoctorData? doctorData, dynamic message});

  @override
  $DoctorDataCopyWith<$Res>? get doctorData;
}

/// @nodoc
class __$$DoctorModelImplCopyWithImpl<$Res>
    extends _$DoctorModelCopyWithImpl<$Res, _$DoctorModelImpl>
    implements _$$DoctorModelImplCopyWith<$Res> {
  __$$DoctorModelImplCopyWithImpl(
      _$DoctorModelImpl _value, $Res Function(_$DoctorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorData = freezed,
    Object? message = freezed,
  }) {
    return _then(_$DoctorModelImpl(
      doctorData: freezed == doctorData
          ? _value.doctorData
          : doctorData // ignore: cast_nullable_to_non_nullable
              as DoctorData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorModelImpl implements _DoctorModel {
  const _$DoctorModelImpl(
      {@JsonKey(name: "data") this.doctorData, this.message});

  factory _$DoctorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final DoctorData? doctorData;
  @override
  final dynamic message;

  @override
  String toString() {
    return 'DoctorModel(doctorData: $doctorData, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorModelImpl &&
            (identical(other.doctorData, doctorData) ||
                other.doctorData == doctorData) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, doctorData, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorModelImplCopyWith<_$DoctorModelImpl> get copyWith =>
      __$$DoctorModelImplCopyWithImpl<_$DoctorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorModelImplToJson(
      this,
    );
  }
}

abstract class _DoctorModel implements DoctorModel {
  const factory _DoctorModel(
      {@JsonKey(name: "data") final DoctorData? doctorData,
      final dynamic message}) = _$DoctorModelImpl;

  factory _DoctorModel.fromJson(Map<String, dynamic> json) =
      _$DoctorModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  DoctorData? get doctorData;
  @override
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$$DoctorModelImplCopyWith<_$DoctorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DoctorData _$DoctorDataFromJson(Map<String, dynamic> json) {
  return _DoctorData.fromJson(json);
}

/// @nodoc
mixin _$DoctorData {
  @JsonKey(name: "token")
  DoctorToken? get doctorToken => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  DoctorData? get doctorData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorDataCopyWith<DoctorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorDataCopyWith<$Res> {
  factory $DoctorDataCopyWith(
          DoctorData value, $Res Function(DoctorData) then) =
      _$DoctorDataCopyWithImpl<$Res, DoctorData>;
  @useResult
  $Res call(
      {@JsonKey(name: "token") DoctorToken? doctorToken,
      @JsonKey(name: "user") DoctorData? doctorData});

  $DoctorTokenCopyWith<$Res>? get doctorToken;
  $DoctorDataCopyWith<$Res>? get doctorData;
}

/// @nodoc
class _$DoctorDataCopyWithImpl<$Res, $Val extends DoctorData>
    implements $DoctorDataCopyWith<$Res> {
  _$DoctorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorToken = freezed,
    Object? doctorData = freezed,
  }) {
    return _then(_value.copyWith(
      doctorToken: freezed == doctorToken
          ? _value.doctorToken
          : doctorToken // ignore: cast_nullable_to_non_nullable
              as DoctorToken?,
      doctorData: freezed == doctorData
          ? _value.doctorData
          : doctorData // ignore: cast_nullable_to_non_nullable
              as DoctorData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorTokenCopyWith<$Res>? get doctorToken {
    if (_value.doctorToken == null) {
      return null;
    }

    return $DoctorTokenCopyWith<$Res>(_value.doctorToken!, (value) {
      return _then(_value.copyWith(doctorToken: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorDataCopyWith<$Res>? get doctorData {
    if (_value.doctorData == null) {
      return null;
    }

    return $DoctorDataCopyWith<$Res>(_value.doctorData!, (value) {
      return _then(_value.copyWith(doctorData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorDataImplCopyWith<$Res>
    implements $DoctorDataCopyWith<$Res> {
  factory _$$DoctorDataImplCopyWith(
          _$DoctorDataImpl value, $Res Function(_$DoctorDataImpl) then) =
      __$$DoctorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "token") DoctorToken? doctorToken,
      @JsonKey(name: "user") DoctorData? doctorData});

  @override
  $DoctorTokenCopyWith<$Res>? get doctorToken;
  @override
  $DoctorDataCopyWith<$Res>? get doctorData;
}

/// @nodoc
class __$$DoctorDataImplCopyWithImpl<$Res>
    extends _$DoctorDataCopyWithImpl<$Res, _$DoctorDataImpl>
    implements _$$DoctorDataImplCopyWith<$Res> {
  __$$DoctorDataImplCopyWithImpl(
      _$DoctorDataImpl _value, $Res Function(_$DoctorDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorToken = freezed,
    Object? doctorData = freezed,
  }) {
    return _then(_$DoctorDataImpl(
      doctorToken: freezed == doctorToken
          ? _value.doctorToken
          : doctorToken // ignore: cast_nullable_to_non_nullable
              as DoctorToken?,
      doctorData: freezed == doctorData
          ? _value.doctorData
          : doctorData // ignore: cast_nullable_to_non_nullable
              as DoctorData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorDataImpl implements _DoctorData {
  const _$DoctorDataImpl(
      {@JsonKey(name: "token") this.doctorToken,
      @JsonKey(name: "user") this.doctorData});

  factory _$DoctorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorDataImplFromJson(json);

  @override
  @JsonKey(name: "token")
  final DoctorToken? doctorToken;
  @override
  @JsonKey(name: "user")
  final DoctorData? doctorData;

  @override
  String toString() {
    return 'DoctorData(doctorToken: $doctorToken, doctorData: $doctorData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorDataImpl &&
            (identical(other.doctorToken, doctorToken) ||
                other.doctorToken == doctorToken) &&
            (identical(other.doctorData, doctorData) ||
                other.doctorData == doctorData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, doctorToken, doctorData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorDataImplCopyWith<_$DoctorDataImpl> get copyWith =>
      __$$DoctorDataImplCopyWithImpl<_$DoctorDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorDataImplToJson(
      this,
    );
  }
}

abstract class _DoctorData implements DoctorData {
  const factory _DoctorData(
      {@JsonKey(name: "token") final DoctorToken? doctorToken,
      @JsonKey(name: "user") final DoctorData? doctorData}) = _$DoctorDataImpl;

  factory _DoctorData.fromJson(Map<String, dynamic> json) =
      _$DoctorDataImpl.fromJson;

  @override
  @JsonKey(name: "token")
  DoctorToken? get doctorToken;
  @override
  @JsonKey(name: "user")
  DoctorData? get doctorData;
  @override
  @JsonKey(ignore: true)
  _$$DoctorDataImplCopyWith<_$DoctorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DoctorToken _$DoctorTokenFromJson(Map<String, dynamic> json) {
  return _DoctorToken.fromJson(json);
}

/// @nodoc
mixin _$DoctorToken {
  @HiveField(0)
  @JsonKey(name: "access_token")
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "expired_at")
  dynamic get expiredAt => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorTokenCopyWith<DoctorToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorTokenCopyWith<$Res> {
  factory $DoctorTokenCopyWith(
          DoctorToken value, $Res Function(DoctorToken) then) =
      _$DoctorTokenCopyWithImpl<$Res, DoctorToken>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "expired_at") dynamic expiredAt,
      String? type});
}

/// @nodoc
class _$DoctorTokenCopyWithImpl<$Res, $Val extends DoctorToken>
    implements $DoctorTokenCopyWith<$Res> {
  _$DoctorTokenCopyWithImpl(this._value, this._then);

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
abstract class _$$DoctorTokenImplCopyWith<$Res>
    implements $DoctorTokenCopyWith<$Res> {
  factory _$$DoctorTokenImplCopyWith(
          _$DoctorTokenImpl value, $Res Function(_$DoctorTokenImpl) then) =
      __$$DoctorTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "expired_at") dynamic expiredAt,
      String? type});
}

/// @nodoc
class __$$DoctorTokenImplCopyWithImpl<$Res>
    extends _$DoctorTokenCopyWithImpl<$Res, _$DoctorTokenImpl>
    implements _$$DoctorTokenImplCopyWith<$Res> {
  __$$DoctorTokenImplCopyWithImpl(
      _$DoctorTokenImpl _value, $Res Function(_$DoctorTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? expiredAt = freezed,
    Object? type = freezed,
  }) {
    return _then(_$DoctorTokenImpl(
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
class _$DoctorTokenImpl implements _DoctorToken {
  const _$DoctorTokenImpl(
      {@HiveField(0) @JsonKey(name: "access_token") this.accessToken,
      @JsonKey(name: "expired_at") this.expiredAt,
      this.type});

  factory _$DoctorTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorTokenImplFromJson(json);

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
    return 'DoctorToken(accessToken: $accessToken, expiredAt: $expiredAt, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorTokenImpl &&
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
  _$$DoctorTokenImplCopyWith<_$DoctorTokenImpl> get copyWith =>
      __$$DoctorTokenImplCopyWithImpl<_$DoctorTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorTokenImplToJson(
      this,
    );
  }
}

abstract class _DoctorToken implements DoctorToken {
  const factory _DoctorToken(
      {@HiveField(0) @JsonKey(name: "access_token") final String? accessToken,
      @JsonKey(name: "expired_at") final dynamic expiredAt,
      final String? type}) = _$DoctorTokenImpl;

  factory _DoctorToken.fromJson(Map<String, dynamic> json) =
      _$DoctorTokenImpl.fromJson;

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
  _$$DoctorTokenImplCopyWith<_$DoctorTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  return _Doctor.fromJson(json);
}

/// @nodoc
mixin _$Doctor {
  @HiveField(1)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorCopyWith<Doctor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorCopyWith<$Res> {
  factory $DoctorCopyWith(Doctor value, $Res Function(Doctor) then) =
      _$DoctorCopyWithImpl<$Res, Doctor>;
  @useResult
  $Res call(
      {@HiveField(1) int? id,
      @HiveField(2) String? name,
      @HiveField(3) String? email,
      @HiveField(4) String? mobile,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$DoctorCopyWithImpl<$Res, $Val extends Doctor>
    implements $DoctorCopyWith<$Res> {
  _$DoctorCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
abstract class _$$DoctorImplCopyWith<$Res> implements $DoctorCopyWith<$Res> {
  factory _$$DoctorImplCopyWith(
          _$DoctorImpl value, $Res Function(_$DoctorImpl) then) =
      __$$DoctorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) int? id,
      @HiveField(2) String? name,
      @HiveField(3) String? email,
      @HiveField(4) String? mobile,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$$DoctorImplCopyWithImpl<$Res>
    extends _$DoctorCopyWithImpl<$Res, _$DoctorImpl>
    implements _$$DoctorImplCopyWith<$Res> {
  __$$DoctorImplCopyWithImpl(
      _$DoctorImpl _value, $Res Function(_$DoctorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? mobile = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DoctorImpl(
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
class _$DoctorImpl implements _Doctor {
  const _$DoctorImpl(
      {@HiveField(1) this.id,
      @HiveField(2) this.name,
      @HiveField(3) this.email,
      @HiveField(4) this.mobile,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$DoctorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorImplFromJson(json);

  @override
  @HiveField(1)
  final int? id;
  @override
  @HiveField(2)
  final String? name;
  @override
  @HiveField(3)
  final String? email;
  @override
  @HiveField(4)
  final String? mobile;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Doctor(id: $id, name: $name, email: $email, mobile: $mobile, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, email, mobile, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      __$$DoctorImplCopyWithImpl<_$DoctorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorImplToJson(
      this,
    );
  }
}

abstract class _Doctor implements Doctor {
  const factory _Doctor(
      {@HiveField(1) final int? id,
      @HiveField(2) final String? name,
      @HiveField(3) final String? email,
      @HiveField(4) final String? mobile,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt}) = _$DoctorImpl;

  factory _Doctor.fromJson(Map<String, dynamic> json) = _$DoctorImpl.fromJson;

  @override
  @HiveField(1)
  int? get id;
  @override
  @HiveField(2)
  String? get name;
  @override
  @HiveField(3)
  String? get email;
  @override
  @HiveField(4)
  String? get mobile;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
