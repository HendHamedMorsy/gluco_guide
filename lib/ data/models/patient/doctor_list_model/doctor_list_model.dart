
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_list_model.freezed.dart';
part 'doctor_list_model.g.dart';

@freezed
class DoctorListModel with _$DoctorListModel{


  const  factory DoctorListModel({
    @JsonKey(name: "data")
    List<DoctorListData>?  doctorsList
  }) = _DoctorListModel;

  factory DoctorListModel.fromJson(Map<String, Object?> json) =>
      _$DoctorListModelFromJson(json);
}
@freezed
class DoctorListData with _$DoctorListData{

  const factory DoctorListData({
    int? id,
    String? name,
    String? email,
    String? mobile,
  }) =_DoctorListData;

  factory DoctorListData.fromJson(Map<String, Object?> json) =>
      _$DoctorListDataFromJson(json);
}
