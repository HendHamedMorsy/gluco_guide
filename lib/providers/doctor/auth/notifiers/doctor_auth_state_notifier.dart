import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/%20data/models/doctor/doctor_model/doctor_model.dart';
import 'package:gluco_guide/%20data/repository/remote_repo/doctor/auth/doctor_auth_repo_imp.dart';
import '../../../../ data/dio_helpers/dio_exceptions.dart';
import '../../../../core/services/log_manager.dart';
import '../states/doctor_base_state.dart';


final AutoDisposeStateProvider<bool> isPasswordHiddenProvider =
StateProvider.autoDispose<bool>((AutoDisposeStateProviderRef<bool> ref) {
  return true;
});
final AutoDisposeStateProvider<bool> isCurrentPasswordHiddenProvider =
StateProvider.autoDispose<bool>((AutoDisposeStateProviderRef<bool> ref) {
  return true;
});
final AutoDisposeStateProvider<bool> isConfirmedPasswordHiddenProvider =
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

  Future<void> logOut() async {
    state = state.copyWithIsLoading(true);
    try {
      await _doctorAuthRepoImp.logoutDoctor();
      state = const DoctorBaseState.unknown();
      // HiveManager.instance().deleteUserFromLocalStorage();
    } on DioException catch (e) {
      final DioExceptions exception = DioExceptions.fromDioError(e);
      state = DoctorBaseStateError(exception.message);
      LogManager.logToConsole(e.message);
      state = state.copyWithIsLoading(false);
    } finally {
      // HiveManager.instance().deleteUserFromLocalStorage();
      state = state.copyWithIsLoading(false);
    }
  }

  Future<void> login(
      {required String? identifier, required String? password}) async {
    state = state.copyWithIsLoading(true);

    try {
      DoctorModel response = await _doctorAuthRepoImp.loginDoctor(
        identifier: identifier,
       password: password);
      state = DoctorAuthStateLoginSuccess(response);
  //    HiveManager.instance().createOrUpdateUserBoxValue(response.data);
      state = state.copyWithIsLoading(false);
    } on DioException catch (e) {
      final DioExceptions exception = DioExceptions.fromDioError(e);
      state = DoctorBaseStateError(exception.message);
      LogManager.logToConsole(e.message);
      state = state.copyWithIsLoading(false);
    } finally {
      state = state.copyWithIsLoading(false);
    }
  }

  Future<bool> registerWithPhoneAndPassword({
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
      state = DoctorAuthStateRegisterSuccess(response);

      // HiveManager.instance().createOrUpdateDoctorBoxValue(response.data);
      // HiveManager.instance()
      //     .setSecuredAccessToken(accessToken: response.data?.token ?? "error");
      state = state.copyWithIsLoading(false);
      return true;
    } on DioException catch (e) {
      final DioExceptions exception = DioExceptions.fromDioError(e);
      state = state.copyWithIsLoading(false);
      state = DoctorBaseStateError(exception.message);
    } finally {
      state = state.copyWithIsLoading(false);
    }
    return false;
  }






}
