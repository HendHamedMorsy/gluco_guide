import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/constants/db_constants.dart';
import 'package:gluco_guide/data/models/patient/patient_model/patient_model.dart';
import 'package:gluco_guide/data/repository/locale_repo/hive_manager.dart';



final Provider<Patient?> patientLocalProvider =
    Provider<Patient?>((ProviderRef<Patient?> ref) {
  return HiveManager.instance().patientBox.get(DbConstants.PATIENT_BOX_KEY);
});
final Provider<String?> patientTokenProvider =
Provider<String?>((ProviderRef<String?> ref) {
  return HiveManager.instance().patientTokenBox.get(DbConstants.PATIENT_TOKEN_BOX_KEY)?.accessToken;
});