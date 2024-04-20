import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../ data/repository/locale_repo/hive_manager.dart';
import '../../../../ data/repository/remote_repo/doctor/auth/doctor_auth_repo_imp.dart';
import '../../../../injection/service_locator.dart';
import '../notifiers/doctor_auth_state_notifier.dart';
import '../states/doctor_base_state.dart';

final StateNotifierProvider<DoctorAuthStateNotifier, DoctorBaseState>
    doctorAuthStateNotifierProvider =
    StateNotifierProvider<DoctorAuthStateNotifier, DoctorBaseState>(
        (StateNotifierProviderRef<DoctorAuthStateNotifier, DoctorBaseState> ref) {
  return DoctorAuthStateNotifier(getIt.get<DoctorAuthRepoImp>());
});



final AutoDisposeStateProvider<bool> isDoctorLoggedInProvider =
StateProvider.autoDispose<bool>((StateProviderRef<bool?> ref) {
  return HiveManager.instance().isPatientBoxInitialized();
});

final AutoDisposeStateProvider<bool> doctorTokenProvider =
StateProvider.autoDispose<bool>((StateProviderRef<bool?> ref) {
  return HiveManager.instance().isPatientTokenBoxInitialized();
});