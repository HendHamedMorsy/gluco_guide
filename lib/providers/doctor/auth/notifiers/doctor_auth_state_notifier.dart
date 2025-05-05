import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/data/models/doctor/doctor_model/doctor_model.dart';
import 'package:gluco_guide/data/repository/locale_repo/hive_manager.dart';
import 'package:gluco_guide/data/repository/remote_repo/doctor/auth/doctor_auth_repo_imp.dart';
import 'package:gluco_guide/providers/doctor/auth/states/doctor_base_state.dart';


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
    } on DioException  {
      state = state.copyWithIsLoading(false);
    } finally {
      HiveManager.instance().deleteDoctorFromLocalStorage();
      state = state.copyWithIsLoading(false);
    }
  }

  Future<void> loginDoctor(
      {required String? identifier, required String? password}) async {

    try {
      DoctorModel response = await _doctorAuthRepoImp.loginDoctor(
        identifier: identifier,
       password: password);
      HiveManager.instance().createOrUpdateDoctorBoxValue(response.doctorData?.doctor);
      HiveManager.instance().createOrUpdateDoctorTokenBoxValue(response.doctorData?.doctorToken);

    } on DioException {
      rethrow;

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

      HiveManager.instance().createOrUpdateDoctorBoxValue(response.doctorData?.doctor);
      HiveManager.instance().createOrUpdateDoctorTokenBoxValue(response.doctorData?.doctorToken);

      state = state.copyWithIsLoading(false);
      return true;
    } on DioException {
      state = state.copyWithIsLoading(false);

    }
    return false;
  }






}
