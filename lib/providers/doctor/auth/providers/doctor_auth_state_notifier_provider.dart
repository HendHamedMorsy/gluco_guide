import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/data/repository/locale_repo/hive_manager.dart';
import 'package:gluco_guide/data/repository/remote_repo/doctor/auth/doctor_auth_repo_imp.dart';
import 'package:gluco_guide/injection/service_locator.dart';
import 'package:gluco_guide/providers/doctor/auth/notifiers/doctor_auth_state_notifier.dart';
import 'package:gluco_guide/providers/doctor/auth/states/doctor_base_state.dart';


final StateNotifierProvider<DoctorAuthStateNotifier, DoctorBaseState>
    doctorAuthStateNotifierProvider =
    StateNotifierProvider<DoctorAuthStateNotifier, DoctorBaseState>(
        (StateNotifierProviderRef<DoctorAuthStateNotifier, DoctorBaseState> ref) {
  return DoctorAuthStateNotifier(getIt.get<DoctorAuthRepoImp>());
});



final AutoDisposeStateProvider<bool> isDoctorLoggedInProvider =
StateProvider.autoDispose<bool>((StateProviderRef<bool?> ref) {
  return HiveManager.instance().isDoctorBoxInitialized();
});

final AutoDisposeStateProvider<bool> isDoctorTokenProviderInitialized =
StateProvider.autoDispose<bool>((StateProviderRef<bool?> ref) {
  return HiveManager.instance().isDoctorTokenBoxInitialized();
});