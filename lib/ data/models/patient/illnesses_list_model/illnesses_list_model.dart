import 'package:freezed_annotation/freezed_annotation.dart';
part 'illnesses_list_model.freezed.dart';
part 'illnesses_list_model.g.dart';

@freezed
class IllnessesListModel with _$IllnessesListModel{

  const factory IllnessesListModel({
    @JsonKey(name: "data")
    List<IllnessesListData>? illnessesList
  }) = _IllnessesListModel;

  factory IllnessesListModel.fromJson(Map<String, Object?> json) =>
      _$IllnessesListModelFromJson(json);
}

@freezed
class IllnessesListData with _$IllnessesListData{

  const factory IllnessesListData({
    int? id,
    String? name,
  }) = _IllnessesListData;

  factory IllnessesListData.fromJson(Map<String, Object?> json) =>
      _$IllnessesListDataFromJson(json);

}
