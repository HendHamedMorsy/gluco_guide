// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../patient/patient_model/patient_model.dart';
part 'patient_list_model.freezed.dart';
part 'patient_list_model.g.dart';

@freezed
class PatientListModel with _$PatientListModel{
  const factory PatientListModel({
    @JsonKey(name: "data")
    List<Patient>? patientsList
  }) = _PatientListModel;

  factory PatientListModel.fromJson(Map<String, Object?> json) =>
      _$PatientListModelFromJson(json);
}





