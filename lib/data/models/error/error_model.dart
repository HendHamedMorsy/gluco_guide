import 'package:freezed_annotation/freezed_annotation.dart';
part 'error_model.freezed.dart';
part 'error_model.g.dart';

@freezed
class ErrorModel with _$ErrorModel{

  const factory ErrorModel({
    String? message,
    Errors? errors,
  }) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String, Object?> json) =>
      _$ErrorModelFromJson(json);

}

@freezed
class Errors with _$Errors{

  const factory Errors({
    List<String>? name,
  }) = _Errors;

  factory Errors.fromJson(Map<String, Object?> json) =>
      _$ErrorsFromJson(json);

}
