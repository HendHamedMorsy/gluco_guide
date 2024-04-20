import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:gluco_guide/%20data/models/doctor/doctor_model/doctor_model.dart';
import '../../../../core/services/enums.dart';


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
    return "AuthState()";
  }
}

class DoctorAuthStateSuccess extends DoctorBaseState {
  @override
  final String? message;

  const DoctorAuthStateSuccess(this.message);

  @override
  List<Object?> get props => <Object?>[];
  @override
  String toString() {
    return "AuthStateSuccess()";
  }
}

class DoctorAuthStateLoginSuccess extends DoctorBaseState {
  final DoctorModel loginResponse;

  const DoctorAuthStateLoginSuccess(this.loginResponse);

  @override
  List<Object?> get props => <Object?>[];
  @override
  String toString() {
    return "AuthStateSuccessLogin()";
  }
}

class DoctorAuthStateRegisterSuccess extends DoctorBaseState {
  final DoctorModel registerResponse;

  const DoctorAuthStateRegisterSuccess(this.registerResponse);

  @override
  List<Object?> get props => <Object?>[];
  @override
  String toString() {
    return "AuthStateRegisterSuccess()";
  }
}

class DoctorBaseStateError extends DoctorBaseState {
  @override
  final String? message;

  const DoctorBaseStateError(this.message);

  @override
  List<Object?> get props => <Object?>[];

  @override
  String toString() {
    return "AuthStateError($message)";
  }
}