// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'illnesses_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IllnessesListModelImpl _$$IllnessesListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IllnessesListModelImpl(
      illnessesList: (json['data'] as List<dynamic>?)
          ?.map((e) => IllnessesListData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IllnessesListModelImplToJson(
        _$IllnessesListModelImpl instance) =>
    <String, dynamic>{
      'data': instance.illnessesList,
    };

_$IllnessesListDataImpl _$$IllnessesListDataImplFromJson(
        Map<String, dynamic> json) =>
    _$IllnessesListDataImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$IllnessesListDataImplToJson(
        _$IllnessesListDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
