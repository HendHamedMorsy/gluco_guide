import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/%20data/models/doctor/doctor_model/doctor_model.dart';
import 'package:gluco_guide/%20data/repository/remote_repo/doctor/auth/doctor_auth_repo_imp.dart';
import '../../../../ data/dio_helpers/dio_exceptions.dart';
import '../../../../ data/repository/locale_repo/hive_manager.dart';
import '../../../../core/services/log_manager.dart';
import '../states/doctor_base_state.dart';


final AutoDisposeStateProvider<bool> isDoctorPasswordHiddenProvider =
StateProvider.autoDispose<bool>((AutoDisposeStateProviderRef<bool> ref) {
  return true;
});
final AutoDisposeStateProvider<bool> isCurrentDoctorPasswordHiddenProvider =
StateProvider.autoDispose<bool>((AutoDisposeStateProviderRef<bool> ref) {
  return true;
});
final AutoDisposeStateProvider<bool> isConfirmedDoctorPasswordHiddenProvider =
StateProvider.autoDispose<bool>((AutoDisposeStateProviderRef<bool> ref) {
  return true;
});

class DoctorAuthStateNotifier extends StateNotifier<DoctorBaseState> {
  DoctorAuthStateNotifier(this._doctorAuthRepoImp)
      : super(const DoctorBaseState.unknown());
  final DoctorAuthRepoImp _doctorAuthRepoImp;


  TextEditingController nameCont = TextEditingController();
  TextEditingController emailCont = TextEditingController();
  TextEditingController mobileCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();

  Future<void> logOutDoctor() async {
    state = state.copyWithIsLoading(true);
    try {
      await _doctorAuthRepoImp.logoutDoctor();
      state = const DoctorBaseState.unknown();
      HiveManager.instance().deleteDoctorFromLocalStorage();
    } on DioException catch (e) {
      final DioExceptions exception = DioExceptions.fromDioError(e);
      //state = DoctorBaseStateError(exception.message);
      LogManager.logToConsole(e.message);
      state = state.copyWithIsLoading(false);
    } finally {
      HiveManager.instance().deleteDoctorFromLocalStorage();
      state = state.copyWithIsLoading(false);
    }
  }

  Future<void> loginDoctor(
      {required String? identifier, required String? password}) async {
    // state = state.copyWithIsLoading(true);

    try {
      DoctorModel response = await _doctorAuthRepoImp.loginDoctor(
        identifier: identifier,
       password: password);
      // state = DoctorAuthStateLoginSuccess(response);
      HiveManager.instance().createOrUpdateDoctorBoxValue(response.doctorData?.doctor);
      HiveManager.instance().createOrUpdateDoctorTokenBoxValue(response.doctorData?.doctorToken);

      // state = state.copyWithIsLoading(false);
    } on DioException catch (e) {
      final DioExceptions exception = DioExceptions.fromDioError(e);
      // state = DoctorBaseStateError(exception.message);
      // LogManager.logToConsole(e.message);
     // state = state.copyWithIsLoading(false);
    }
  }

  Future<bool> registerDoctor({
    required String? email,
    required String? password,
    required String? name,
    required String? mobile
  }) async {
    state = state.copyWithIsLoading(true);
    try {
      DoctorModel response = await _doctorAuthRepoImp.registerDoctor(
          name: name,
          mobile: mobile,
          email: email,
          password: password);
      //state = DoctorAuthStateRegisterSuccess(response);

      HiveManager.instance().createOrUpdateDoctorBoxValue(response.doctorData?.doctor);
      HiveManager.instance().createOrUpdateDoctorTokenBoxValue(response.doctorData?.doctorToken);

      state = state.copyWithIsLoading(false);
      return true;
    } on DioException catch (e) {
      final DioExceptions exception = DioExceptions.fromDioError(e);
      state = state.copyWithIsLoading(false);
     // state = DoctorBaseStateError(exception.message);
    }
    return false;
  }






}
