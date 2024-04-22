import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../ data/models/patient/patient_model/patient_model.dart';
import '../../ data/repository/locale_repo/hive_manager.dart';
import '../../core/constants/db_constants.dart';


final Provider<Patient?> patientLocalProvider =
    Provider<Patient?>((ProviderRef<Patient?> ref) {
  return HiveManager.instance().patientBox.get(DbConstants.PATIENT_BOX_KEY);
});
final Provider<PatientToken?> patientTokenProvider =
Provider<PatientToken?>((ProviderRef<PatientToken?> ref) {
  return HiveManager.instance().patientTokenBox.get(DbConstants.PATIENT_TOKEN_BOX_KEY);
});