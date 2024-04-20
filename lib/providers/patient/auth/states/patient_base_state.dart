import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;
import '../../../../ data/models/patient/patient_model/patient_model.dart';
import '../../../../core/services/enums.dart';


@immutable
class PatientBaseState extends Equatable {
  final AuthResult? result;
  final bool isLoading;
  final String? message;

  const PatientBaseState({this.result, this.isLoading = false, this.message});

  const PatientBaseState.unknown()
      : result = null,
        message = null,
        isLoading = false;

  PatientBaseState copyWithIsLoading(bool? isLoading) =>
      PatientBaseState(result: result, isLoading: isLoading ?? this.isLoading);
  PatientBaseState copyWith({
    bool? isLoading,
    AuthResult? result,
    String? message,
  }) =>
      PatientBaseState(
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

class PatientAuthStateSuccess extends PatientBaseState {
  @override
  final String? message;

  const PatientAuthStateSuccess(this.message);

  @override
  List<Object?> get props => <Object?>[];
  @override
  String toString() {
    return "AuthStateSuccess()";
  }
}

class PatientAuthStateLoginSuccess extends PatientBaseState {
  final PatientModel loginResponse;

  const PatientAuthStateLoginSuccess(this.loginResponse);

  @override
  List<Object?> get props => <Object?>[];
  @override
  String toString() {
    return "AuthStateSuccessLogin()";
  }
}

class PatientAuthStateRegisterSuccess extends PatientBaseState {
  final PatientModel registerResponse;

  const PatientAuthStateRegisterSuccess(this.registerResponse);

  @override
  List<Object?> get props => <Object?>[];
  @override
  String toString() {
    return "AuthStateRegisterSuccess()";
  }
}

class PatientBaseStateError extends PatientBaseState {
  @override
  final String? message;

  const PatientBaseStateError(this.message);

  @override
  List<Object?> get props => <Object?>[];

  @override
  String toString() {
    return "AuthStateError($message)";
  }
}