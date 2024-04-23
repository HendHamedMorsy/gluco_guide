// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientListModel _$PatientListModelFromJson(Map<String, dynamic> json) {
  return _PatientListModel.fromJson(json);
}

/// @nodoc
mixin _$PatientListModel {
  @JsonKey(name: "data")
  List<Patient>? get patientsList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientListModelCopyWith<PatientListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientListModelCopyWith<$Res> {
  factory $PatientListModelCopyWith(
          PatientListModel value, $Res Function(PatientListModel) then) =
      _$PatientListModelCopyWithImpl<$Res, PatientListModel>;
  @useResult
  $Res call({@JsonKey(name: "data") List<Patient>? patientsList});
}

/// @nodoc
class _$PatientListModelCopyWithImpl<$Res, $Val extends PatientListModel>
    implements $PatientListModelCopyWith<$Res> {
  _$PatientListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientsList = freezed,
  }) {
    return _then(_value.copyWith(
      patientsList: freezed == patientsList
          ? _value.patientsList
          : patientsList // ignore: cast_nullable_to_non_nullable
              as List<Patient>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientListModelImplCopyWith<$Res>
    implements $PatientListModelCopyWith<$Res> {
  factory _$$PatientListModelImplCopyWith(_$PatientListModelImpl value,
          $Res Function(_$PatientListModelImpl) then) =
      __$$PatientListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") List<Patient>? patientsList});
}

/// @nodoc
class __$$PatientListModelImplCopyWithImpl<$Res>
    extends _$PatientListModelCopyWithImpl<$Res, _$PatientListModelImpl>
    implements _$$PatientListModelImplCopyWith<$Res> {
  __$$PatientListModelImplCopyWithImpl(_$PatientListModelImpl _value,
      $Res Function(_$PatientListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientsList = freezed,
  }) {
    return _then(_$PatientListModelImpl(
      patientsList: freezed == patientsList
          ? _value._patientsList
          : patientsList // ignore: cast_nullable_to_non_nullable
              as List<Patient>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientListModelImpl implements _PatientListModel {
  const _$PatientListModelImpl(
      {@JsonKey(name: "data") final List<Patient>? patientsList})
      : _patientsList = patientsList;

  factory _$PatientListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientListModelImplFromJson(json);

  final List<Patient>? _patientsList;
  @override
  @JsonKey(name: "data")
  List<Patient>? get patientsList {
    final value = _patientsList;
    if (value == null) return null;
    if (_patientsList is EqualUnmodifiableListView) return _patientsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PatientListModel(patientsList: $patientsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientListModelImpl &&
            const DeepCollectionEquality()
                .equals(other._patientsList, _patientsList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_patientsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientListModelImplCopyWith<_$PatientListModelImpl> get copyWith =>
      __$$PatientListModelImplCopyWithImpl<_$PatientListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientListModelImplToJson(
      this,
    );
  }
}

abstract class _PatientListModel implements PatientListModel {
  const factory _PatientListModel(
          {@JsonKey(name: "data") final List<Patient>? patientsList}) =
      _$PatientListModelImpl;

  factory _PatientListModel.fromJson(Map<String, dynamic> json) =
      _$PatientListModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<Patient>? get patientsList;
  @override
  @JsonKey(ignore: true)
  _$$PatientListModelImplCopyWith<_$PatientListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
