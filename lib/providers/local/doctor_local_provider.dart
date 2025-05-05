import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/constants/db_constants.dart';
import 'package:gluco_guide/data/models/doctor/doctor_model/doctor_model.dart';
import 'package:gluco_guide/data/repository/locale_repo/hive_manager.dart';



final Provider<Doctor?> doctorLocalProvider =
    Provider<Doctor?>((ProviderRef<Doctor?> ref) {
  return HiveManager.instance().doctorBox.get(DbConstants.DOCTOR_BOX_KEY);
});
final Provider<String?> doctorTokenProvider =
Provider<String?>((ProviderRef<String?> ref) {
  return HiveManager.instance().doctorTokenBox.get(DbConstants.DOCTOR_TOKEN_BOX_KEY)?.accessToken;
});