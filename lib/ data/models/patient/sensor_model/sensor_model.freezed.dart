// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SensorModel _$SensorModelFromJson(Map<String, dynamic> json) {
  return _SensorModel.fromJson(json);
}

/// @nodoc
mixin _$SensorModel {
  @JsonKey(name: "oxygen_saturation")
  String? get oxygenSaturation => throw _privateConstructorUsedError;
  @JsonKey(name: "heart_rate")
  String? get heartRate => throw _privateConstructorUsedError;
  String? get temperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SensorModelCopyWith<SensorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorModelCopyWith<$Res> {
  factory $SensorModelCopyWith(
          SensorModel value, $Res Function(SensorModel) then) =
      _$SensorModelCopyWithImpl<$Res, SensorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "oxygen_saturation") String? oxygenSaturation,
      @JsonKey(name: "heart_rate") String? heartRate,
      String? temperature});
}

/// @nodoc
class _$SensorModelCopyWithImpl<$Res, $Val extends SensorModel>
    implements $SensorModelCopyWith<$Res> {
  _$SensorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oxygenSaturation = freezed,
    Object? heartRate = freezed,
    Object? temperature = freezed,
  }) {
    return _then(_value.copyWith(
      oxygenSaturation: freezed == oxygenSaturation
          ? _value.oxygenSaturation
          : oxygenSaturation // ignore: cast_nullable_to_non_nullable
              as String?,
      heartRate: freezed == heartRate
          ? _value.heartRate
          : heartRate // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SensorModelImplCopyWith<$Res>
    implements $SensorModelCopyWith<$Res> {
  factory _$$SensorModelImplCopyWith(
          _$SensorModelImpl value, $Res Function(_$SensorModelImpl) then) =
      __$$SensorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "oxygen_saturation") String? oxygenSaturation,
      @JsonKey(name: "heart_rate") String? heartRate,
      String? temperature});
}

/// @nodoc
class __$$SensorModelImplCopyWithImpl<$Res>
    extends _$SensorModelCopyWithImpl<$Res, _$SensorModelImpl>
    implements _$$SensorModelImplCopyWith<$Res> {
  __$$SensorModelImplCopyWithImpl(
      _$SensorModelImpl _value, $Res Function(_$SensorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oxygenSaturation = freezed,
    Object? heartRate = freezed,
    Object? temperature = freezed,
  }) {
    return _then(_$SensorModelImpl(
      oxygenSaturation: freezed == oxygenSaturation
          ? _value.oxygenSaturation
          : oxygenSaturation // ignore: cast_nullable_to_non_nullable
              as String?,
      heartRate: freezed == heartRate
          ? _value.heartRate
          : heartRate // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SensorModelImpl implements _SensorModel {
  const _$SensorModelImpl(
      {@JsonKey(name: "oxygen_saturation") this.oxygenSaturation,
      @JsonKey(name: "heart_rate") this.heartRate,
      this.temperature});

  factory _$SensorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SensorModelImplFromJson(json);

  @override
  @JsonKey(name: "oxygen_saturation")
  final String? oxygenSaturation;
  @override
  @JsonKey(name: "heart_rate")
  final String? heartRate;
  @override
  final String? temperature;

  @override
  String toString() {
    return 'SensorModel(oxygenSaturation: $oxygenSaturation, heartRate: $heartRate, temperature: $temperature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SensorModelImpl &&
            (identical(other.oxygenSaturation, oxygenSaturation) ||
                other.oxygenSaturation == oxygenSaturation) &&
            (identical(other.heartRate, heartRate) ||
                other.heartRate == heartRate) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, oxygenSaturation, heartRate, temperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SensorModelImplCopyWith<_$SensorModelImpl> get copyWith =>
      __$$SensorModelImplCopyWithImpl<_$SensorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SensorModelImplToJson(
      this,
    );
  }
}

abstract class _SensorModel implements SensorModel {
  const factory _SensorModel(
      {@JsonKey(name: "oxygen_saturation") final String? oxygenSaturation,
      @JsonKey(name: "heart_rate") final String? heartRate,
      final String? temperature}) = _$SensorModelImpl;

  factory _SensorModel.fromJson(Map<String, dynamic> json) =
      _$SensorModelImpl.fromJson;

  @override
  @JsonKey(name: "oxygen_saturation")
  String? get oxygenSaturation;
  @override
  @JsonKey(name: "heart_rate")
  String? get heartRate;
  @override
  String? get temperature;
  @override
  @JsonKey(ignore: true)
  _$$SensorModelImplCopyWith<_$SensorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
