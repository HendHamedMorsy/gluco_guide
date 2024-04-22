import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/%20data/models/patient/patient_model/patient_model.dart';
import '../../../../ data/dio_helpers/dio_exceptions.dart';
import '../../../../ data/repository/locale_repo/hive_manager.dart';
import '../../../../ data/repository/remote_repo/patient/auth/patient_auth_repo_imp.dart';
import '../../../../core/services/log_manager.dart';
import '../states/patient_base_state.dart';

final AutoDisposeStateProvider<bool> isPatientPasswordHiddenProvider =
StateProvider.autoDispose<bool>((AutoDisposeStateProviderRef<bool> ref) {
  return true;
});
final AutoDisposeStateProvider<bool> isCurrentPatientPasswordHiddenProvider =
StateProvider.autoDispose<bool>((AutoDisposeStateProviderRef<bool> ref) {
  return true;
});
final AutoDisposeStateProvider<bool> isConfirmedPatientPasswordHiddenProvider =
StateProvider.autoDispose<bool>((AutoDisposeStateProviderRef<bool> ref) {
  return true;
});

class PatientAuthStateNotifier extends StateNotifier<PatientBaseState> {
  PatientAuthStateNotifier(this._patientAuthRepoImp)
      : super(const PatientBaseState.unknown());
  final PatientAuthRepoImp _patientAuthRepoImp;


  TextEditingController nameCont = TextEditingController();
  TextEditingController emailCont = TextEditingController();
  TextEditingController mobileCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();

  Future<void> logOut() async {
    state = state.copyWithIsLoading(true);
    try {
      await _patientAuthRepoImp.logoutPatient();
      state = const PatientBaseState.unknown();
      HiveManager.instance().deletePatientFromLocalStorage();
    } on DioException catch (e) {
      final DioExceptions exception = DioExceptions.fromDioError(e);
      state = PatientBaseStateError(exception.message);
      LogManager.logToConsole(e.message);
      state = state.copyWithIsLoading(false);
    } finally {
      HiveManager.instance().deletePatientFromLocalStorage();
      state = state.copyWithIsLoading(false);
    }
  }

  Future<void> login(
      {required String? identifier, required String? password}) async {
    state = state.copyWithIsLoading(true);

    try {
      PatientModel response = await _patientAuthRepoImp.loginPatient(
        identifier: identifier,
       password: password);
      state = PatientAuthStateLoginSuccess(response);
    HiveManager.instance().createOrUpdatePatientBoxValue(response.patientData?.patient);
    HiveManager.instance().createOrUpdatePatientTokenBoxValue(response.patientData?.patientToken);
      state = state.copyWithIsLoading(false);
    } on DioException catch (e) {
      final DioExceptions exception = DioExceptions.fromDioError(e);
      state = PatientBaseStateError(exception.message);
      LogManager.logToConsole(e.message);
      state = state.copyWithIsLoading(false);
    } finally {
      state = state.copyWithIsLoading(false);
    }
  }

  Future<bool> registerWithPhoneAndPassword({
    required String? name,
    required String? email,
    required String? password,
    required String? mobile,
    required int? doctorId,
    required String? weight,
    required String? height,
    required String? age,
    required String? gender,
    required String? bgl,
    required String? waistCircumference,
    required String? neckCircumference,
    required String? hipCircumference,
    required String? lifestyleType,
    required String? diabetesType,
    required String? workDays,
    required Set<int>? illnesses
  }) async {
    state = state.copyWithIsLoading(true);
    try {
      PatientModel response = await _patientAuthRepoImp.registerPatient(
          name: name,
          mobile: mobile,
          email: email,
          password: password,
        weight: weight,
        height: height,
        workDays: workDays,
        age: age,
        gender: gender,
        doctorId: doctorId,
        diabetesType: diabetesType,
        bgl: bgl,
        lifestyleType: lifestyleType,
        illnesses: illnesses,
        neckCircumference: neckCircumference,
        waistCircumference: waistCircumference,
        hipCircumference: hipCircumference
      );
      state = PatientAuthStateRegisterSuccess(response);
      HiveManager.instance().createOrUpdatePatientBoxValue(response.patientData?.patient);
      HiveManager.instance().createOrUpdatePatientTokenBoxValue(response.patientData?.patientToken);
      state = state.copyWithIsLoading(false);
      return true;
    } on DioException catch (e) {
      final DioExceptions exception = DioExceptions.fromDioError(e);
      state = state.copyWithIsLoading(false);
      state = PatientBaseStateError(exception.message);
    } finally {
      state = state.copyWithIsLoading(false);
    }
    return false;
  }






}
