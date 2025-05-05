import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:gluco_guide/core/services/enums.dart';



@immutable
class DoctorBaseState extends Equatable {
  final AuthResult? result;
  final bool isLoading;
  final String? message;

  const DoctorBaseState({this.result, this.isLoading = false, this.message});

  const DoctorBaseState.unknown()
      : result = null,
        message = null,
        isLoading = false;

  DoctorBaseState copyWithIsLoading(bool? isLoading) =>
      DoctorBaseState(result: result, isLoading: isLoading ?? this.isLoading);
  DoctorBaseState copyWith({
    bool? isLoading,
    AuthResult? result,
    String? message,
  }) =>
      DoctorBaseState(
          result: result ?? this.result,
          isLoading: isLoading ?? this.isLoading,
          message: message ?? this.message);

  @override
  List<Object?> get props => <Object?>[result, isLoading];
  @override
  String toString() {
    return "DoctorBaseState()";
  }
}

