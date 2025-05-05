import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/data/repository/locale_repo/hive_manager.dart';
import 'package:gluco_guide/data/repository/remote_repo/patient/auth/patient_auth_repo_imp.dart';
import 'package:gluco_guide/injection/service_locator.dart';
import 'package:gluco_guide/providers/patient/auth/notifiers/patient_auth_state_notifier.dart';
import 'package:gluco_guide/providers/patient/auth/states/patient_base_state.dart';


final StateNotifierProvider<PatientAuthStateNotifier, PatientBaseState>
    patientAuthStateNotifierProvider =
    StateNotifierProvider<PatientAuthStateNotifier, PatientBaseState>(
        (StateNotifierProviderRef<PatientAuthStateNotifier, PatientBaseState> ref) {
  return PatientAuthStateNotifier(getIt.get<PatientAuthRepoImp>());
});



final AutoDisposeStateProvider<bool> isPatientLoggedInProvider =
StateProvider.autoDispose<bool>((StateProviderRef<bool?> ref) {
  return HiveManager.instance().isPatientBoxInitialized();
});

final AutoDisposeStateProvider<bool> patientTokenProvider =
StateProvider.autoDispose<bool>((StateProviderRef<bool?> ref) {
  return HiveManager.instance().isPatientTokenBoxInitialized();
});