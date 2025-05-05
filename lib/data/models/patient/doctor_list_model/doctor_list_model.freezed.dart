// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoctorListModel _$DoctorListModelFromJson(Map<String, dynamic> json) {
  return _DoctorListModel.fromJson(json);
}

/// @nodoc
mixin _$DoctorListModel {
  @JsonKey(name: "data")
  List<DoctorListData>? get doctorsList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorListModelCopyWith<DoctorListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorListModelCopyWith<$Res> {
  factory $DoctorListModelCopyWith(
          DoctorListModel value, $Res Function(DoctorListModel) then) =
      _$DoctorListModelCopyWithImpl<$Res, DoctorListModel>;
  @useResult
  $Res call({@JsonKey(name: "data") List<DoctorListData>? doctorsList});
}

/// @nodoc
class _$DoctorListModelCopyWithImpl<$Res, $Val extends DoctorListModel>
    implements $DoctorListModelCopyWith<$Res> {
  _$DoctorListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorsList = freezed,
  }) {
    return _then(_value.copyWith(
      doctorsList: freezed == doctorsList
          ? _value.doctorsList
          : doctorsList // ignore: cast_nullable_to_non_nullable
              as List<DoctorListData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorListModelImplCopyWith<$Res>
    implements $DoctorListModelCopyWith<$Res> {
  factory _$$DoctorListModelImplCopyWith(_$DoctorListModelImpl value,
          $Res Function(_$DoctorListModelImpl) then) =
      __$$DoctorListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") List<DoctorListData>? doctorsList});
}

/// @nodoc
class __$$DoctorListModelImplCopyWithImpl<$Res>
    extends _$DoctorListModelCopyWithImpl<$Res, _$DoctorListModelImpl>
    implements _$$DoctorListModelImplCopyWith<$Res> {
  __$$DoctorListModelImplCopyWithImpl(
      _$DoctorListModelImpl _value, $Res Function(_$DoctorListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorsList = freezed,
  }) {
    return _then(_$DoctorListModelImpl(
      doctorsList: freezed == doctorsList
          ? _value._doctorsList
          : doctorsList // ignore: cast_nullable_to_non_nullable
              as List<DoctorListData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorListModelImpl implements _DoctorListModel {
  const _$DoctorListModelImpl(
      {@JsonKey(name: "data") final List<DoctorListData>? doctorsList})
      : _doctorsList = doctorsList;

  factory _$DoctorListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorListModelImplFromJson(json);

  final List<DoctorListData>? _doctorsList;
  @override
  @JsonKey(name: "data")
  List<DoctorListData>? get doctorsList {
    final value = _doctorsList;
    if (value == null) return null;
    if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DoctorListModel(doctorsList: $doctorsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorListModelImpl &&
            const DeepCollectionEquality()
                .equals(other._doctorsList, _doctorsList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_doctorsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorListModelImplCopyWith<_$DoctorListModelImpl> get copyWith =>
      __$$DoctorListModelImplCopyWithImpl<_$DoctorListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorListModelImplToJson(
      this,
    );
  }
}

abstract class _DoctorListModel implements DoctorListModel {
  const factory _DoctorListModel(
          {@JsonKey(name: "data") final List<DoctorListData>? doctorsList}) =
      _$DoctorListModelImpl;

  factory _DoctorListModel.fromJson(Map<String, dynamic> json) =
      _$DoctorListModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<DoctorListData>? get doctorsList;
  @override
  @JsonKey(ignore: true)
  _$$DoctorListModelImplCopyWith<_$DoctorListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DoctorListData _$DoctorListDataFromJson(Map<String, dynamic> json) {
  return _DoctorListData.fromJson(json);
}

/// @nodoc
mixin _$DoctorListData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorListDataCopyWith<DoctorListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorListDataCopyWith<$Res> {
  factory $DoctorListDataCopyWith(
          DoctorListData value, $Res Function(DoctorListData) then) =
      _$DoctorListDataCopyWithImpl<$Res, DoctorListData>;
  @useResult
  $Res call({int? id, String? name, String? email, String? mobile});
}

/// @nodoc
class _$DoctorListDataCopyWithImpl<$Res, $Val extends DoctorListData>
    implements $DoctorListDataCopyWith<$Res> {
  _$DoctorListDataCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorListDataImplCopyWith<$Res>
    implements $DoctorListDataCopyWith<$Res> {
  factory _$$DoctorListDataImplCopyWith(_$DoctorListDataImpl value,
          $Res Function(_$DoctorListDataImpl) then) =
      __$$DoctorListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? email, String? mobile});
}

/// @nodoc
class __$$DoctorListDataImplCopyWithImpl<$Res>
    extends _$DoctorListDataCopyWithImpl<$Res, _$DoctorListDataImpl>
    implements _$$DoctorListDataImplCopyWith<$Res> {
  __$$DoctorListDataImplCopyWithImpl(
      _$DoctorListDataImpl _value, $Res Function(_$DoctorListDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? mobile = freezed,
  }) {
    return _then(_$DoctorListDataImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorListDataImpl implements _DoctorListData {
  const _$DoctorListDataImpl({this.id, this.name, this.email, this.mobile});

  factory _$DoctorListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorListDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? mobile;

  @override
  String toString() {
    return 'DoctorListData(id: $id, name: $name, email: $email, mobile: $mobile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorListDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorListDataImplCopyWith<_$DoctorListDataImpl> get copyWith =>
      __$$DoctorListDataImplCopyWithImpl<_$DoctorListDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorListDataImplToJson(
      this,
    );
  }
}

abstract class _DoctorListData implements DoctorListData {
  const factory _DoctorListData(
      {final int? id,
      final String? name,
      final String? email,
      final String? mobile}) = _$DoctorListDataImpl;

  factory _DoctorListData.fromJson(Map<String, dynamic> json) =
      _$DoctorListDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get mobile;
  @override
  @JsonKey(ignore: true)
  _$$DoctorListDataImplCopyWith<_$DoctorListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
