import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../doctor/auth/providers/doctor_auth_state_notifier_provider.dart';
import '../patient/auth/providers/patient_auth_state_notifier_provider.dart';

final StateProvider<bool> isLoadingProvider =
    StateProvider<bool>((StateProviderRef<bool> ref) {
  return ref.watch(doctorAuthStateNotifierProvider).isLoading ||
      ref.watch(patientAuthStateNotifierProvider).isLoading == true ;
});
