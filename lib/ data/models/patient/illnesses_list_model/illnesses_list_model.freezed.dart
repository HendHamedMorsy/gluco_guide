// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'illnesses_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IllnessesListModel _$IllnessesListModelFromJson(Map<String, dynamic> json) {
  return _IllnessesListModel.fromJson(json);
}

/// @nodoc
mixin _$IllnessesListModel {
  @JsonKey(name: "data")
  List<IllnessesListData>? get illnessesList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IllnessesListModelCopyWith<IllnessesListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IllnessesListModelCopyWith<$Res> {
  factory $IllnessesListModelCopyWith(
          IllnessesListModel value, $Res Function(IllnessesListModel) then) =
      _$IllnessesListModelCopyWithImpl<$Res, IllnessesListModel>;
  @useResult
  $Res call({@JsonKey(name: "data") List<IllnessesListData>? illnessesList});
}

/// @nodoc
class _$IllnessesListModelCopyWithImpl<$Res, $Val extends IllnessesListModel>
    implements $IllnessesListModelCopyWith<$Res> {
  _$IllnessesListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? illnessesList = freezed,
  }) {
    return _then(_value.copyWith(
      illnessesList: freezed == illnessesList
          ? _value.illnessesList
          : illnessesList // ignore: cast_nullable_to_non_nullable
              as List<IllnessesListData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IllnessesListModelImplCopyWith<$Res>
    implements $IllnessesListModelCopyWith<$Res> {
  factory _$$IllnessesListModelImplCopyWith(_$IllnessesListModelImpl value,
          $Res Function(_$IllnessesListModelImpl) then) =
      __$$IllnessesListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") List<IllnessesListData>? illnessesList});
}

/// @nodoc
class __$$IllnessesListModelImplCopyWithImpl<$Res>
    extends _$IllnessesListModelCopyWithImpl<$Res, _$IllnessesListModelImpl>
    implements _$$IllnessesListModelImplCopyWith<$Res> {
  __$$IllnessesListModelImplCopyWithImpl(_$IllnessesListModelImpl _value,
      $Res Function(_$IllnessesListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? illnessesList = freezed,
  }) {
    return _then(_$IllnessesListModelImpl(
      illnessesList: freezed == illnessesList
          ? _value._illnessesList
          : illnessesList // ignore: cast_nullable_to_non_nullable
              as List<IllnessesListData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IllnessesListModelImpl implements _IllnessesListModel {
  const _$IllnessesListModelImpl(
      {@JsonKey(name: "data") final List<IllnessesListData>? illnessesList})
      : _illnessesList = illnessesList;

  factory _$IllnessesListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IllnessesListModelImplFromJson(json);

  final List<IllnessesListData>? _illnessesList;
  @override
  @JsonKey(name: "data")
  List<IllnessesListData>? get illnessesList {
    final value = _illnessesList;
    if (value == null) return null;
    if (_illnessesList is EqualUnmodifiableListView) return _illnessesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IllnessesListModel(illnessesList: $illnessesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IllnessesListModelImpl &&
            const DeepCollectionEquality()
                .equals(other._illnessesList, _illnessesList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_illnessesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IllnessesListModelImplCopyWith<_$IllnessesListModelImpl> get copyWith =>
      __$$IllnessesListModelImplCopyWithImpl<_$IllnessesListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IllnessesListModelImplToJson(
      this,
    );
  }
}

abstract class _IllnessesListModel implements IllnessesListModel {
  const factory _IllnessesListModel(
      {@JsonKey(name: "data")
      final List<IllnessesListData>? illnessesList}) = _$IllnessesListModelImpl;

  factory _IllnessesListModel.fromJson(Map<String, dynamic> json) =
      _$IllnessesListModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<IllnessesListData>? get illnessesList;
  @override
  @JsonKey(ignore: true)
  _$$IllnessesListModelImplCopyWith<_$IllnessesListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IllnessesListData _$IllnessesListDataFromJson(Map<String, dynamic> json) {
  return _IllnessesListData.fromJson(json);
}

/// @nodoc
mixin _$IllnessesListData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IllnessesListDataCopyWith<IllnessesListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IllnessesListDataCopyWith<$Res> {
  factory $IllnessesListDataCopyWith(
          IllnessesListData value, $Res Function(IllnessesListData) then) =
      _$IllnessesListDataCopyWithImpl<$Res, IllnessesListData>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$IllnessesListDataCopyWithImpl<$Res, $Val extends IllnessesListData>
    implements $IllnessesListDataCopyWith<$Res> {
  _$IllnessesListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IllnessesListDataImplCopyWith<$Res>
    implements $IllnessesListDataCopyWith<$Res> {
  factory _$$IllnessesListDataImplCopyWith(_$IllnessesListDataImpl value,
          $Res Function(_$IllnessesListDataImpl) then) =
      __$$IllnessesListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$IllnessesListDataImplCopyWithImpl<$Res>
    extends _$IllnessesListDataCopyWithImpl<$Res, _$IllnessesListDataImpl>
    implements _$$IllnessesListDataImplCopyWith<$Res> {
  __$$IllnessesListDataImplCopyWithImpl(_$IllnessesListDataImpl _value,
      $Res Function(_$IllnessesListDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$IllnessesListDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IllnessesListDataImpl implements _IllnessesListData {
  const _$IllnessesListDataImpl({this.id, this.name});

  factory _$IllnessesListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$IllnessesListDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'IllnessesListData(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IllnessesListDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IllnessesListDataImplCopyWith<_$IllnessesListDataImpl> get copyWith =>
      __$$IllnessesListDataImplCopyWithImpl<_$IllnessesListDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IllnessesListDataImplToJson(
      this,
    );
  }
}

abstract class _IllnessesListData implements IllnessesListData {
  const factory _IllnessesListData({final int? id, final String? name}) =
      _$IllnessesListDataImpl;

  factory _IllnessesListData.fromJson(Map<String, dynamic> json) =
      _$IllnessesListDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$IllnessesListDataImplCopyWith<_$IllnessesListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
